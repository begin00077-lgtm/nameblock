"""Repack the APK with a given classes.dex (unsigned)."""
import os, sys, io, zipfile
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import build_mod as bm

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def main(dex_path, out_path):
    orig = open(os.path.join(BASE, "base.apk"), "rb").read()
    z = zipfile.ZipFile(io.BytesIO(orig))
    entries = []
    for zi in z.infolist():
        if zi.filename.startswith("META-INF/") and zi.filename.split("/")[-1].upper().endswith((".SF", ".RSA", ".DSA", ".MF")):
            continue
        data = z.read(zi.filename)
        entries.append((zi.filename, data, zi.compress_type, zi.date_time))
    dex = open(dex_path, "rb").read()
    idx = next(i for i, e in enumerate(entries) if e[0] == "classes.dex")
    name, _, method, dt = entries[idx]
    entries[idx] = (name, dex, method, dt)
    unsigned, cd_off = bm.make_zip(entries)
    open(out_path, "wb").write(unsigned)
    print("unsigned ->", out_path, len(unsigned), "bytes, dex", len(dex))


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2])
