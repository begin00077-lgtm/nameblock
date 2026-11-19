"""Insert a 60s throttle around the [perf] Diag.log call inside
ListActivity.callLogNames() so the log file is not flooded by the 5s poll.

Idempotent: does nothing if the throttle is already present.
"""
import io
import sys

PATH = sys.argv[1]
MARK = 'throttled: perf log once every 60s'

with io.open(PATH, encoding='utf-8', newline='') as f:
    text = f.read()

if MARK in text:
    print('already throttled, nothing to do')
    sys.exit(0)

# The perf log statement, exactly as baksmali emits it (LF newlines).
# baksmali emits CRLF in this file, so build the pattern with \r\n
NL = '\r\n'
old = (
    '    const-string v2, "perf"' + NL
    + NL
    + '    invoke-static {v0, v2, v1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V' + NL
)

new = (
    '    # ' + MARK + ' (the page polls every 5s)' + NL
    + '    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J' + NL
    + NL
    + '    move-result-wide v12' + NL
    + NL
    + '    sget-wide v14, Lcom/dsh/nameblock/ListActivity;->lastPerfLog:J' + NL
    + NL
    + '    sub-long v14, v12, v14' + NL
    + NL
    + '    const-wide/32 v16, 0xea60' + NL
    + NL
    + '    cmp-long v14, v14, v16' + NL
    + NL
    + '    if-gez v14, :skip_perf_log' + NL
    + NL
    + '    sput-wide v12, Lcom/dsh/nameblock/ListActivity;->lastPerfLog:J' + NL
    + NL
    + '    const-string v2, "perf"' + NL
    + NL
    + '    invoke-static {v0, v2, v1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V' + NL
    + NL
    + '    :skip_perf_log' + NL
)

if old not in text:
    print('ERROR: perf log block not found')
    sys.exit(1)

text = text.replace(old, new, 1)

with io.open(PATH, 'w', encoding='utf-8', newline='') as f:
    f.write(text)
print('throttle inserted')
