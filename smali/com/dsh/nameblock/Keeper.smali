.class public final Lcom/dsh/nameblock/Keeper;
.super Ljava/lang/Object;
.source "Keeper.java"


# static fields
.field private static final COMPONENT:Ljava/lang/String; = "com.dsh.nameblock/com.dsh.nameblock.NameGuardService"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensure(Landroid/content/Context;)V
    .registers 7

    const-string v0, "enabled_accessibility_services"

    .line 21
    :try_start_2
    invoke-static {p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/dsh/nameblock/Store;->enabled()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {v1}, Lcom/dsh/nameblock/Store;->nameGuard()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_55

    .line 24
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 25
    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_56

    const/4 v3, 0x1

    const-string v4, "com.dsh.nameblock/com.dsh.nameblock.NameGuardService"

    if-eqz v2, :cond_28

    .line 27
    :try_start_20
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v5, v3

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    :goto_29
    if-nez v5, :cond_60

    if-eqz v2, :cond_45

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_34

    goto :goto_45

    .line 30
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":com.dsh.nameblock/com.dsh.nameblock.NameGuardService"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    :cond_45
    :goto_45
    invoke-static {v1, v0, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "accessibility_enabled"

    .line 33
    invoke-static {v1, v0, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "keeper"

    const-string v1, "re-enabled accessibility service"

    .line 34
    invoke-static {p0, v0, v1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_20 .. :try_end_54} :catchall_56

    goto :goto_60

    :cond_55
    :goto_55
    return-void

    :catchall_56
    move-exception v0

    const-string v1, "keeper-fail"

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    :goto_60
    return-void
.end method
