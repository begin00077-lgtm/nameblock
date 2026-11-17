.class final Lcom/dsh/nameblock/ListActivity$PollRunnable;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dsh/nameblock/ListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PollRunnable"
.end annotation


# instance fields
.field private final host:Lcom/dsh/nameblock/ListActivity;


# direct methods
.method constructor <init>(Lcom/dsh/nameblock/ListActivity;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity$PollRunnable;->host:Lcom/dsh/nameblock/ListActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity$PollRunnable;->host:Lcom/dsh/nameblock/ListActivity;

    invoke-static {v0}, Lcom/dsh/nameblock/ListActivity;->-$$Nest$fgetpolling(Lcom/dsh/nameblock/ListActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 92
    :cond_9
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity$PollRunnable;->host:Lcom/dsh/nameblock/ListActivity;

    invoke-static {v0}, Lcom/dsh/nameblock/ListActivity;->-$$Nest$mcheckMarksChanged(Lcom/dsh/nameblock/ListActivity;)V

    .line 93
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity$PollRunnable;->host:Lcom/dsh/nameblock/ListActivity;

    invoke-static {v0}, Lcom/dsh/nameblock/ListActivity;->-$$Nest$fgetpollHandler(Lcom/dsh/nameblock/ListActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
