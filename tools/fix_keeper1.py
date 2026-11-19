"""Fix Keeper$1.run(): stop it from clobbering enabled_accessibility_services.

Before, after the 500ms rebind delay it wrote its own component name in place of
the whole setting, which silently disabled every OTHER accessibility service
(e.g. com.dsh.dakacheck). Now it reads the current value, keeps it, and appends
its own component only if missing — same strategy Keeper.ensure() already used.

Idempotent: exits if the marker comment is already present.
"""
import io
import sys

PATH = sys.argv[1]
MARK = 'keep other accessibility services'

with io.open(PATH, encoding='utf-8', newline='') as f:
    text = f.read()

if MARK in text:
    print('already patched')
    sys.exit(0)

NL = '\r\n' if '\r\n' in text else '\n'

# widen the register frame: v0 is the pendingRebind flag, v1..v4 get handed back
old = '.method public run()V' + NL + '    .registers 5' + NL
new = '.method public run()V' + NL + '    .registers 6' + NL
if old not in text:
    print('ERROR: run() header not found')
    sys.exit(1)
text = text.replace(old, new, 1)

# the clobbering putString
old2 = (
    '    const-string v2, "enabled_accessibility_services"' + NL
    + NL
    + '    const-string v3, "com.dsh.nameblock/com.dsh.nameblock.NameGuardService"' + NL
    + NL
    + '    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z' + NL
)

new2 = (
    '    const-string v2, "enabled_accessibility_services"' + NL
    + NL
    + '    # ' + MARK + ': read the current list, never overwrite it' + NL
    + '    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;' + NL
    + NL
    + '    move-result-object v3' + NL
    + NL
    + '    if-nez v3, :have_value' + NL
    + NL
    + '    const-string v3, ""' + NL
    + NL
    + '    :have_value' + NL
    + '    const-string v4, "com.dsh.nameblock/com.dsh.nameblock.NameGuardService"' + NL
    + NL
    + '    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z' + NL
    + NL
    + '    move-result v4' + NL
    + NL
    + '    if-eqz v4, :do_put' + NL
    + NL
    + '    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z' + NL
    + NL
    + '    move-result v4' + NL
    + NL
    + '    if-eqz v4, :append' + NL
    + NL
    + '    new-instance v4, Ljava/lang/StringBuilder;' + NL
    + NL
    + '    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V' + NL
    + NL
    + '    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;' + NL
    + NL
    + '    const-string v3, ":com.dsh.nameblock/com.dsh.nameblock.NameGuardService"' + NL
    + NL
    + '    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;' + NL
    + NL
    + '    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;' + NL
    + NL
    + '    move-result-object v3' + NL
    + NL
    + '    :append' + NL
    + '    :do_put' + NL
    + '    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z' + NL
)

if old2 not in text:
    print('ERROR: putString block not found')
    sys.exit(1)

text = text.replace(old2, new2, 1)

with io.open(PATH, 'w', encoding='utf-8', newline='') as f:
    f.write(text)
print('patched Keeper$1.run()')
