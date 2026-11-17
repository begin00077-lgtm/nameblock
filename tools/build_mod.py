"""Patch com.dsh.nameblock: make the blacklist match by prefix, repack, sign (APK Signature Scheme v2)."""
import hashlib, io, os, struct, sys, zlib
from cryptography import x509
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding, rsa
from cryptography.x509.oid import NameOID
import datetime

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ORIG_APK = os.path.join(BASE, "base.apk")
OUT_APK = os.path.join(BASE, "nameblock-prefix.apk")


# ---------------- DEX helpers ----------------
def u16(b, o): return struct.unpack_from("<H", b, o)[0]
def u32(b, o): return struct.unpack_from("<I", b, o)[0]

def uleb(b, o):
    res = 0; shift = 0
    while True:
        x = b[o]; o += 1
        res |= (x & 0x7f) << shift
        if not (x & 0x80): break
        shift += 7
    return res, o

def dex_string(b, off):
    _, p = uleb(b, off)
    end = b.index(b"\x00", p)
    return b[p:end].decode("utf-8", "replace")

def patch_dex(dex: bytearray):
    s_size, s_off = u32(dex, 0x38), u32(dex, 0x3C)
    t_size, t_off = u32(dex, 0x40), u32(dex, 0x44)
    p_size, p_off = u32(dex, 0x48), u32(dex, 0x4C)
    m_size, m_off = u32(dex, 0x58), u32(dex, 0x5C)
    c_size, c_off = u32(dex, 0x60), u32(dex, 0x64)

    strings = [dex_string(dex, u32(dex, s_off + 4 * i)) for i in range(s_size)]
    types = [strings[u32(dex, t_off + 4 * i)] for i in range(t_size)]

    def proto_params(pi):
        po = u32(dex, p_off + 12 * pi + 8)
        if po == 0: return []
        n = u32(dex, po)
        return [types[u16(dex, po + 4 + 2 * k)] for k in range(n)]

    def proto_ret(pi):
        return types[u32(dex, p_off + 12 * pi + 4)]

    def find_method(cls, name, params, ret):
        for i in range(m_size):
            c, p = u16(dex, m_off + 8 * i), u16(dex, m_off + 8 * i + 2)
            n = strings[u32(dex, m_off + 8 * i + 4)]
            if types[c] == cls and n == name and proto_params(p) == params and proto_ret(p) == ret:
                return i
        return None

    equals_idx = find_method("Ljava/lang/String;", "equals", ["Ljava/lang/Object;"], "Z")
    starts_idx = find_method("Ljava/lang/String;", "startsWith", ["Ljava/lang/String;"], "Z")
    blocked_idx = find_method("Lcom/dsh/nameblock/Store;", "isBlockedNumber", ["Ljava/lang/String;"], "Z")
    assert None not in (equals_idx, starts_idx, blocked_idx), (equals_idx, starts_idx, blocked_idx)

    code_off = None
    for i in range(c_size):
        cdo = c_off + 32 * i
        if types[u16(dex, cdo)] != "Lcom/dsh/nameblock/Store;":
            continue
        cd_off = u32(dex, cdo + 24)
        p = cd_off
        sf, p = uleb(dex, p); inf, p = uleb(dex, p)
        dm, p = uleb(dex, p); vm, p = uleb(dex, p)
        for _ in range(sf + inf):
            _, p = uleb(dex, p); _, p = uleb(dex, p)
        midx = 0
        for count, is_virtual in ((dm, False), (vm, True)):
            midx = 0
            for _ in range(count):
                d, p = uleb(dex, p); midx += d
                _, p = uleb(dex, p)
                co, p = uleb(dex, p)
                if midx == blocked_idx:
                    code_off = co
        if code_off: break
    assert code_off, "isBlockedNumber code not found"

    insns_size = u32(dex, code_off + 12)
    insns_off = code_off + 16
    hits = 0
    for i in range(insns_size - 2):
        u0 = u16(dex, insns_off + 2 * i)
        if (u0 & 0xFF) != 0x6E:            # invoke-virtual
            continue
        if ((u0 >> 12) & 0xF) != 2:        # two register words (A = count)
            continue
        if u16(dex, insns_off + 2 * (i + 1)) != equals_idx:
            continue
        u2 = u16(dex, insns_off + 2 * (i + 2))
        c, d = u2 & 0xF, (u2 >> 4) & 0xF
        # receiver = pair[0] (stored), arg = incoming number.  Swap so it becomes
        # incoming.startsWith(stored) and point at startsWith instead of equals.
        u2 = (u2 & 0xFF00) | (c << 4) | d
        struct.pack_into("<H", dex, insns_off + 2 * (i + 1), starts_idx)
        struct.pack_into("<H", dex, insns_off + 2 * (i + 2), u2)
        hits += 1
        print(f"  patched invoke at insn #{i}: equals({equals_idx}) -> startsWith({starts_idx}), regs v{d},v{c}")
    assert hits == 1, f"expected exactly one patch site, got {hits}"

    # fix DEX signature first (SHA-1 covers bytes 32..end), then checksum (covers 12..end)
    dex[12:32] = hashlib.sha1(bytes(dex[32:])).digest()
    struct.pack_into("<I", dex, 8, zlib.adler32(bytes(dex[12:])) & 0xFFFFFFFF)
    return bytes(dex)


# ---------------- ZIP writer ----------------
def make_zip(entries):
    """entries: list of (name, data, method, date_time). Returns bytes."""
    out = bytearray()
    central = []
    for name, data, method, dt in entries:
        nb = name.encode()
        crc = zlib.crc32(data) & 0xFFFFFFFF
        if method == 8:
            co = zlib.compressobj(9, zlib.DEFLATED, -15)
            payload = co.compress(data) + co.flush()
        else:
            payload = data
        csize, usize = len(payload), len(data)
        t, d = int(dt[3]) | (int(dt[4]) << 5) | (int(dt[5]) >> 1), \
               int(dt[0] - 1980) << 9 | int(dt[1]) << 5 | int(dt[2])
        hdr_off = len(out)
        pad = 0
        if method == 0:
            base = hdr_off + 30 + len(nb)
            pad = (-base) % 4
        extra = b""
        if pad:
            total = pad if pad >= 4 else pad + 4
            extra = struct.pack("<HH", 0xD935, total - 4) + b"\x00" * (total - 4)
        out += struct.pack("<IHHHHHIIIHH", 0x04034B50, 20, 0, method, t, d, crc, csize, usize, len(nb), len(extra))
        out += nb + extra + payload
        central.append((nb, method, t, d, crc, csize, usize, hdr_off))
    cd_off = len(out)
    for nb, method, t, d, crc, csize, usize, hdr_off in central:
        out += struct.pack("<IHHHHHHIIIHHHHHII", 0x02014B50, 20, 20, 0, method, t, d,
                           crc, csize, usize, len(nb), 0, 0, 0, 0, 0, hdr_off)
        out += nb
    cd_size = len(out) - cd_off
    out += struct.pack("<IHHHHIIH", 0x06054B50, 0, 0, len(central), len(central), cd_size, cd_off, 0)
    return bytes(out), cd_off


# ---------------- v2 signing ----------------
def lp(b): return struct.pack("<I", len(b)) + b

CHUNK = 1 << 20

def chunked_digest(data):
    """APK Signature Scheme v2 content digest (CHUNKED_SHA256)."""
    chunks = [data[i:i + CHUNK] for i in range(0, len(data), CHUNK)]
    ds = [hashlib.sha256(b"\xa5" + struct.pack("<I", len(c)) + c).digest() for c in chunks]
    return hashlib.sha256(b"\x5a" + struct.pack("<I", len(ds)) + b"".join(ds)).digest()

SIG_ALG = 0x0103  # RSASSA-PKCS1-v1_5 with SHA-256

def build_v2_block(digest_value, cert_der, pubkey_der, signer):
    digest_entry = struct.pack("<I", SIG_ALG) + lp(digest_value)
    digests = lp(lp(digest_entry))
    certs = lp(lp(cert_der))
    attrs = lp(b"")
    signed_data = digests + certs + attrs
    sig = signer.sign(signed_data, padding.PKCS1v15(), hashes.SHA256())
    sig_entry = struct.pack("<I", SIG_ALG) + lp(sig)
    signatures = lp(lp(sig_entry))
    signer_block = lp(signed_data) + signatures + lp(pubkey_der)
    signers = lp(signer_block)
    value = lp(signers)
    pair = struct.pack("<Q", len(value) + 4) + struct.pack("<I", 0x7109871A) + value
    total = 8 + len(pair) + 8 + 16
    block = struct.pack("<Q", total - 8) + pair + struct.pack("<Q", total - 8) + b"APK Sig Block 42"
    assert len(block) == total
    return block

def sign_apk(unsigned: bytes, cd_off: int):
    key = rsa.generate_private_key(public_exponent=65537, key_size=2048)
    name = x509.Name([x509.NameAttribute(NameOID.COMMON_NAME, "NameBlock Prefix Mod")])
    now = datetime.datetime.now(datetime.timezone.utc)
    cert = (x509.CertificateBuilder()
            .subject_name(name).issuer_name(name)
            .public_key(key.public_key())
            .serial_number(x509.random_serial_number())
            .not_valid_before(now - datetime.timedelta(days=1))
            .not_valid_after(now + datetime.timedelta(days=365 * 20))
            .sign(key, hashes.SHA256()))
    cert_der = cert.public_bytes(serialization.Encoding.DER)
    pub_der = key.public_key().public_bytes(serialization.Encoding.DER,
                                            serialization.PublicFormat.SubjectPublicKeyInfo)

    eocd = len(unsigned) - 22
    assert unsigned[eocd:eocd + 4] == b"PK\x05\x06"
    # block size is independent of the digest value; build once with a dummy digest
    block_len = len(build_v2_block(b"\x00" * 32, cert_der, pub_der, key))

    contents = unsigned[:cd_off]
    cd = unsigned[cd_off:eocd]
    # per spec the EOCD is digested as if its central-directory offset pointed at the signing block
    digest_value = chunked_digest(contents + cd + unsigned[eocd:])

    eocd_final = bytearray(unsigned[eocd:])
    struct.pack_into("<I", eocd_final, 16, cd_off + block_len)
    block = build_v2_block(digest_value, cert_der, pub_der, key)
    assert len(block) == block_len
    signed = contents + block + cd + bytes(eocd_final)
    return signed, digest_value, block, cert_der, pub_der

# ---------------- verify ----------------
def rlp(buf, off):
    n = struct.unpack_from("<I", buf, off)[0]
    return buf[off + 4:off + 4 + n], off + 4 + n

def verify(apk: bytes):
    eocd = apk.rfind(b"PK\x05\x06")
    cd_off = struct.unpack_from("<I", apk, eocd + 16)[0]
    assert apk[cd_off - 16:cd_off] == b"APK Sig Block 42"
    size2 = struct.unpack_from("<Q", apk, cd_off - 24)[0]
    bs = cd_off - size2 - 8
    assert struct.unpack_from("<Q", apk, bs)[0] == size2
    pairs = apk[bs + 8:cd_off - 24]
    plen = struct.unpack_from("<Q", pairs, 0)[0]
    assert struct.unpack_from("<I", pairs, 8)[0] == 0x7109871A
    value = pairs[12:8 + plen]
    signers, _ = rlp(value, 0)
    signer, _ = rlp(signers, 0)
    sd, o = rlp(signer, 0)
    sigs, o = rlp(signer, o)
    pk, o = rlp(signer, o)
    digs, o1 = rlp(sd, 0)
    certs, o2 = rlp(sd, o1)
    attrs, o3 = rlp(sd, o2)
    assert o3 == len(sd)
    entry, _ = rlp(digs, 0)
    alg = struct.unpack_from("<I", entry, 0)[0]
    stored, _ = rlp(entry, 4)
    sentry, _ = rlp(sigs, 0)
    salg = struct.unpack_from("<I", sentry, 0)[0]
    signature, _ = rlp(sentry, 4)
    from cryptography.hazmat.primitives.serialization import load_der_public_key
    pub = load_der_public_key(pk)
    pub.verify(signature, sd, padding.PKCS1v15(), hashes.SHA256())
    cert = x509.load_der_x509_certificate(rlp(certs, 0)[0])

    eocd_mod = bytearray(apk[eocd:])
    struct.pack_into("<I", eocd_mod, 16, bs)
    calc = chunked_digest(apk[:bs] + apk[cd_off:eocd] + bytes(eocd_mod))
    assert calc == stored, "digest mismatch"
    assert alg == SIG_ALG and salg == SIG_ALG
    return True

def main():
    orig = open(ORIG_APK, "rb").read()
    import zipfile
    z = zipfile.ZipFile(io.BytesIO(orig))
    entries = []
    for zi in z.infolist():
        data = z.read(zi.filename)
        if zi.filename == "META-INF/ANDROIDD.SF" or zi.filename == "META-INF/ANDROIDD.RSA" or zi.filename == "META-INF/MANIFEST.MF":
            continue  # drop stale v1 signature, we use v2
        entries.append((zi.filename, data, zi.compress_type, zi.date_time))

    dex_idx = next(i for i, e in enumerate(entries) if e[0] == "classes.dex")
    patched = patch_dex(bytearray(entries[dex_idx][1]))
    name, _, method, dt = entries[dex_idx]
    entries[dex_idx] = (name, patched, method, dt)

    unsigned, cd_off = make_zip(entries)
    open(os.path.join(BASE, "nameblock-unsigned.apk"), "wb").write(unsigned)
    signed, digest_value, block, cert_der, pub_der = sign_apk(unsigned, cd_off)
    verify(signed)
    open(OUT_APK, "wb").write(signed)
    print("wrote", OUT_APK, len(signed), "bytes; v2 signature verified")
    print("cert sha256:", hashlib.sha256(cert_der).hexdigest()[:16])


if __name__ == "__main__":
    main()
