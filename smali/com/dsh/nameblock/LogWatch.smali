.class public final Lcom/dsh/nameblock/LogWatch;
.super Landroid/database/ContentObserver;
.source "LogWatch.java"


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private registered:Z

.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/Runnable;)V
    .registers 5

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 22
    iput-object p1, p0, Lcom/dsh/nameblock/LogWatch;->resolver:Landroid/content/ContentResolver;

    .line 23
    iput-object p2, p0, Lcom/dsh/nameblock/LogWatch;->callback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/dsh/nameblock/LogWatch;->callback:Ljava/lang/Runnable;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public start()V
    .registers 4

    .line 27
    iget-boolean v0, p0, Lcom/dsh/nameblock/LogWatch;->registered:Z

    if-eqz v0, :cond_5

    return-void

    .line 29
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/dsh/nameblock/LogWatch;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 30
    iput-boolean v2, p0, Lcom/dsh/nameblock/LogWatch;->registered:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_f

    :catchall_f
    return-void
.end method

.method public stop()V
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/dsh/nameblock/LogWatch;->registered:Z

    if-nez v0, :cond_5

    return-void

    .line 38
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/dsh/nameblock/LogWatch;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_a

    :catchall_a
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/dsh/nameblock/LogWatch;->registered:Z

    return-void
.end method
