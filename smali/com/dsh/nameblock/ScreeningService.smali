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

    .line 101
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
    .registers 17

    move-object v1, p0

    const-string v0, "\u540d\u79f0\u542b\u300c"

    const-string v2, "num="

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 33
    :try_start_a
    invoke-static {p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object v7

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_16

    move-object v8, v3

    goto :goto_1e

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_e0

    .line 35
    :goto_1e
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-static {v8}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "call"

    .line 39
    invoke-virtual {v7}, Lcom/dsh/nameblock/Store;->enabled()Z

    move-result v11

    invoke-virtual {v7}, Lcom/dsh/nameblock/Store;->mode()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " enabled="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " mode="

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 38
    invoke-static {p0, v10, v11}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v7}, Lcom/dsh/nameblock/Store;->enabled()Z

    move-result v10

    if-eqz v10, :cond_da

    invoke-static {v9}, Lcom/dsh/nameblock/ScreeningService;->isEmergency(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_da

    .line 42
    invoke-static {p0, v9}, Lcom/dsh/nameblock/Contacts;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    .line 43
    invoke-virtual {v7, v9, v10}, Lcom/dsh/nameblock/Store;->setLastCall(Ljava/lang/String;Z)V

    if-nez v10, :cond_76

    .line 44
    invoke-virtual {v7, v9}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_76

    invoke-virtual {v7, v9}, Lcom/dsh/nameblock/Store;->isAllowed(Ljava/lang/String;)Z

    move-result v11

    :cond_76
    if-nez v10, :cond_81

    .line 47
    invoke-virtual {v7, v9}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7f

    goto :goto_81

    :cond_7f
    move v10, v6

    goto :goto_82

    :cond_81
    :goto_81
    move v10, v4

    .line 51
    :goto_82
    invoke-virtual {v7, v9}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_92

    invoke-virtual {v7, v9}, Lcom/dsh/nameblock/Store;->isBlockedNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_92

    const-string v0, "\u5df2\u5728\u62e6\u622a\u540d\u5355"

    invoke-virtual {v7, v9, v5}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v4

    goto :goto_ee

    :cond_92
    if-eqz v5, :cond_da

    .line 54
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_da

    .line 55
    invoke-static {v5}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_da

    if-nez v10, :cond_da

    .line 58
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u300d"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_bb
    .catchall {:try_start_1e .. :try_end_bb} :catchall_dd

    .line 59
    :try_start_bb
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_bb .. :try_end_d6} :catchall_d8

    move v7, v4

    goto :goto_ed

    :catchall_d8
    move-exception v0

    goto :goto_e3

    :cond_da
    move-object v0, v3

    move v7, v6

    goto :goto_ee

    :catchall_dd
    move-exception v0

    move-object v10, v3

    goto :goto_e3

    :catchall_e0
    move-exception v0

    move-object v8, v3

    move-object v10, v8

    :goto_e3
    const-string v7, "error"

    .line 66
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v7, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    :goto_ed
    move-object v0, v10

    .line 71
    :goto_ee
    new-instance v9, Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-direct {v9}, Landroid/telecom/CallScreeningService$CallResponse$Builder;-><init>()V

    if-eqz v7, :cond_108

    .line 73
    invoke-virtual {v9, v4}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v10

    .line 74
    invoke-virtual {v10, v4}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v10

    .line 75
    invoke-virtual {v10, v4}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSilenceCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v10

    .line 76
    invoke-virtual {v10, v6}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v10

    .line 77
    invoke-virtual {v10, v4}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    .line 82
    :cond_108
    :try_start_108
    invoke-virtual {v9}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->build()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object v4

    move-object/from16 v9, p1

    invoke-virtual {p0, v9, v4}, Lcom/dsh/nameblock/ScreeningService;->respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_111

    .line 86
    :catchall_111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " block="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " silence="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "decision"

    invoke-static {p0, v4, v2}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_13d

    goto :goto_148

    .line 91
    :cond_13d
    :try_start_13d
    invoke-static {p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object v2

    if-nez v5, :cond_144

    goto :goto_145

    :cond_144
    move-object v3, v5

    :goto_145
    invoke-virtual {v2, v8, v3, v0}, Lcom/dsh/nameblock/Store;->addLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catchall {:try_start_13d .. :try_end_148} :catchall_148

    :catchall_148
    :goto_148
    if-eqz v7, :cond_14d

    .line 96
    invoke-static {p0, v8, v5, v0}, Lcom/dsh/nameblock/Notifier;->blocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14d
    return-void
.end method
