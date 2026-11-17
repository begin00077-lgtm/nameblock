.class public final Lcom/dsh/nameblock/DataChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataChangeReceiver.java"


# instance fields
.field private final callback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/dsh/nameblock/DataChangeReceiver;->callback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 18
    iget-object p0, p0, Lcom/dsh/nameblock/DataChangeReceiver;->callback:Ljava/lang/Runnable;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method
