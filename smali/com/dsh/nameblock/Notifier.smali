.class public final Lcom/dsh/nameblock/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "blocked2"

.field private static final OLD_CHANNEL:Ljava/lang/String; = "blocked"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, "posted id="

    const-string v1, "\u5df2\u62e6\u622a\uff1a"

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "post num="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notif"

    invoke-static {p0, v3, v2}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :try_start_27
    invoke-static {p0}, Lcom/dsh/nameblock/Notifier;->ensureChannel(Landroid/content/Context;)V

    const-string v2, "notification"

    .line 45
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-nez v2, :cond_35

    return-void

    .line 48
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x186a0

    rem-long/2addr v4, v6
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_11b

    long-to-int v4, v4

    const-string v5, ""

    if-nez p2, :cond_44

    move-object p2, v5

    goto :goto_48

    .line 49
    :cond_44
    :try_start_44
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 50
    :goto_48
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_51

    const-string p2, "\u5df2\u62e6\u622a\u6765\u7535"

    goto :goto_5d

    :cond_51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_5d
    if-eqz p1, :cond_67

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_66

    goto :goto_67

    :cond_66
    move-object v5, p1

    :cond_67
    :goto_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u00b7 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/dsh/nameblock/ListActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "kind"

    const-string v6, "logs"

    .line 54
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v5, 0x34000000

    .line 55
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v5, 0x0

    const/high16 v6, 0xc000000

    .line 56
    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 59
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/dsh/nameblock/ActionReceiver;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.dsh.nameblock.WHITELIST"

    .line 60
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v7, "number"

    .line 61
    invoke-virtual {v5, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v5, "id"

    .line 62
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 63
    invoke-static {p0, v4, p1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 66
    new-instance v5, Landroid/app/Notification$Builder;

    const-string v6, "blocked2"

    invoke-direct {v5, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x1080091

    .line 67
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 68
    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 69
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 70
    invoke-virtual {v5, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string p3, "call"

    .line 71
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 72
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 73
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 74
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 75
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance p3, Landroid/app/Notification$Action$Builder;

    const v1, 0x1080038

    .line 77
    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v5, "\u653e\u884c\u6b64\u53f7\u7801"

    invoke-direct {p3, v1, v5, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 78
    invoke-virtual {p3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 81
    invoke-virtual {v2, v4, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11a
    .catchall {:try_start_44 .. :try_end_11a} :catchall_11b

    goto :goto_125

    :catchall_11b
    move-exception p1

    const-string p2, "notif-error"

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_125
    return-void
.end method

.method public static ensureChannel(Landroid/content/Context;)V
    .registers 6

    const-string v0, "blocked2"

    :try_start_2
    const-string v1, "notification"

    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_35

    if-nez v1, :cond_d

    return-void

    :cond_d
    :try_start_d
    const-string v2, "blocked"

    .line 24
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_12

    .line 27
    :catchall_12
    :try_start_12
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_19

    return-void

    .line 28
    :cond_19
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "\u62e6\u622a\u901a\u77e5"

    const/4 v4, 0x4

    invoke-direct {v2, v0, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v0, "\u6765\u7535\u88ab\u62e6\u622a\u65f6\u63d0\u9192\uff0c\u9501\u5c4f\u4e5f\u663e\u793a"

    .line 30
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 31
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const/4 v3, 0x0

    .line 32
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 34
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 35
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_35

    goto :goto_3f

    :catchall_35
    move-exception v0

    const-string v1, "notif-channel-error"

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-void
.end method
