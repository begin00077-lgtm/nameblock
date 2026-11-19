.class public Lcom/dsh/nameblock/ScreeningService;
.super Landroid/telecom/CallScreeningService;
.source "ScreeningService.java"


# static fields
.field private static final EMERGENCY:[Ljava/lang/String;

.field private static final REPEAT_WINDOW:J = 0x927c0L


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "122"

    const-string v1, "96110"

    const-string v2, "110"

    const-string v3, "119"

    const-string v4, "120"

    .line 21
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dsh/nameblock/ScreeningService;->EMERGENCY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/telecom/CallScreeningService;-><init>()V

    return-void
.end method

.method private static isEmergency(Ljava/lang/String;)Z
    .registers 6

    .line 111
    sget-object v0, Lcom/dsh/nameblock/ScreeningService;->EMERGENCY:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method


# virtual methods
.method public onScreenCall(Landroid/telecom/Call$Details;)V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, "\u540d\u79f0\u542b\u300c"

    const-string v2, "\u53f7\u7801\u6807\u8bb0\u542b\u300c"

    const-string v3, "num="

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 33
    :try_start_d
    invoke-static/range {p0 .. p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object v8

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_19

    move-object v9, v4

    goto :goto_21

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_124

    .line 35
    :goto_21
    :try_start_21
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-static {v9}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "call"

    .line 39
    invoke-virtual {v8}, Lcom/dsh/nameblock/Store;->enabled()Z

    move-result v12

    invoke-virtual {v8}, Lcom/dsh/nameblock/Store;->mode()I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " name="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " enabled="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " mode="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 38
    invoke-static {v1, v11, v12}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v8}, Lcom/dsh/nameblock/Store;->enabled()Z

    move-result v11

    if-eqz v11, :cond_de

    invoke-static {v10}, Lcom/dsh/nameblock/ScreeningService;->isEmergency(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_de

    .line 42
    invoke-static {v1, v10}, Lcom/dsh/nameblock/Contacts;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 43
    invoke-virtual {v8, v10, v11}, Lcom/dsh/nameblock/Store;->setLastCall(Ljava/lang/String;Z)V

    if-nez v11, :cond_79

    .line 44
    invoke-virtual {v8, v10}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_79

    invoke-virtual {v8, v10}, Lcom/dsh/nameblock/Store;->isAllowed(Ljava/lang/String;)Z

    move-result v12

    :cond_79
    if-nez v11, :cond_84

    .line 47
    invoke-virtual {v8, v10}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_82

    goto :goto_84

    :cond_82
    move v11, v7

    goto :goto_85

    :cond_84
    :goto_84
    move v11, v5

    .line 51
    :goto_85
    invoke-virtual {v8, v10}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_96

    invoke-virtual {v8, v10}, Lcom/dsh/nameblock/Store;->isBlockedNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_96

    const-string v0, "\u5df2\u5728\u62e6\u622a\u540d\u5355"
    :try_end_93
    .catchall {:try_start_21 .. :try_end_93} :catchall_121

    :goto_93
    move v2, v5

    goto/16 :goto_132

    :cond_96
    const-string v12, " \u00b7 "

    const-string v13, "\u300d"

    if-eqz v6, :cond_e1

    .line 54
    :try_start_9c
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e1

    .line 55
    invoke-static {v6}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_de

    if-nez v11, :cond_de

    .line 58
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_c1
    .catchall {:try_start_9c .. :try_end_c1} :catchall_121

    .line 59
    :try_start_c1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_c1 .. :try_end_da} :catchall_dc

    move v2, v5

    goto :goto_131

    :catchall_dc
    move-exception v0

    goto :goto_127

    :cond_de
    move-object v0, v4

    move v2, v7

    goto :goto_132

    .line 63
    :cond_e1
    :try_start_e1
    invoke-static {v1, v10}, Lcom/dsh/nameblock/Marks;->of(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_de

    if-nez v11, :cond_de

    .line 65
    invoke-static {v0}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_de

    .line 68
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_106
    .catchall {:try_start_e1 .. :try_end_106} :catchall_121

    .line 69
    :try_start_106
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catchall {:try_start_106 .. :try_end_11b} :catchall_11e

    move-object v0, v2

    goto/16 :goto_93

    :catchall_11e
    move-exception v0

    move-object v11, v2

    goto :goto_127

    :catchall_121
    move-exception v0

    move-object v11, v4

    goto :goto_127

    :catchall_124
    move-exception v0

    move-object v9, v4

    move-object v11, v9

    :goto_127
    const-string v2, "error"

    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v7

    :goto_131
    move-object v0, v11

    .line 81
    :goto_132
    new-instance v8, Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-direct {v8}, Landroid/telecom/CallScreeningService$CallResponse$Builder;-><init>()V

    if-eqz v2, :cond_14c

    .line 83
    invoke-virtual {v8, v5}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v10

    .line 84
    invoke-virtual {v10, v5}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v10

    .line 85
    invoke-virtual {v10, v5}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSilenceCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v10

    .line 86
    invoke-virtual {v10, v7}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v10

    .line 87
    invoke-virtual {v10, v5}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    .line 92
    :cond_14c
    :try_start_14c
    invoke-virtual {v8}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->build()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object v5

    move-object/from16 v8, p1

    invoke-virtual {v1, v8, v5}, Lcom/dsh/nameblock/ScreeningService;->respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V
    :try_end_155
    .catchall {:try_start_14c .. :try_end_155} :catchall_155

    .line 96
    :catchall_155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " block="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " silence="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "decision"

    invoke-static {v1, v5, v3}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_181

    goto :goto_18c

    .line 101
    :cond_181
    :try_start_181
    invoke-static/range {p0 .. p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object v3

    if-nez v6, :cond_188

    goto :goto_189

    :cond_188
    move-object v4, v6

    :goto_189
    invoke-virtual {v3, v9, v4, v0}, Lcom/dsh/nameblock/Store;->addLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18c
    .catchall {:try_start_181 .. :try_end_18c} :catchall_18c

    :catchall_18c
    :goto_18c
    if-eqz v2, :cond_191

    .line 106
    invoke-static {v1, v9, v6, v0}, Lcom/dsh/nameblock/Notifier;->blocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_191
    return-void
.end method
