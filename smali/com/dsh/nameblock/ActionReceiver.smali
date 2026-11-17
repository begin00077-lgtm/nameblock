.class public Lcom/dsh/nameblock/ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActionReceiver.java"


# static fields
.field public static final ACTION_WHITELIST:Ljava/lang/String; = "com.dsh.nameblock.WHITELIST"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 17
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_6c

    :cond_18
    const-string v0, "com.dsh.nameblock.WHITELIST"

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    return-void

    :cond_21
    const-string p0, "number"

    .line 27
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6b

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_6b

    .line 29
    :cond_34
    invoke-static {p1}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u5df2\u52a0\u5165\u767d\u540d\u5355"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :try_start_58
    const-string p0, "notification"

    .line 32
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_6b

    const-string p1, "id"

    .line 33
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_6b
    .catchall {:try_start_58 .. :try_end_6b} :catchall_6b

    :catchall_6b
    :cond_6b
    :goto_6b
    return-void

    .line 22
    :cond_6c
    :goto_6c
    invoke-static {p1}, Lcom/dsh/nameblock/Keeper;->ensure(Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Lcom/dsh/nameblock/ScanJob;->schedule(Landroid/content/Context;)V

    return-void
.end method
