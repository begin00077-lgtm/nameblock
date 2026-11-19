.class public Lcom/dsh/nameblock/NameGuardService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "NameGuardService.java"


# static fields
.field public static volatile connected:Z


# instance fields
.field private lastEnd:J

.field private lastLog:J

.field private lastMarkAt:J

.field private lastMarkNumber:Ljava/lang/String;

.field private lastMarkValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 20
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/dsh/nameblock/NameGuardService;->lastEnd:J

    .line 23
    iput-wide v0, p0, Lcom/dsh/nameblock/NameGuardService;->lastLog:J

    const-string v2, ""

    .line 60
    iput-object v2, p0, Lcom/dsh/nameblock/NameGuardService;->lastMarkNumber:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/dsh/nameblock/NameGuardService;->lastMarkValue:Ljava/lang/String;

    .line 62
    iput-wide v0, p0, Lcom/dsh/nameblock/NameGuardService;->lastMarkAt:J

    return-void
.end method

.method private cachedMark(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    iget-object v2, p0, Lcom/dsh/nameblock/NameGuardService;->lastMarkNumber:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-wide v2, p0, Lcom/dsh/nameblock/NameGuardService;->lastMarkAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_19

    iget-object p0, p0, Lcom/dsh/nameblock/NameGuardService;->lastMarkValue:Ljava/lang/String;

    return-object p0

    .line 68
    :cond_19
    invoke-static {p0, p1}, Lcom/dsh/nameblock/Marks;->of(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    iput-object p1, p0, Lcom/dsh/nameblock/NameGuardService;->lastMarkNumber:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/dsh/nameblock/NameGuardService;->lastMarkValue:Ljava/lang/String;

    .line 71
    iput-wide v0, p0, Lcom/dsh/nameblock/NameGuardService;->lastMarkAt:J

    return-object v2
.end method

.method private collect(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/StringBuilder;I)V
    .registers 7

    if-eqz p1, :cond_40

    const/16 v0, 0xc

    if-le p3, v0, :cond_7

    goto :goto_40

    .line 220
    :cond_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0xa

    if-eqz v0, :cond_1b

    .line 221
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_1b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 223
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    const/4 v0, 0x0

    .line 224
    :goto_2e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v1, p2, v2}, Lcom/dsh/nameblock/NameGuardService;->collect(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/StringBuilder;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_40
    :goto_40
    return-void
.end method

.method private firstMeaningful(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string p0, "\n"

    .line 244
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_2b

    aget-object v1, p0, v0

    .line 245
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-gt v2, v3, :cond_28

    const-string v2, "[0-9 :+\\-()]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    return-object v1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2b
    const-string p0, ""

    return-object p0
.end method

.method private firstNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 231
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ge v1, v2, :cond_2f

    .line 232
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_1e

    const/16 v4, 0x39

    if-gt v2, v4, :cond_1e

    .line 234
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 236
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v3, :cond_29

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 237
    :cond_29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 240
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lt p1, v3, :cond_3a

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3c

    :cond_3a
    const-string p0, ""

    :goto_3c
    return-object p0
.end method

.method private gatherCallText()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    .line 198
    :try_start_2
    invoke-virtual {p0}, Lcom/dsh/nameblock/NameGuardService;->getWindows()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    return-object v0

    .line 200
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v2, :cond_1c

    goto :goto_d

    .line 202
    :cond_1c
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_23

    goto :goto_d

    .line 204
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 205
    invoke-direct {p0, v2, v3, v4}, Lcom/dsh/nameblock/NameGuardService;->collect(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/StringBuilder;I)V

    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u63a5\u542c"

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_39

    if-eqz v3, :cond_d

    return-object v2

    :catchall_39
    :cond_39
    return-object v0
.end method

.method private handleEvent()V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, "\u300d\uff0c\u5df2\u6302\u65ad"

    const-string v2, "\u540d\u79f0\u542b\u300c"

    const-string v3, "\u6765\u7535\u754c\u9762\u540d\u79f0\u542b\u300c"

    const-string v4, "hangup num="

    .line 76
    invoke-static/range {p0 .. p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lcom/dsh/nameblock/Store;->enabled()Z

    move-result v6

    if-eqz v6, :cond_196

    invoke-virtual {v5}, Lcom/dsh/nameblock/Store;->nameGuard()Z

    move-result v6

    if-nez v6, :cond_1c

    goto/16 :goto_196

    .line 79
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 80
    iget-wide v8, v1, Lcom/dsh/nameblock/NameGuardService;->lastEnd:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xbb8

    cmp-long v8, v8, v10

    if-gez v8, :cond_2b

    return-void

    :cond_2b
    const-string v8, "phone"

    .line 85
    invoke-virtual {v1, v8}, Lcom/dsh/nameblock/NameGuardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    if-eqz v8, :cond_196

    .line 88
    :try_start_35
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_196

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3e

    goto/16 :goto_196

    .line 95
    :cond_3e
    invoke-direct/range {p0 .. p0}, Lcom/dsh/nameblock/NameGuardService;->gatherCallText()Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_49

    return-void

    .line 98
    :cond_49
    iget-wide v12, v1, Lcom/dsh/nameblock/NameGuardService;->lastLog:J

    sub-long v12, v6, v12

    cmp-long v9, v12, v10

    const-string v10, " text="

    const/16 v11, 0x7c

    const/16 v12, 0xa

    if-lez v9, :cond_7a

    .line 99
    iput-wide v6, v1, Lcom/dsh/nameblock/NameGuardService;->lastLog:J

    .line 100
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 101
    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "len="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v13, "acc-text"

    .line 100
    invoke-static {v1, v13, v9}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_7a
    invoke-virtual {v5}, Lcom/dsh/nameblock/Store;->lastCallNumber()Ljava/lang/String;

    move-result-object v9

    .line 105
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_88

    invoke-direct {v1, v8}, Lcom/dsh/nameblock/NameGuardService;->firstNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 106
    :cond_88
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    const-string v14, "acc-skip"

    if-nez v13, :cond_a8

    invoke-virtual {v5, v9}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a8

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "whitelisted "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v14, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_a8
    invoke-static {v8}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_cb

    .line 118
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_cb

    .line 119
    invoke-direct {v1, v9}, Lcom/dsh/nameblock/NameGuardService;->cachedMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 120
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_cd

    .line 121
    invoke-static {v15}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_cd

    :cond_cb
    const-string v15, ""

    :cond_cd
    :goto_cd
    if-nez v13, :cond_d0

    return-void

    .line 127
    :cond_d0
    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v2

    const-string v2, "hit="

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mark="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "acc-hit"

    invoke-static {v1, v10, v2}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-wide v6, v1, Lcom/dsh/nameblock/NameGuardService;->lastEnd:J

    const-string v2, "telecom"

    .line 130
    invoke-virtual {v1, v2}, Lcom/dsh/nameblock/NameGuardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    if-nez v2, :cond_104

    return-void

    .line 133
    :cond_104
    invoke-virtual {v5}, Lcom/dsh/nameblock/Store;->lastCallWasContact()Z

    move-result v6

    if-eqz v6, :cond_110

    const-string v0, "contact call, not hanging up"

    .line 134
    invoke-static {v1, v14, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_110
    invoke-direct {v1, v8, v13}, Lcom/dsh/nameblock/NameGuardService;->nameForHit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_121

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_121

    goto :goto_122

    :cond_121
    move-object v15, v6

    .line 140
    :goto_122
    :try_start_122
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    const-string v2, "guard"

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hit="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14e

    move-object v2, v13

    goto :goto_162

    :cond_14e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_162
    invoke-virtual {v5, v9, v2}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v9, v15, v2}, Lcom/dsh/nameblock/Store;->addLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v9, v15, v0}, Lcom/dsh/nameblock/Notifier;->blocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18b
    .catchall {:try_start_122 .. :try_end_18b} :catchall_18c

    goto :goto_196

    :catchall_18c
    move-exception v0

    const-string v2, "guard-error"

    .line 147
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :catchall_196
    :cond_196
    :goto_196
    return-void
.end method

.method private isChrome(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "\u4fe1\u7bb1"

    .line 180
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_33

    const-string p0, "\u65f6\u949f"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_33

    const-string p0, "\u63a5\u542c"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_33

    const-string p0, "\u6302\u65ad"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_33

    const-string p0, "\u77ed\u4fe1"

    .line 181
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_33

    const-string p0, "\u62e6\u622a"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_33

    :cond_31
    const/4 p0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p0, 0x1

    :goto_34
    return p0
.end method

.method private isCustomMarked(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 163
    :try_start_2
    invoke-virtual {p0}, Lcom/dsh/nameblock/NameGuardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "number=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_42

    if-eqz p0, :cond_3c

    .line 168
    :try_start_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "identify_name"

    .line 169
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_29

    .line 170
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_29
    if-eqz v1, :cond_34

    const-string p1, "\"isCustomMark\":true"

    .line 171
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_3a

    if-eqz p1, :cond_34

    const/4 v0, 0x1

    :cond_34
    if-eqz p0, :cond_39

    .line 175
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_39
    return v0

    :catchall_3a
    move-object v1, p0

    goto :goto_42

    :cond_3c
    if-eqz p0, :cond_47

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_47

    :catchall_42
    :goto_42
    if-eqz v1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_47
    :goto_47
    return v0
.end method

.method private nameForHit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 186
    invoke-static {p2}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\n"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_58

    aget-object v3, v0, v2

    .line 188
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_55

    :cond_1b
    const-string v4, "\u63a5\u542c"

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "\u62d2\u7edd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "\u6302\u65ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "\u77ed\u4fe1"

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "\u63d0\u9192"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_55

    .line 192
    :cond_44
    invoke-static {v3}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/NameGuardService;->isChrome(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    return-object v3

    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 194
    :cond_58
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/NameGuardService;->firstMeaningful(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 53
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/dsh/nameblock/NameGuardService;->handleEvent()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_11

    :catchall_7
    move-exception p1

    const-string v0, "guard-crash"

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lcom/dsh/nameblock/NameGuardService;->connected:Z

    .line 45
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    return-void
.end method

.method public onInterrupt()V
    .registers 1

    return-void
.end method

.method public onServiceConnected()V
    .registers 3

    .line 30
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/dsh/nameblock/NameGuardService;->connected:Z

    const-string v0, "guard-bind"

    const-string v1, "service connected"

    .line 32
    invoke-static {p0, v0, v1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/dsh/nameblock/NameGuardService;->connected:Z

    const-string v0, "guard-bind"

    const-string v1, "service unbound"

    .line 38
    invoke-static {p0, v0, v1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
