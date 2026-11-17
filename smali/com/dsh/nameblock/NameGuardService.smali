.class public Lcom/dsh/nameblock/NameGuardService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "NameGuardService.java"


# instance fields
.field private lastEnd:J

.field private lastLog:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/dsh/nameblock/NameGuardService;->lastEnd:J

    .line 23
    iput-wide v0, p0, Lcom/dsh/nameblock/NameGuardService;->lastLog:J

    return-void
.end method

.method private collect(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/StringBuilder;I)V
    .registers 7

    if-eqz p1, :cond_40

    const/16 v0, 0xc

    if-le p3, v0, :cond_7

    goto :goto_40

    .line 155
    :cond_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0xa

    if-eqz v0, :cond_1b

    .line 156
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :cond_1b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 158
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    const/4 v0, 0x0

    .line 159
    :goto_2e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 160
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

    .line 179
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_2b

    aget-object v1, p0, v0

    .line 180
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 181
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

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 166
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ge v1, v2, :cond_2f

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_1e

    const/16 v4, 0x39

    if-gt v2, v4, :cond_1e

    .line 169
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 171
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v3, :cond_29

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 172
    :cond_29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 175
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

    .line 133
    :try_start_2
    invoke-virtual {p0}, Lcom/dsh/nameblock/NameGuardService;->getWindows()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    return-object v0

    .line 135
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

    .line 137
    :cond_1c
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_23

    goto :goto_d

    .line 139
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 140
    invoke-direct {p0, v2, v3, v4}, Lcom/dsh/nameblock/NameGuardService;->collect(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/StringBuilder;I)V

    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u63a5\u542c"

    .line 142
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

.method private isChrome(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "\u4fe1\u7bb1"

    .line 115
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

    .line 116
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

    .line 98
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

    .line 103
    :try_start_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "identify_name"

    .line 104
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_29

    .line 105
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_29
    if-eqz v1, :cond_34

    const-string p1, "\"isCustomMark\":true"

    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_3a

    if-eqz p1, :cond_34

    const/4 v0, 0x1

    :cond_34
    if-eqz p0, :cond_39

    .line 110
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

    .line 121
    invoke-static {p2}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\n"

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_58

    aget-object v3, v0, v2

    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_55

    :cond_1b
    const-string v4, "\u63a5\u542c"

    .line 125
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

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "\u63d0\u9192"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_55

    .line 127
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

    .line 129
    :cond_58
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/NameGuardService;->firstMeaningful(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, "\u300d\uff0c\u5df2\u6302\u65ad"

    const-string v2, "\u540d\u79f0\u542b\u300c"

    const-string v3, "\u6765\u7535\u754c\u9762\u540d\u79f0\u542b\u300c"

    const-string v4, "hangup num="

    const-string v5, "state="

    if-nez p1, :cond_f

    return-void

    .line 28
    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object v6

    .line 29
    invoke-virtual {v6}, Lcom/dsh/nameblock/Store;->enabled()Z

    move-result v7

    if-eqz v7, :cond_18b

    invoke-virtual {v6}, Lcom/dsh/nameblock/Store;->nameGuard()Z

    move-result v7

    if-nez v7, :cond_21

    goto/16 :goto_18b

    .line 31
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 32
    iget-wide v9, v1, Lcom/dsh/nameblock/NameGuardService;->lastEnd:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0xbb8

    cmp-long v9, v9, v11

    if-gez v9, :cond_30

    return-void

    .line 34
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/dsh/nameblock/NameGuardService;->gatherCallText()Ljava/lang/String;

    move-result-object v9

    .line 35
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3b

    return-void

    .line 37
    :cond_3b
    iget-wide v13, v1, Lcom/dsh/nameblock/NameGuardService;->lastLog:J

    sub-long v13, v7, v13

    cmp-long v10, v13, v11

    const-string v11, " text="

    const/16 v12, 0x7c

    const/16 v13, 0xa

    if-lez v10, :cond_6c

    .line 38
    iput-wide v7, v1, Lcom/dsh/nameblock/NameGuardService;->lastLog:J

    .line 39
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 40
    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v12, "len="

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "acc-text"

    .line 39
    invoke-static {v1, v12, v10}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_6c
    invoke-static {v9}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_77

    return-void

    :cond_77
    const-string v12, "phone"

    .line 47
    invoke-virtual {v1, v12}, Lcom/dsh/nameblock/NameGuardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    if-nez v12, :cond_83

    const/4 v12, -0x1

    goto :goto_87

    .line 49
    :cond_83
    :try_start_83
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v12

    :goto_87
    const-string v14, "acc-state"

    .line 50
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v14, v5}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_83 .. :try_end_98} :catchall_181

    const/4 v5, 0x1

    if-eq v12, v5, :cond_9c

    return-void

    :cond_9c
    const/16 v5, 0x7c

    .line 56
    invoke-virtual {v9, v13, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "hit="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "acc-hit"

    invoke-static {v1, v11, v5}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-wide v7, v1, Lcom/dsh/nameblock/NameGuardService;->lastEnd:J

    const-string v5, "telecom"

    .line 59
    invoke-virtual {v1, v5}, Lcom/dsh/nameblock/NameGuardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    if-nez v5, :cond_c8

    return-void

    .line 62
    :cond_c8
    invoke-virtual {v6}, Lcom/dsh/nameblock/Store;->lastCallWasContact()Z

    move-result v7

    const-string v8, "acc-skip"

    if-eqz v7, :cond_d6

    const-string v0, "contact call, not hanging up"

    .line 63
    invoke-static {v1, v8, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_d6
    invoke-virtual {v6}, Lcom/dsh/nameblock/Store;->lastCallNumber()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e4

    invoke-direct {v1, v9}, Lcom/dsh/nameblock/NameGuardService;->firstNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 68
    :cond_e4
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_102

    invoke-virtual {v6, v7}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_102

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "whitelisted "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v8, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_102
    invoke-direct {v1, v9, v10}, Lcom/dsh/nameblock/NameGuardService;->nameForHit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    invoke-direct {v1, v7}, Lcom/dsh/nameblock/NameGuardService;->isCustomMarked(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10e

    const-string v8, ""

    .line 76
    :cond_10e
    :try_start_10e
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->endCall()Z

    const-string v5, "guard"

    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hit="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v5, v4}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13a

    move-object v4, v10

    goto :goto_14e

    :cond_13a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_14e
    invoke-virtual {v6, v7, v4}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v8, v3}, Lcom/dsh/nameblock/Store;->addLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v7, v8, v0}, Lcom/dsh/nameblock/Notifier;->blocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_175
    .catchall {:try_start_10e .. :try_end_175} :catchall_176

    goto :goto_180

    :catchall_176
    move-exception v0

    const-string v2, "guard-error"

    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_180
    return-void

    :catchall_181
    move-exception v0

    const-string v2, "acc-state-err"

    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18b
    :goto_18b
    return-void
.end method

.method public onInterrupt()V
    .registers 1

    return-void
.end method
