.class public Lcom/dsh/nameblock/PostCallActivity;
.super Landroid/app/Activity;
.source "PostCallActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/dsh/nameblock/PostCallActivity;->finish()V

    return-void
.end method
