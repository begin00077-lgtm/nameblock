.class public Lcom/dsh/nameblock/ScanJob;
.super Landroid/app/job/JobService;
.source "ScanJob.java"


# static fields
.field private static final JOB_ID:I = 0x1267


# direct methods
.method public static synthetic $r8$lambda$sZcISiHlp94TMmyWhh_j96pwfFs(Lcom/dsh/nameblock/ScanJob;Landroid/app/job/JobParameters;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ScanJob;->lambda$onStartJob$0(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;)V
    .registers 3

    const/4 v0, 0x0

    .line 32
    :try_start_1
    invoke-static {p0}, Lcom/dsh/nameblock/Keeper;->ensure(Landroid/content/Context;)V

    .line 33
    invoke-static {p0, v0}, Lcom/dsh/nameblock/Scanner;->scan(Landroid/content/Context;Z)Lcom/dsh/nameblock/Scanner$Result;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    .line 36
    :catchall_7
    invoke-virtual {p0, p1, v0}, Lcom/dsh/nameblock/ScanJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    const-string v0, "jobscheduler"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_b

    return-void

    .line 19
    :cond_b
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/dsh/nameblock/ScanJob;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0x1267

    invoke-direct {v1, p0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v2, 0xdbba0

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2c

    :catchall_2c
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dsh/nameblock/ScanJob$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/dsh/nameblock/ScanJob$$ExternalSyntheticLambda0;-><init>(Lcom/dsh/nameblock/ScanJob;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
