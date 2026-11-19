"""Repack an APK keeping each entry's compression type (resources.arsc stays
STORED, which Android 11+ requires), swapping in replacement files and dropping
the old v1 signature files (META-INF/*.RSA|*.SF|MANIFEST.MF) that would no
longer match after the content changes.

Usage: repack_tools.py <src.apk> <out.apk> [name=path ...]
"""
import sys
import zipfile

src, dst = sys.argv[1], sys.argv[2]
repl = {}
for spec in sys.argv[3:]:
    name, path = spec.split('=', 1)
    with open(path, 'rb') as f:
        repl[name] = f.read()

DROP = ('META-INF/MANIFEST.MF',)

def is_v1_sig(name):
    if name in DROP:
        return True
    if not name.startswith('META-INF/'):
        return False
    upper = name.upper()
    return upper.endswith('.RSA') or upper.endswith('.DSA') or upper.endswith('.EC') or upper.endswith('.SF')

with zipfile.ZipFile(src) as zin:
    with zipfile.ZipFile(dst, 'w') as zout:
        for info in zin.infolist():
            if is_v1_sig(info.filename):
                print('dropped stale signature:', info.filename)
                continue
            if info.filename in repl:
                data = repl.pop(info.filename)
                print('replaced', info.filename, len(data), 'bytes')
            else:
                data = zin.read(info.filename)

            zi = zipfile.ZipInfo(info.filename, date_time=info.date_time)
            zi.external_attr = info.external_attr
            zi.compress_type = info.compress_type   # keep STORED / DEFLATED as-is
            zout.writestr(zi, data)

        for name in repl:
            raise SystemExit('replacement target not found in source: %s' % name)

print('wrote', dst)
