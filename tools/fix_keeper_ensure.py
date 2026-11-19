"""Fix Keeper.ensure(): stop the rebind branch from wiping the whole
enabled_accessibility_services setting (that disabled other accessibility
services such as com.dsh.dakacheck).

New behaviour at that point:
  read current value
  if it contains anything other than our own component -> leave it as is
  else                                                 -> clear it
That still gives the following Keeper$1 step a clean slate for our component
while keeping every other service registered.

Registers free at the patch site: v13..v17 (v12 holds the "keeper" log tag and
is used again later, v0/v4/v9/v11/... are live).
"""
import io
import sys

PATH = sys.argv[1]
MARK = 'keep other services when rebinding'

with io.open(PATH, encoding='utf-8', newline='') as f:
    text = f.read()

if MARK in text:
    print('already patched')
    sys.exit(0)

NL = '\r\n' if '\r\n' in text else '\n'

ME = 'com.dsh.nameblock/com.dsh.nameblock.NameGuardService'

old = (
    '    const-string v7, ""' + NL
    + NL
    + '    .line 57' + NL
    + '    invoke-static {v6, v2, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z' + NL
)

def L(s):
    return s + NL

new = ''.join(L(x) for x in [
    '    # ' + MARK,
    '    # before: putString(cr, key, "") which disabled every other service.',
    '    invoke-static {v6, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;',
    '',
    '    move-result-object v13',
    '',
    '    if-nez v13, :have_cur',
    '',
    '    const-string v13, ""',
    '',
    '    :have_cur',
    '    const-string v14, "' + ME + ':"',
    '',
    '    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
    '',
    '    move-result v15',
    '',
    '    if-eqz v15, :exact_only',
    '',
    '    # "<me>:<others>" -> keep the others, drop our own entry',
    '    invoke-virtual {v14}, Ljava/lang/String;->length()I',
    '',
    '    move-result v15',
    '',
    '    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;',
    '',
    '    move-result-object v13',
    '',
    '    goto :do_clear',
    '',
    '    :exact_only',
    '    const-string v14, "' + ME + '"',
    '',
    '    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z',
    '',
    '    move-result v15',
    '',
    '    if-nez v15, :do_clear',
    '',
    '    # only our own component in the list -> clear it for the rebind',
    '    const-string v13, ""',
    '',
    '    :do_clear',
    '    .line 57',
    '    invoke-static {v6, v2, v13}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z',
])

if old not in text:
    print('ERROR: clear block not found')
    sys.exit(1)

text = text.replace(old, new, 1)

with io.open(PATH, 'w', encoding='utf-8', newline='') as f:
    f.write(text)
print('patched Keeper.ensure()')
