.class public final Lcom/dsh/nameblock/Keeper;
.super Ljava/lang/Object;
.source "Keeper.java"


# static fields
.field private static final COMPONENT:Ljava/lang/String; = "com.dsh.nameblock/com.dsh.nameblock.NameGuardService"

.field private static final HANDLER:Landroid/os/Handler;

.field private static lastRebind:J

.field private static pendingRebind:Z


# direct methods
.method static bridge synthetic -$$Nest$sfputpendingRebind(Z)V
    .registers 1

    sput-boolean p0, Lcom/dsh/nameblock/Keeper;->pendingRebind:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dsh/nameblock/Keeper;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensure(Landroid/content/Context;)V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, "accessibility_enabled"

    const-string v2, "enabled_accessibility_services"

    const-string v3, "rebinding (enabled="

    const/4 v4, 0x0

    .line 28
    :try_start_9
    invoke-static/range {p0 .. p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object v5

    .line 29
    invoke-virtual {v5}, Lcom/dsh/nameblock/Store;->enabled()Z

    move-result v6

    if-eqz v6, :cond_b4

    invoke-virtual {v5}, Lcom/dsh/nameblock/Store;->nameGuard()Z

    move-result v5

    if-nez v5, :cond_1b

    goto/16 :goto_b4

    .line 31
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 33
    invoke-static {v6, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_b5

    const-string v8, "com.dsh.nameblock/com.dsh.nameblock.NameGuardService"

    const/4 v9, 0x1

    if-eqz v7, :cond_34

    .line 35
    :try_start_2c
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_34

    move v10, v9

    goto :goto_35

    :cond_34
    move v10, v4

    .line 36
    :goto_35
    invoke-static {v6, v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_b5

    const-string v12, "keeper"

    if-nez v10, :cond_63

    if-eqz v7, :cond_57

    .line 39
    :try_start_3f
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_57

    .line 40
    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":com.dsh.nameblock/com.dsh.nameblock.NameGuardService"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 41
    :cond_57
    :goto_57
    invoke-static {v6, v2, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    invoke-static {v6, v0, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "re-enabled accessibility service"

    .line 44
    invoke-static {v1, v12, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_63
    if-ne v11, v9, :cond_6a

    .line 48
    sget-boolean v7, Lcom/dsh/nameblock/NameGuardService;->connected:Z

    if-eqz v7, :cond_6a

    return-void

    .line 50
    :cond_6a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 51
    sget-boolean v10, Lcom/dsh/nameblock/Keeper;->pendingRebind:Z

    if-nez v10, :cond_b4

    sget-wide v13, Lcom/dsh/nameblock/Keeper;->lastRebind:J

    sub-long v13, v7, v13

    const-wide/16 v15, 0x2710

    cmp-long v10, v13, v15

    if-gez v10, :cond_7d

    goto :goto_b4

    .line 52
    :cond_7d
    sput-wide v7, Lcom/dsh/nameblock/Keeper;->lastRebind:J

    .line 53
    sput-boolean v9, Lcom/dsh/nameblock/Keeper;->pendingRebind:Z

    # keep other services when rebinding
    # before: putString(cr, key, "") which disabled every other service.
    invoke-static {v6, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :have_cur

    const-string v13, ""

    :have_cur
    const-string v14, "com.dsh.nameblock/com.dsh.nameblock.NameGuardService:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :exact_only

    # "<me>:<others>" -> keep the others, drop our own entry
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto :do_clear

    :exact_only
    const-string v14, "com.dsh.nameblock/com.dsh.nameblock.NameGuardService"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :do_clear

    # only our own component in the list -> clear it for the rebind
    const-string v13, ""

    :do_clear
    .line 57
    invoke-static {v6, v2, v13}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    invoke-static {v6, v0, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    sget-boolean v0, Lcom/dsh/nameblock/NameGuardService;->connected:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v12, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/dsh/nameblock/Keeper;->HANDLER:Landroid/os/Handler;

    new-instance v2, Lcom/dsh/nameblock/Keeper$1;

    invoke-direct {v2, v6, v5}, Lcom/dsh/nameblock/Keeper$1;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    const-wide/16 v5, 0x5dc

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_b3
    .catchall {:try_start_3f .. :try_end_b3} :catchall_b5

    goto :goto_c1

    :cond_b4
    :goto_b4
    return-void

    :catchall_b5
    move-exception v0

    .line 78
    sput-boolean v4, Lcom/dsh/nameblock/Keeper;->pendingRebind:Z

    const-string v2, "keeper-fail"

    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c1
    return-void
.end method
