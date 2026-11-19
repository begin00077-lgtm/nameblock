.class public Lcom/dsh/nameblock/ListActivity;
.super Landroid/app/Activity;
.source "ListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dsh/nameblock/ListActivity$SyncRow;,
        Lcom/dsh/nameblock/ListActivity$PollRunnable;,
        Lcom/dsh/nameblock/ListActivity$RowData;,
        Lcom/dsh/nameblock/ListActivity$RowAdapter;,
        Lcom/dsh/nameblock/ListActivity$Holder;
    }
.end annotation


# static fields
.field private static final COMPANY_WORDS:[Ljava/lang/String;

.field public static final EXTRA_KIND:Ljava/lang/String; = "kind"

.field private static final UI_LABELS:[Ljava/lang/String;

.field private static syncCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dsh/nameblock/ListActivity$SyncRow;",
            ">;"
        }
    .end annotation
.end field

.field private static syncLoading:Z

.field private static lastPerfLog:J


# instance fields
.field private body:Landroid/widget/FrameLayout;

.field private volatile cachedNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile callLogNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile contactNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private content:Landroid/widget/LinearLayout;

.field private volatile customMarked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataReceiver:Landroid/content/BroadcastReceiver;

.field private kind:Ljava/lang/String;

.field private lastDataRefresh:J

.field private lastMarkSignature:Ljava/lang/String;

.field private volatile locationCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logWatch:Lcom/dsh/nameblock/LogWatch;

.field private volatile markCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile nameMarkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pollHandler:Landroid/os/Handler;

.field private pollTask:Ljava/lang/Runnable;

.field private polling:Z

.field private scroll:Landroid/widget/ScrollView;

.field private store:Lcom/dsh/nameblock/Store;

.field private syncSpinner:Landroid/widget/ProgressBar;

.field private syncStatus:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$0Eutvg_jJmL06MRmAnCyn_joSCs(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$pickCallLog$18(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$0O2C7uF_hJ5eort6eYVo2TRT5a4(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$numbersPage$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-ol6izO7CXDvrRbt9PGWaYKMfg(Lcom/dsh/nameblock/ListActivity;Lcom/dsh/nameblock/CharPickerView;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$showCharPicker$37(Lcom/dsh/nameblock/CharPickerView;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A8w2XzvQdgxD7hovBLintG0BCls(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;ZLandroid/content/DialogInterface;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dsh/nameblock/ListActivity;->lambda$manualAddDialog$14(Landroid/widget/EditText;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GVeDS9Hrt_9zCuhtJeuAsF7yQn8(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$whiteSwitch$4(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JIVddfL1Z8WroCivRfpXmNhddyk(Lcom/dsh/nameblock/ListActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$confirmClearBlacklist$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lgjx6PM6HnnXPwOmZrfIRzVpJzw(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$keywordRow$7(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PPA8jJZu2qQyWvmj37Muw8Lqtno(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$keywordRow$6(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QrvOKJoCWxRd51a6bQLnEVzcpoM(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$numbersPage$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SAm6SUMP4lF62SIoIsv8ApE1O0Y(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$whitePage$21(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Svv7G7n2It7DBCo-_pZNtLHQiw0(Lcom/dsh/nameblock/ListActivity;Ljava/util/Map;ZLjava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$pickContact$16(Ljava/util/Map;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TuQ2ClyWX3CUCZlyf3xuyLZkBoI(Lcom/dsh/nameblock/ListActivity;Landroid/widget/RadioGroup;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$modePage$38(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V_iqusO5lWKccs8okMYuLgpuZSE(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$showSyncRows$28(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZVAg9UZX1f2dfESojkDm1XTZ0AY(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$syncPage$25(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bFxQklP04I14vAruSZhefWXwMPk(Lcom/dsh/nameblock/ListActivity;Lcom/dsh/nameblock/CharPickerView;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$showNumberPicker$34(Lcom/dsh/nameblock/CharPickerView;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJSQUdlonX5VlYUcLtkWJD9NoVY(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dsh/nameblock/ListActivity;->lambda$showKeywordEdit$8(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eqISwlDuwPAaYXTyObaJLpeWnvk(Lcom/dsh/nameblock/ListActivity;Ljava/util/Map;ZLjava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$pickCallLog$17(Ljava/util/Map;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$htLmzcL2DaH6ZFXcmZKIzmRMtlg(Lcom/dsh/nameblock/ListActivity;ZLandroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$addNumberDialog$13(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$i7f3sFwci_5s-jkPVm5LOFefvJA(Lcom/dsh/nameblock/ListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->lambda$syncPage$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$jpuSKP5EZSlDa7GS3oVvOpC5inE(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$keywordsPage$5(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k0pJP3rceQbMnaNIc5IoXN2NIk4(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$whitePage$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwbZFrUXdKJ1MkBOHXXCON4Kg04(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$numbersPage$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$opiWiCoMRYsvqpQ6nCTcvNtfnfY(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$logsPage$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-1DLlJzc0GpFFjv37XOwmZREsE(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$whitePage$22(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rMBO-vOKa4KgHgum25d-aomkyaY(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$diagPage$39(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$srMFgxdfrwk1Q2lh2vBMbtLqhkk(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$buildUi$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uj6tp7aODKs8cN517vj5BHfSiR0(Lcom/dsh/nameblock/ListActivity;ZLcom/dsh/nameblock/Scanner$CallEntry;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$showSyncRows$27(ZLcom/dsh/nameblock/Scanner$CallEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v1iKgHfOMrUor1lKFEAZORiNLzc(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$logsPage$24(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEHlHHOtlBZHBm9WkuPCAt4FsE8(Lcom/dsh/nameblock/ListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->lambda$registerDataReceiver$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$vKZkfRzS4v28c8xHarviTWopdeA(Lcom/dsh/nameblock/ListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->lambda$startPolling$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wUVoBIYZnx0aPtlUgVFbyLmqHKo(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$diagPage$40(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yndtLvv_2GdsAzI2nus0o_4BrR4(Lcom/dsh/nameblock/ListActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$pickCallLog$19(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetpollHandler(Lcom/dsh/nameblock/ListActivity;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->pollHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpolling(Lcom/dsh/nameblock/ListActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/dsh/nameblock/ListActivity;->polling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mbindRow(Lcom/dsh/nameblock/ListActivity;Lcom/dsh/nameblock/ListActivity$Holder;Lcom/dsh/nameblock/ListActivity$RowData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->bindRow(Lcom/dsh/nameblock/ListActivity$Holder;Lcom/dsh/nameblock/ListActivity$RowData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildRowView(Lcom/dsh/nameblock/ListActivity;)Landroid/view/View;
    .registers 1

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->buildRowView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckMarksChanged(Lcom/dsh/nameblock/ListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->checkMarksChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 43

    const-string v0, "\u8bed\u97f3\u4fe1\u7bb1"

    const-string v1, "\u65f6\u949f"

    const-string v2, "\u63a5\u542c"

    const-string v3, "\u62d2\u7edd"

    const-string v4, "\u6302\u65ad"

    const-string v5, "\u77ed\u4fe1"

    const-string v6, "\u63d0\u9192"

    const-string v7, "\u540d\u79f0\u62e6\u622a"

    const-string v8, "\u62e6\u622a\u50bb\u903c"

    const-string v9, "\u6765\u7535"

    const-string v10, "\u53bb\u7535"

    const-string v11, "\u672a\u63a5"

    const-string v12, "\u901a\u8bdd\u4e2d"

    const-string v13, "\u89c6\u9891\u901a\u8bdd"

    const-string v14, "\u5f55\u97f3"

    const-string v15, "\u514d\u63d0"

    const-string v16, "\u9759\u97f3"

    const-string v17, "\u952e\u76d8"

    const-string v18, "\u66f4\u591a"

    const-string v19, "\u8054\u7cfb\u4eba"

    const-string v20, "\u901a\u8bdd\u8bb0\u5f55"

    const-string v21, "\u672a\u77e5\u53f7\u7801"

    const-string v22, "\u4e2d\u56fd\u79fb\u52a8"

    const-string v23, "\u4e2d\u56fd\u8054\u901a"

    const-string v24, "\u4e2d\u56fd\u7535\u4fe1"

    const-string v25, "\u4e2d\u56fd\u5e7f\u7535"

    .line 398
    filled-new-array/range {v0 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dsh/nameblock/ListActivity;->UI_LABELS:[Ljava/lang/String;

    const-string v1, "\u516c\u53f8"

    const-string v2, "\u6709\u9650"

    const-string v3, "\u96c6\u56e2"

    const-string v4, "\u4e2d\u5fc3"

    const-string v5, "\u5b66\u9662"

    const-string v6, "\u5b66\u6821"

    const-string v7, "\u5927\u5b66"

    const-string v8, "\u533b\u9662"

    const-string v9, "\u94f6\u884c"

    const-string v10, "\u9152\u5e97"

    const-string v11, "\u9910\u5385"

    const-string v12, "\u7269\u6d41"

    const-string v13, "\u5feb\u9012"

    const-string v14, "\u5916\u5356"

    const-string v15, "\u79d1\u6280"

    const-string v16, "\u4f20\u5a92"

    const-string v17, "\u6559\u80b2"

    const-string v18, "\u57f9\u8bad"

    const-string v19, "\u5730\u4ea7"

    const-string v20, "\u6c7d\u8f66"

    const-string v21, "\u7ef4\u4fee"

    const-string v22, "\u4fdd\u9669"

    const-string v23, "\u91d1\u878d"

    const-string v24, "\u8bc1\u5238"

    const-string v25, "\u8bca\u6240"

    const-string v26, "\u836f\u623f"

    const-string v27, "\u8d85\u5e02"

    const-string v28, "\u5546\u57ce"

    const-string v29, "\u5de5\u5382"

    const-string v30, "\u4e8b\u52a1\u6240"

    const-string v31, "\u5de5\u4f5c\u5ba4"

    const-string v32, "\u8425\u4e1a\u5385"

    const-string v33, "\u5ba2\u670d"

    const-string v34, "\u552e\u540e"

    const-string v35, "\u670d\u52a1"

    const-string v36, "\u95e8\u5e97"

    const-string v37, "\u5546\u884c"

    const-string v38, "\u5efa\u6750"

    const-string v39, "\u88c5\u9970"

    const-string v40, "\u88c5\u4fee"

    const-string v41, "\u5bb6\u653f"

    const-string v42, "\u4e2d\u4ecb"

    .line 531
    filled-new-array/range {v1 .. v42}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dsh/nameblock/ListActivity;->COMPANY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollHandler:Landroid/os/Handler;

    return-void
.end method

.method private actionText(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    .registers 8

    .line 696
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 697
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 698
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x6

    if-eqz p2, :cond_50

    const/high16 p2, 0x7f010000

    .line 700
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, 0x1a34c759

    .line 702
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0xe

    .line 703
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x1

    .line 704
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    const v3, 0x5534c759

    invoke-virtual {p2, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 705
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 706
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p0

    invoke-virtual {v0, p2, v2, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_70

    :cond_50
    const p2, 0x7f010006

    .line 708
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0xc

    .line 709
    invoke-direct {p0, p2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p0

    invoke-virtual {v0, p2, v1, v2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_70
    if-eqz p3, :cond_7a

    .line 711
    new-instance p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda0;

    invoke-direct {p0, p3}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7a
    return-object v0
.end method

.method private addMany(Ljava/util/List;Ljava/util/Map;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1029
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1030
    invoke-static {v2}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1031
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_6

    :cond_1d
    if-eqz p3, :cond_25

    .line 1033
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v2, v3}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    goto :goto_41

    .line 1035
    :cond_25
    iget-object v4, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v4, v3}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v4, v3}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 1036
    :cond_32
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1037
    iget-object v4, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    if-nez v2, :cond_3e

    const-string v2, "\u624b\u52a8\u6dfb\u52a0"

    :cond_3e
    invoke-virtual {v4, v3, v2}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_44
    if-lez v1, :cond_77

    const-string p1, " \u4e2a\u53f7\u7801"

    if-eqz p3, :cond_5c

    .line 1042
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u52a0\u5165\u767d\u540d\u5355\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6d

    .line 1043
    :cond_5c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u52a0\u5165\u9ed1\u540d\u5355\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1042
    :goto_6d
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1043
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1044
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    :cond_77
    return-void
.end method

.method private addNumberDialog()V
    .registers 2

    const/4 v0, 0x0

    .line 898
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->addNumberDialog(Z)V

    return-void
.end method

.method private addNumberDialog(Z)V
    .registers 6

    .line 902
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_a

    const-string v1, "\u6dfb\u52a0\u53f7\u7801\u5230\u767d\u540d\u5355"

    goto :goto_c

    :cond_a
    const-string v1, "\u6dfb\u52a0\u53f7\u7801\u5230\u9ed1\u540d\u5355"

    .line 903
    :goto_c
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4ece\u901a\u8baf\u5f55\u9009\u62e9"

    const-string v2, "\u4ece\u901a\u8bdd\u8bb0\u5f55\u9009\u62e9"

    const-string v3, "\u624b\u52a8\u8f93\u5165\u53f7\u7801"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda17;-><init>(Lcom/dsh/nameblock/ListActivity;Z)V

    .line 904
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u53d6\u6d88"

    const/4 v0, 0x0

    .line 909
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 910
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private addToList(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 1048
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1049
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    if-eqz p3, :cond_29

    .line 1051
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    .line 1052
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u52a0\u5165\u767d\u540d\u5355\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_50

    .line 1054
    :cond_29
    iget-object p3, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p3, p1}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_36

    iget-object p3, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p3, p1}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 1055
    :cond_36
    iget-object p3, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p3, p1, p2}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u52a0\u5165\u9ed1\u540d\u5355\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1058
    :goto_50
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private bindRow(Lcom/dsh/nameblock/ListActivity$Holder;Lcom/dsh/nameblock/ListActivity$RowData;)V
    .registers 14

    .line 1494
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->glyph:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->glyph:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_a

    move-object v1, v2

    goto :goto_c

    :cond_a
    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->glyph:Ljava/lang/String;

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1495
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->glyph:Landroid/widget/TextView;

    const-string v1, "\u25cf"

    iget-object v3, p2, Lcom/dsh/nameblock/ListActivity$RowData;->glyph:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, -0xcb38a7

    const v4, 0x7f010006

    if-eqz v1, :cond_23

    move v1, v3

    goto :goto_27

    :cond_23
    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v1

    :goto_27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1496
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1497
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->sub:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->sub:Ljava/lang/String;

    if-nez v1, :cond_39

    move-object v1, v2

    goto :goto_3b

    :cond_39
    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->sub:Ljava/lang/String;

    :goto_3b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->time:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;

    if-nez v1, :cond_46

    move-object v1, v2

    goto :goto_48

    :cond_46
    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;

    :goto_48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    iget-object v0, p2, Lcom/dsh/nameblock/ListActivity$RowData;->subAction:Ljava/lang/Runnable;

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_53

    move v0, v1

    goto :goto_54

    :cond_53
    move v0, v5

    .line 1500
    :goto_54
    iget-object v6, p1, Lcom/dsh/nameblock/ListActivity$Holder;->bottomRow:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    if-eqz v0, :cond_5c

    move v8, v5

    goto :goto_5d

    :cond_5c
    move v8, v7

    :goto_5d
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x5534c759

    const/16 v8, 0xe

    const v9, 0x1a34c759

    if-eqz v0, :cond_9d

    .line 1502
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->subAction:Landroid/widget/TextView;

    iget-object v10, p2, Lcom/dsh/nameblock/ListActivity$RowData;->subActionLabel:Ljava/lang/String;

    if-nez v10, :cond_72

    move-object v10, v2

    goto :goto_74

    :cond_72
    iget-object v10, p2, Lcom/dsh/nameblock/ListActivity$RowData;->subActionLabel:Ljava/lang/String;

    :goto_74
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1503
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1505
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1506
    invoke-direct {p0, v8}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1507
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v10

    invoke-virtual {v0, v10, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1508
    iget-object v10, p1, Lcom/dsh/nameblock/ListActivity$Holder;->subAction:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1510
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->subAction:Landroid/widget/TextView;

    new-instance v10, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda37;

    invoke-direct {v10, p2}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda37;-><init>(Lcom/dsh/nameblock/ListActivity$RowData;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1515
    :cond_9d
    iget-object v0, p2, Lcom/dsh/nameblock/ListActivity$RowData;->toggleOn:Ljava/lang/Boolean;

    const/4 v10, 0x0

    if-eqz v0, :cond_e5

    .line 1516
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1517
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1518
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1519
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    invoke-virtual {v0, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1520
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->toggleOn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dsh/nameblock/ListActivity;->tintSwitch(Landroid/widget/Switch;Z)V

    .line 1521
    iget-object p0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggleLabel:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/dsh/nameblock/ListActivity$RowData;->toggleLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    iget-object p0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggleLabel:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/dsh/nameblock/ListActivity$RowData;->toggleOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d3

    goto :goto_d6

    :cond_d3
    const v3, -0x1ab7b3

    :goto_d6
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1524
    iget-object p0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    new-instance p1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda38;

    invoke-direct {p1, p2}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda38;-><init>(Lcom/dsh/nameblock/ListActivity$RowData;)V

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_18c

    .line 1528
    :cond_e5
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1529
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1530
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1531
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    if-nez v3, :cond_fb

    goto :goto_fd

    :cond_fb
    iget-object v2, p2, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    :goto_fd
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    iget-boolean v0, p2, Lcom/dsh/nameblock/ListActivity$RowData;->actionPill:Z

    const/4 v2, 0x6

    if-eqz v0, :cond_15c

    const-string v0, "\u6539\u5173\u952e\u8bcd"

    .line 1533
    iget-object v3, p2, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1534
    iget-object v3, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    if-eqz v0, :cond_115

    const v4, 0x7f010001

    goto :goto_117

    :cond_115
    const/high16 v4, 0x7f010000

    :goto_117
    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1535
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    if-eqz v0, :cond_128

    const v9, 0x26ffd54f

    .line 1537
    :cond_128
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1538
    invoke-direct {p0, v8}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1539
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    if-eqz v0, :cond_13c

    const v6, -0x77002ab1

    :cond_13c
    invoke-virtual {v3, v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1540
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1541
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p0

    invoke-virtual {v0, v3, v4, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_182

    .line 1543
    :cond_15c
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1544
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1545
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p0

    invoke-virtual {v0, v1, v3, v4, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1548
    :goto_182
    iget-object p0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    new-instance p1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda39;

    invoke-direct {p1, p2}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda39;-><init>(Lcom/dsh/nameblock/ListActivity$RowData;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_18c
    return-void
.end method

.method private buildRowView()Landroid/view/View;
    .registers 18

    move-object/from16 v0, p0

    .line 1381
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1382
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1384
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1385
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 1386
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0xa

    .line 1387
    invoke-direct {v0, v5}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v6

    const/4 v7, 0x4

    invoke-direct {v0, v7}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1389
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 1390
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v7, 0x7f010006

    .line 1391
    invoke-virtual {v0, v7}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v8, 0x11

    .line 1392
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 1393
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x18

    invoke-direct {v0, v9}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v9

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1396
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1397
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1398
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1400
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x41800000    # 16.0f

    .line 1401
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    const v11, 0x7f010005

    .line 1402
    invoke-virtual {v0, v11}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1403
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1405
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x41400000    # 12.0f

    .line 1406
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1407
    invoke-virtual {v0, v7}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1408
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1409
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1411
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1412
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v8, 0x800015

    .line 1413
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1414
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0xb0

    invoke-direct {v0, v15}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v15

    invoke-direct {v14, v15, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1416
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1417
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1418
    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1420
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1421
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1422
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1423
    invoke-virtual {v0, v11}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1424
    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1425
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x6

    .line 1427
    invoke-direct {v0, v11}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1428
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1429
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1431
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1432
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1433
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1435
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1436
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v10, 0xa

    .line 1437
    invoke-direct {v0, v10}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v8

    invoke-direct {v0, v11}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v13

    invoke-direct {v0, v10}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-direct {v0, v11}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v10

    invoke-virtual {v5, v8, v13, v4, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1438
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1440
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    .line 1441
    invoke-direct {v0, v4, v8}, Lcom/dsh/nameblock/ListActivity;->tintSwitch(Landroid/widget/Switch;Z)V

    .line 1442
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1444
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x41400000    # 12.0f

    .line 1445
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1446
    invoke-direct {v0, v11}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v13

    invoke-virtual {v10, v13, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1447
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1449
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1450
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1452
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1453
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v8, 0x800015

    .line 1454
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1455
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v8, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1457
    invoke-direct {v0, v11}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v14

    iput v14, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1458
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x8

    .line 1459
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1461
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v14, 0x41400000    # 12.0f

    .line 1462
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v14, 0x7f010000

    .line 1463
    invoke-virtual {v0, v14}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v14, 0x1

    .line 1464
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v14, 0xa

    .line 1465
    invoke-direct {v0, v14}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v13

    move-object/from16 v16, v10

    invoke-direct {v0, v11}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v10

    invoke-direct {v0, v14}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v14

    invoke-direct {v0, v11}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v11

    invoke-virtual {v8, v13, v10, v14, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1466
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1468
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1469
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1470
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1472
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1473
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x1

    .line 1474
    invoke-direct {v0, v11}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v11

    const/4 v13, -0x1

    invoke-direct {v10, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1473
    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v10, 0x7f010003

    .line 1475
    invoke-virtual {v0, v10}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1476
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1478
    new-instance v0, Lcom/dsh/nameblock/ListActivity$Holder;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/dsh/nameblock/ListActivity$Holder;-><init>(Lcom/dsh/nameblock/ListActivity$Holder-IA;)V

    .line 1479
    iput-object v6, v0, Lcom/dsh/nameblock/ListActivity$Holder;->glyph:Landroid/widget/TextView;

    .line 1480
    iput-object v9, v0, Lcom/dsh/nameblock/ListActivity$Holder;->title:Landroid/widget/TextView;

    .line 1481
    iput-object v12, v0, Lcom/dsh/nameblock/ListActivity$Holder;->sub:Landroid/widget/TextView;

    .line 1482
    iput-object v15, v0, Lcom/dsh/nameblock/ListActivity$Holder;->time:Landroid/widget/TextView;

    .line 1483
    iput-object v5, v0, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    .line 1484
    iput-object v4, v0, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    move-object/from16 v3, v16

    .line 1485
    iput-object v3, v0, Lcom/dsh/nameblock/ListActivity$Holder;->toggleLabel:Landroid/widget/TextView;

    .line 1486
    iput-object v7, v0, Lcom/dsh/nameblock/ListActivity$Holder;->rightBox:Landroid/widget/LinearLayout;

    .line 1487
    iput-object v2, v0, Lcom/dsh/nameblock/ListActivity$Holder;->bottomRow:Landroid/widget/LinearLayout;

    .line 1488
    iput-object v8, v0, Lcom/dsh/nameblock/ListActivity$Holder;->subAction:Landroid/widget/TextView;

    .line 1489
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method private buildUi()Landroid/view/View;
    .registers 11

    const/16 v0, 0x10

    .line 224
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    .line 225
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 226
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    .line 230
    invoke-virtual {v4, v1, v1, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 232
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u2039 \u8fd4\u56de"

    .line 233
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 234
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0xa

    .line 235
    invoke-direct {p0, v7}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v8

    invoke-virtual {v6, v5, v5, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 236
    new-instance v8, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda9;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 241
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 243
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    const/high16 v8, 0x41b00000    # 22.0f

    .line 244
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 245
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v8, 0x0

    const v9, 0x1010079

    invoke-direct {v0, p0, v8, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    .line 249
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x12

    invoke-direct {p0, v8}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v8

    invoke-direct {v0, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 250
    invoke-direct {p0, v7}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 251
    iget-object v7, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 255
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    const/high16 v8, 0x41400000    # 12.0f

    .line 256
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 257
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    const v8, -0xcb38a7

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v8

    invoke-virtual {v0, v8, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 259
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    .line 266
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    invoke-direct {v4, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->scroll:Landroid/widget/ScrollView;

    .line 270
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    .line 271
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 272
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v5, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 273
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->scroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method private callLogName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 628
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_12

    const-string p0, ""

    :cond_12
    return-object p0
.end method

.method private callLogNames()Ljava/util/Map;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "geocoded_location"

    const-string v2, "identify_name"

    const-string v3, "name"

    const-string v4, "number"

    .line 456
    iget-object v5, v0, Lcom/dsh/nameblock/ListActivity;->callLogNameCache:Ljava/util/Map;

    if-eqz v5, :cond_11

    iget-object v0, v0, Lcom/dsh/nameblock/ListActivity;->callLogNameCache:Ljava/util/Map;

    return-object v0

    .line 457
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 458
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 459
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 460
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 461
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 462
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x5

    :try_start_2f
    new-array v12, v12, [Ljava/lang/String;

    const/16 v20, 0x0

    aput-object v4, v12, v20

    const/4 v14, 0x1

    aput-object v3, v12, v14

    const/4 v14, 0x2

    aput-object v2, v12, v14

    const/4 v14, 0x3

    aput-object v1, v12, v14

    const-string v14, "date"

    const/4 v15, 0x4

    aput-object v14, v12, v15
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_15d

    .line 467
    :try_start_43
    invoke-virtual/range {p0 .. p0}, Lcom/dsh/nameblock/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "date DESC"

    move-object/from16 v16, v12

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_55
    .catchall {:try_start_43 .. :try_end_55} :catchall_56

    goto :goto_57

    :catchall_56
    const/4 v12, 0x0

    :goto_57
    if-nez v12, :cond_6f

    .line 473
    :try_start_59
    invoke-virtual/range {p0 .. p0}, Lcom/dsh/nameblock/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "date DESC"

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_6f

    :catchall_6c
    move-object v13, v12

    goto/16 :goto_15e

    :cond_6f
    :goto_6f
    if-eqz v12, :cond_157

    .line 477
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 478
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 479
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 480
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_81
    move/from16 v14, v20

    .line 482
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_87
    .catchall {:try_start_59 .. :try_end_87} :catchall_6c

    if-eqz v15, :cond_157

    add-int/lit8 v20, v14, 0x1

    const/16 v15, 0x1770

    if-ge v14, v15, :cond_157

    const-string v14, ""

    if-ltz v4, :cond_9c

    .line 483
    :try_start_93
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_9d

    :cond_9c
    move-object v15, v14

    .line 484
    :goto_9d
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_a7

    :cond_a3
    :goto_a3
    move/from16 v16, v1

    goto/16 :goto_153

    :cond_a7
    if-ltz v1, :cond_c6

    .line 485
    invoke-interface {v8, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c6

    .line 486
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_c6

    .line 487
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_c6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_c6
    invoke-interface {v9, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    if-ltz v2, :cond_d3

    .line 490
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_d4

    :cond_d3
    const/4 v13, 0x0

    :goto_d4
    if-nez v13, :cond_d7

    move-object v13, v14

    .line 492
    :cond_d7
    invoke-interface {v9, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_da
    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f5

    if-ltz v2, :cond_f5

    .line 495
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_f5

    .line 496
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_f5

    invoke-interface {v10, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f5
    if-ltz v3, :cond_114

    .line 498
    invoke-interface {v11, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_114

    .line 499
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_114

    .line 500
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_114

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_114
    invoke-interface {v7, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11b

    goto :goto_a3

    .line 503
    :cond_11b
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ltz v2, :cond_a3

    .line 505
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a3

    const-string v14, "\"isCustomMark\":true"

    .line 506
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a3

    const-string v14, "\"phoneFlag\":\""

    .line 507
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_13e

    const-string v14, "\"name\":\""

    .line 508
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    :cond_13e
    if-ltz v14, :cond_a3

    add-int/lit8 v14, v14, 0xd

    move/from16 v16, v1

    const/16 v1, 0x22

    .line 511
    invoke-virtual {v13, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-le v1, v14, :cond_153

    .line 512
    invoke-virtual {v13, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_153
    .catchall {:try_start_93 .. :try_end_153} :catchall_6c

    :cond_153
    :goto_153
    move/from16 v1, v16

    goto/16 :goto_81

    :cond_157
    if-eqz v12, :cond_163

    .line 520
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_163

    :catchall_15d
    const/4 v13, 0x0

    :goto_15e
    if-eqz v13, :cond_163

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_163
    :goto_163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "callLogNames "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms rows="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # throttled: perf log once every 60s (the page polls every 5s)
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-wide v14, Lcom/dsh/nameblock/ListActivity;->lastPerfLog:J

    sub-long v14, v12, v14

    const-wide/32 v16, 0xea60

    cmp-long v14, v14, v16

    if-gez v14, :skip_perf_log

    sput-wide v12, Lcom/dsh/nameblock/ListActivity;->lastPerfLog:J

    const-string v2, "perf"

    invoke-static {v0, v2, v1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :skip_perf_log

    .line 523
    iput-object v7, v0, Lcom/dsh/nameblock/ListActivity;->callLogNameCache:Ljava/util/Map;

    .line 524
    iput-object v8, v0, Lcom/dsh/nameblock/ListActivity;->locationCache:Ljava/util/Map;

    .line 525
    iput-object v9, v0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    .line 526
    iput-object v10, v0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

    .line 527
    iput-object v11, v0, Lcom/dsh/nameblock/ListActivity;->cachedNameCache:Ljava/util/Map;

    return-object v7
.end method

.method private callRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 301
    invoke-direct/range {v0 .. v5}, Lcom/dsh/nameblock/ListActivity;->callRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private callRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .registers 16

    .line 306
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 307
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 309
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 310
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    .line 311
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v4, 0xa

    .line 312
    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v6

    invoke-virtual {v2, v3, v5, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v5, 0x7f010006

    const/4 v6, -0x2

    if-eqz p1, :cond_61

    .line 315
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41700000    # 15.0f

    .line 317
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v8, "\u25cf"

    .line 318
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const p1, -0xcb38a7

    goto :goto_48

    :cond_44
    invoke-virtual {p0, v5}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p1

    :goto_48
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 319
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 320
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x18

    invoke-direct {p0, v8}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v8

    invoke-direct {p1, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    :cond_61
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 325
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 326
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v3, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 330
    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, 0x7f010005

    .line 331
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, ""

    if-nez p3, :cond_97

    move-object p3, v8

    .line 335
    :cond_97
    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p3, 0x41400000    # 12.0f

    .line 336
    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 337
    invoke-virtual {p0, v5}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 342
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v5, 0x800015

    .line 343
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 344
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0xb0

    invoke-direct {p0, v9}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v9

    invoke-direct {v7, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 348
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 350
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-nez p4, :cond_db

    move-object p4, v8

    .line 351
    :cond_db
    invoke-virtual {v9, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {v9, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 353
    sget-object p4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 354
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p2

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 356
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p4, 0x6

    .line 358
    invoke-direct {p0, p4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v8

    iput v8, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 359
    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p5, :cond_10f

    .line 363
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p5, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    invoke-virtual {v7, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    :cond_10f
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 371
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 372
    new-instance p5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 374
    invoke-direct {p0, p4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v5

    iput v5, p5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 375
    invoke-virtual {p2, p5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p5, 0x8

    .line 376
    invoke-virtual {p2, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    new-instance p5, Landroid/widget/TextView;

    invoke-direct {p5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 p3, 0x7f010000

    .line 380
    invoke-virtual {p0, p3}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p3

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 382
    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p3

    invoke-direct {p0, p4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, p4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p4

    invoke-virtual {p5, p3, v5, v4, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 383
    invoke-virtual {p2, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 390
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p3

    invoke-direct {p2, v3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f010003

    .line 391
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 392
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private checkMarksChanged()V
    .registers 3

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->markSignature()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->lastMarkSignature:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 104
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->lastMarkSignature:Ljava/lang/String;

    goto :goto_16

    .line 105
    :cond_b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 106
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->lastMarkSignature:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_16

    :catchall_16
    :cond_16
    :goto_16
    return-void
.end method

.method private cleanName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string p0, ""

    if-nez p1, :cond_5

    return-object p0

    .line 407
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p0

    :cond_10
    const-string v0, "[0-9+\\-\\s]+"

    .line 409
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object p0

    :cond_19
    const-string v0, ".*(\u79fb\u52a8|\u8054\u901a|\u7535\u4fe1|\u5e7f\u7535|\u94c1\u901a)$"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_2a

    return-object p0

    .line 411
    :cond_2a
    sget-object v0, Lcom/dsh/nameblock/ListActivity;->UI_LABELS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_3c

    aget-object v3, v0, v2

    .line 412
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    return-object p0

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3c
    const-string v0, "\u4fe1\u7bb1"

    .line 414
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "\u65f6\u949f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "\u63a5\u542c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "\u6302\u65ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "\u77ed\u4fe1"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "\u62e6\u622a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_6e

    :cond_6d
    return-object p1

    :cond_6e
    :goto_6e
    return-object p0
.end method

.method private confirmClearBlacklist()V
    .registers 5

    .line 885
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 886
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6e05\u7a7a\u9ed1\u540d\u5355"

    .line 887
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5c06\u5220\u9664\u5168\u90e8 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u4e2a\u53f7\u7801\uff0c\u4e4b\u540e\u8fd9\u4e9b\u53f7\u7801\u6765\u7535\u4f1a\u6b63\u5e38\u54cd\u94c3\u3002\u786e\u5b9a\u5417\uff1f"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda12;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    const-string p0, "\u786e\u8ba4\u6e05\u7a7a"

    .line 889
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 893
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 894
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private contactNames()Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "data1"

    const-string v1, "display_name"

    .line 561
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->contactNameCache:Ljava/util/Map;

    if-eqz v2, :cond_b

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->contactNameCache:Ljava/util/Map;

    return-object p0

    .line 562
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 563
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 564
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 565
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 566
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 567
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x0

    :try_start_2a
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v9, v5

    const/4 v7, 0x1

    aput-object v0, v9, v7
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_9e

    .line 573
    :try_start_32
    invoke-virtual {p0}, Lcom/dsh/nameblock/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_3f

    :catchall_3f
    if-nez v6, :cond_4f

    .line 580
    :try_start_41
    invoke-virtual {p0}, Lcom/dsh/nameblock/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_4f
    if-eqz v6, :cond_9b

    .line 585
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 586
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 588
    :goto_59
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_9e

    if-eqz v7, :cond_9b

    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x7d0

    if-ge v5, v8, :cond_9b

    const-string v5, ""

    if-ltz v0, :cond_72

    .line 589
    :try_start_69
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_73

    :cond_72
    move-object v8, v5

    .line 590
    :goto_73
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_99

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_80

    goto :goto_99

    :cond_80
    if-ltz v1, :cond_86

    .line 591
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_86
    if-eqz v5, :cond_99

    .line 592
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_99

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catchall {:try_start_69 .. :try_end_99} :catchall_9e

    :cond_99
    :goto_99
    move v5, v7

    goto :goto_59

    :cond_9b
    if-eqz v6, :cond_a3

    goto :goto_a0

    :catchall_9e
    if-eqz v6, :cond_a3

    .line 597
    :goto_a0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_a3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "contactNames "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms rows="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "perf"

    invoke-static {p0, v1, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iput-object v4, p0, Lcom/dsh/nameblock/ListActivity;->contactNameCache:Ljava/util/Map;

    return-object v4
.end method

.method private customMarked()Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "identify_name"

    const-string v1, "number"

    .line 422
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->customMarked:Ljava/util/Set;

    if-eqz v2, :cond_b

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->customMarked:Ljava/util/Set;

    return-object p0

    .line 423
    :cond_b
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 426
    :try_start_11
    invoke-virtual {p0}, Lcom/dsh/nameblock/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v6, v10

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_65

    if-eqz v4, :cond_5f

    .line 430
    :try_start_2a
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 431
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 433
    :goto_32
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    add-int/lit8 v5, v10, 0x1

    const/16 v6, 0x3e8

    if-ge v10, v6, :cond_5f

    if-ltz v0, :cond_45

    .line 434
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_46

    :cond_45
    move-object v6, v3

    :goto_46
    if-eqz v6, :cond_5b

    const-string v7, "\"isCustomMark\":true"

    .line 435
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 436
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catchall {:try_start_2a .. :try_end_5b} :catchall_5d

    :cond_5b
    move v10, v5

    goto :goto_32

    :catchall_5d
    move-object v3, v4

    goto :goto_65

    :cond_5f
    if-eqz v4, :cond_6a

    .line 442
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6a

    :catchall_65
    :goto_65
    if-eqz v3, :cond_6a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_6a
    :goto_6a
    iput-object v2, p0, Lcom/dsh/nameblock/ListActivity;->customMarked:Ljava/util/Set;

    return-object v2
.end method

.method private diagPage()V
    .registers 7

    .line 1681
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u8bca\u65ad\u65e5\u5fd7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1682
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5237\u65b0"

    .line 1683
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1684
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda19;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1685
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1687
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e05\u7a7a"

    .line 1688
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1689
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda20;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1693
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1695
    invoke-static {p0}, Lcom/dsh/nameblock/Diag;->read(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1696
    array-length v1, v0

    add-int/lit16 v1, v1, -0x12c

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1697
    :goto_47
    array-length v3, v0

    if-ge v1, v3, :cond_76

    .line 1698
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_73

    .line 1699
    :cond_53
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1700
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 1701
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x2

    .line 1702
    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v2, v5, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1703
    iget-object v4, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_76
    return-void
.end method

.method private displayNameOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 606
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 607
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->contactNames()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 608
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    return-object v0

    .line 609
    :cond_17
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->cachedNameCache:Ljava/util/Map;

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    .line 610
    :cond_1e
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->cachedNameCache:Ljava/util/Map;

    if-nez v0, :cond_24

    const/4 v0, 0x0

    goto :goto_2c

    :cond_24
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->cachedNameCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2c
    if-eqz v0, :cond_35

    .line 613
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->looksLikeCompany(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    return-object v0

    .line 614
    :cond_35
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 615
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->looksLikeCompany(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    return-object v0

    .line 619
    :cond_4e
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->markOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 620
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    .line 621
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->flagOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 622
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_63

    return-object p0

    :cond_63
    const-string p0, ""

    return-object p0
.end method

.method private displayedNumbers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "nums"

    .line 131
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 132
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2c
    const-string v1, "white"

    .line 133
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 134
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8d

    :cond_40
    const-string v1, "logs"

    .line 135
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 136
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->logs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_67
    const-string v1, "sync"

    .line 137
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->kind:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8d

    sget-object p0, Lcom/dsh/nameblock/ListActivity;->syncCache:Ljava/util/List;

    if-eqz p0, :cond_8d

    .line 138
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_79
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dsh/nameblock/ListActivity$SyncRow;

    iget-object v1, v1, Lcom/dsh/nameblock/ListActivity$SyncRow;->call:Lcom/dsh/nameblock/Scanner$CallEntry;

    iget-object v1, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catchall {:try_start_5 .. :try_end_8c} :catchall_8d

    goto :goto_79

    :catchall_8d
    :cond_8d
    :goto_8d
    return-object v0
.end method

.method private dp(I)I
    .registers 3

    int-to-float p1, p1

    .line 1770
    invoke-virtual {p0}, Lcom/dsh/nameblock/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private flagOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p0, ""

    if-nez p1, :cond_5

    return-object p0

    :cond_5
    const-string v0, "\"phoneFlag\":\""

    .line 635
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_13

    const-string v0, "\"name\":\""

    .line 638
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_13
    if-gez v1, :cond_16

    return-object p0

    .line 641
    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x22

    .line 642
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-le v0, v1, :cond_2b

    .line 643
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_2b
    return-object p0
.end method

.method private hint(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 4

    .line 1710
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1711
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 1712
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x7f010006

    .line 1713
    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x6

    .line 1714
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p1

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private inputRow(Landroid/widget/EditText;Landroid/widget/Button;)Landroid/view/View;
    .registers 7

    .line 1719
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 1720
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1721
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1722
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1723
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private invalidateCaches()V
    .registers 2

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->callLogNameCache:Ljava/util/Map;

    .line 171
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->locationCache:Ljava/util/Map;

    .line 172
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    .line 173
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->contactNameCache:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->customMarked:Ljava/util/Set;

    return-void
.end method

.method private keywordRow(Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .line 774
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 775
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 776
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xa

    .line 777
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 779
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 780
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 781
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, 0x7f010005

    .line 782
    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 783
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 786
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u7f16\u8f91"

    .line 787
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 788
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v4, 0x7f010000

    .line 789
    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 790
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v5}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 791
    new-instance v4, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda26;

    invoke-direct {v4, p0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda26;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 794
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u2715"

    .line 795
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, 0x7f010006

    .line 797
    invoke-virtual {p0, v3}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 798
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v5}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v5}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 799
    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda27;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 805
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 806
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 807
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 808
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 809
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    .line 810
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 809
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f010003

    .line 811
    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 812
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private keywordTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 648
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->markOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 649
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, ""

    return-object p0

    .line 650
    :cond_d
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    return-object v0

    .line 652
    :cond_1a
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->flagOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private keywordsPage()V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u540d\u79f0\u5173\u952e\u8bcd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u6765\u7535\u754c\u9762\u4e0a\u7684\u540d\u79f0\uff08\u6216\u53f7\u7801\uff09\u5305\u542b\u8fd9\u4e9b\u8bcd\u65f6\uff0c\u81ea\u52a8\u6302\u65ad\u3002\u6ce8\u610f\u4e0d\u8981\u7528\u592a\u77ed\u7684\u8bcd\uff0c\u5bb9\u6613\u8bef\u4f24\u3002"

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 753
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4f8b\u5982\uff1a\u4f20\u5a92 / \u6559\u80b2 / \u57f9\u8bad"

    .line 754
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 755
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 756
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6dfb\u52a0"

    .line 757
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 758
    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda18;-><init>(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/dsh/nameblock/ListActivity;->inputRow(Landroid/widget/EditText;Landroid/widget/Button;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 767
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->keywords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 768
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->keywordRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_45

    :cond_5b
    return-void
.end method

.method static synthetic lambda$actionText$3(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 711
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$addNumberDialog$13(ZLandroid/content/DialogInterface;I)V
    .registers 4

    if-nez p3, :cond_6

    .line 905
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->manualAddDialog(Z)V

    goto :goto_10

    :cond_6
    const/4 p2, 0x1

    if-ne p3, p2, :cond_d

    .line 906
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->pickContact(Z)V

    goto :goto_10

    .line 907
    :cond_d
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->pickCallLog(Z)V

    :goto_10
    return-void
.end method

.method static synthetic lambda$bindRow$29(Lcom/dsh/nameblock/ListActivity$RowData;Landroid/view/View;)V
    .registers 2

    .line 1511
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity$RowData;->subAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$RowData;->subAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method static synthetic lambda$bindRow$30(Lcom/dsh/nameblock/ListActivity$RowData;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1525
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity$RowData;->toggle:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$RowData;->toggle:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method static synthetic lambda$bindRow$31(Lcom/dsh/nameblock/ListActivity$RowData;Landroid/view/View;)V
    .registers 2

    .line 1549
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity$RowData;->action:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$RowData;->action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$buildUi$2(Landroid/view/View;)V
    .registers 2

    .line 236
    invoke-virtual {p0}, Lcom/dsh/nameblock/ListActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$confirmClearBlacklist$12(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 890
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p1}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {v0, p2}, Lcom/dsh/nameblock/Store;->removeNumber(Ljava/lang/String;)V

    goto :goto_a

    .line 891
    :cond_1f
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$diagPage$39(Landroid/view/View;)V
    .registers 2

    .line 1684
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$diagPage$40(Landroid/view/View;)V
    .registers 2

    .line 1690
    invoke-static {p0}, Lcom/dsh/nameblock/Diag;->clear(Landroid/content/Context;)V

    .line 1691
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$keywordRow$6(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 791
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->showKeywordEdit(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$keywordRow$7(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 800
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->removeKeyword(Ljava/lang/String;)V

    .line 801
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$keywordsPage$5(Landroid/widget/EditText;Landroid/view/View;)V
    .registers 4

    .line 759
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 760
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 761
    :cond_13
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p2}, Lcom/dsh/nameblock/Store;->addKeyword(Ljava/lang/String;)V

    const-string p2, ""

    .line 762
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 763
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$logsPage$23(Landroid/view/View;)V
    .registers 2

    .line 1106
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p1}, Lcom/dsh/nameblock/Store;->clearLogs()V

    .line 1107
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$logsPage$24(Ljava/lang/String;)V
    .registers 5

    .line 1158
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p1}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1160
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->keywordTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1161
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v1, p1}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 1162
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v0, "\u624b\u52a8\u6dfb\u52a0"

    :cond_1b
    invoke-virtual {v1, p1, v0}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 1164
    :cond_1f
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p1}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    .line 1166
    :goto_24
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$manualAddDialog$14(Landroid/widget/EditText;ZLandroid/content/DialogInterface;I)V
    .registers 5

    .line 921
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_17

    const-string p3, "\u624b\u52a8\u6dfb\u52a0"

    invoke-direct {p0, p1, p3, p2}, Lcom/dsh/nameblock/ListActivity;->addToList(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$modePage$38(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 1675
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    const/16 p1, 0x7d3

    if-ne p2, p1, :cond_8

    const/4 p1, 0x2

    goto :goto_f

    :cond_8
    const/16 p1, 0x7d2

    if-ne p2, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/Store;->setMode(I)V

    return-void
.end method

.method private synthetic lambda$numbersPage$10(Landroid/view/View;)V
    .registers 2

    .line 854
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->confirmClearBlacklist()V

    return-void
.end method

.method private synthetic lambda$numbersPage$11(Ljava/lang/String;)V
    .registers 3

    .line 876
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p1}, Lcom/dsh/nameblock/Store;->removeNumber(Ljava/lang/String;)V

    .line 877
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$numbersPage$9(Landroid/view/View;)V
    .registers 2

    .line 849
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->addNumberDialog()V

    return-void
.end method

.method private synthetic lambda$pickCallLog$17(Ljava/util/Map;ZLjava/util/List;)V
    .registers 5

    if-eqz p3, :cond_c

    .line 1020
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_c

    .line 1021
    :cond_9
    invoke-direct {p0, p3, p1, p2}, Lcom/dsh/nameblock/ListActivity;->addMany(Ljava/util/List;Ljava/util/Map;Z)V

    :cond_c
    :goto_c
    return-void
.end method

.method private synthetic lambda$pickCallLog$18(Ljava/util/List;Z)V
    .registers 10

    .line 1008
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "\u901a\u8bdd\u8bb0\u5f55\u662f\u7a7a\u7684"

    const/4 p2, 0x0

    .line 1009
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1012
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1014
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dsh/nameblock/Scanner$CallEntry;

    .line 1015
    iget-object v3, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    :cond_3a
    iget-object v3, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;

    .line 1016
    :goto_3c
    new-instance v4, Lcom/dsh/nameblock/PickerDialog$Item;

    iget-object v5, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lcom/dsh/nameblock/PickerDialog$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object v3, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    iget-object v4, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_59

    const-string v1, "\u624b\u52a8\u6dfb\u52a0"

    goto :goto_5b

    :cond_59
    iget-object v1, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;

    :goto_5b
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_5f
    const-string v1, "\u4ece\u901a\u8bdd\u8bb0\u5f55\u9009\u62e9"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1019
    new-instance v5, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0, v0, p2}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda22;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/Map;Z)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/dsh/nameblock/PickerDialog;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZZLcom/dsh/nameblock/PickerDialog$Callback;)V

    return-void
.end method

.method private synthetic lambda$pickCallLog$19(Z)V
    .registers 4

    const/16 v0, 0x12c

    .line 1006
    invoke-static {p0, v0}, Lcom/dsh/nameblock/Scanner;->recentCalls(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 1007
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;Z)V

    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/ListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$pickContact$15(Ljava/util/Map;Lcom/dsh/nameblock/PickerDialog$Item;Lcom/dsh/nameblock/PickerDialog$Item;)I
    .registers 5

    .line 992
    iget-object v0, p1, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 993
    iget-object v1, p2, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_15

    move-object v0, v1

    :cond_15
    if-nez p0, :cond_18

    move-object p0, v1

    .line 994
    :cond_18
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_27

    .line 995
    :cond_1f
    iget-object p0, p1, Lcom/dsh/nameblock/PickerDialog$Item;->title:Ljava/lang/String;

    iget-object p1, p2, Lcom/dsh/nameblock/PickerDialog$Item;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    :goto_27
    return p0
.end method

.method private synthetic lambda$pickContact$16(Ljava/util/Map;ZLjava/util/List;)V
    .registers 5

    if-eqz p3, :cond_c

    .line 998
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_c

    .line 999
    :cond_9
    invoke-direct {p0, p3, p1, p2}, Lcom/dsh/nameblock/ListActivity;->addMany(Ljava/util/List;Ljava/util/Map;Z)V

    :cond_c
    :goto_c
    return-void
.end method

.method private synthetic lambda$registerDataReceiver$1()V
    .registers 7

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    iget-wide v2, p0, Lcom/dsh/nameblock/ListActivity;->lastDataRefresh:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    return-void

    .line 185
    :cond_f
    iput-wide v0, p0, Lcom/dsh/nameblock/ListActivity;->lastDataRefresh:J

    .line 186
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->invalidateCaches()V

    .line 187
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method static synthetic lambda$showCharPicker$35(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u952e\u8bcd\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$showCharPicker$36(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u952e\u8bcd\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$showCharPicker$37(Lcom/dsh/nameblock/CharPickerView;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1645
    invoke-virtual {p1}, Lcom/dsh/nameblock/CharPickerView;->getKeyword()Ljava/lang/String;

    move-result-object p1

    .line 1646
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    return-void

    :cond_b
    const/4 p2, 0x0

    .line 1647
    sput-object p2, Lcom/dsh/nameblock/ListActivity;->syncCache:Ljava/util/List;

    .line 1648
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->addKeyword(Ljava/lang/String;)V

    .line 1649
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u6dfb\u52a0\u5173\u952e\u8bcd\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1650
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$showKeywordEdit$8(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 825
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 826
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_13

    return-void

    .line 827
    :cond_13
    iget-object p3, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p3, p2, p1}, Lcom/dsh/nameblock/Store;->editKeyword(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u6539\u4e3a\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 829
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method static synthetic lambda$showNumberPicker$32(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u952e\u8bcd\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$showNumberPicker$33(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u952e\u8bcd\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$showNumberPicker$34(Lcom/dsh/nameblock/CharPickerView;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1603
    invoke-virtual {p1}, Lcom/dsh/nameblock/CharPickerView;->getKeyword()Ljava/lang/String;

    move-result-object p1

    .line 1604
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    return-void

    .line 1605
    :cond_b
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->addKeyword(Ljava/lang/String;)V

    .line 1606
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u6dfb\u52a0\u5173\u952e\u8bcd\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1607
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$showSyncRows$27(ZLcom/dsh/nameblock/Scanner$CallEntry;)V
    .registers 3

    if-eqz p1, :cond_6

    .line 1238
    invoke-direct {p0, p2}, Lcom/dsh/nameblock/ListActivity;->showCharPicker(Lcom/dsh/nameblock/Scanner$CallEntry;)V

    goto :goto_b

    .line 1239
    :cond_6
    iget-object p1, p2, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->showNumberPicker(Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method private synthetic lambda$showSyncRows$28(Ljava/lang/String;)V
    .registers 4

    .line 1243
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    const-string v1, "\u624b\u52a8\u6dfb\u52a0"

    invoke-virtual {v0, p1, v1}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u52a0\u5165\u9ed1\u540d\u5355\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1245
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$startPolling$0()V
    .registers 7

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    iget-wide v2, p0, Lcom/dsh/nameblock/ListActivity;->lastDataRefresh:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    return-void

    .line 154
    :cond_f
    iput-wide v0, p0, Lcom/dsh/nameblock/ListActivity;->lastDataRefresh:J

    .line 155
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->invalidateCaches()V

    .line 156
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$syncPage$25(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    .line 1184
    sput-boolean v0, Lcom/dsh/nameblock/ListActivity;->syncLoading:Z

    .line 1185
    sput-object p1, Lcom/dsh/nameblock/ListActivity;->syncCache:Ljava/util/List;

    .line 1186
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->setSyncRunning(Z)V

    const-string p1, "sync"

    .line 1187
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->showSyncRows()V

    :cond_15
    return-void
.end method

.method private synthetic lambda$syncPage$26()V
    .registers 3

    .line 1182
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->loadSyncRows()Ljava/util/List;

    move-result-object v0

    .line 1183
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, v0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda40;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/ListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$whitePage$20(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 1066
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->addNumberDialog(Z)V

    return-void
.end method

.method private synthetic lambda$whitePage$21(Landroid/widget/EditText;Landroid/view/View;)V
    .registers 4

    .line 1075
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1076
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 1077
    :cond_13
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p2}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    const-string p2, ""

    .line 1078
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$whitePage$22(Ljava/lang/String;)V
    .registers 3

    .line 1090
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p1}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 1091
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$whiteSwitch$4(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .registers 4

    if-eqz p3, :cond_8

    .line 734
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    goto :goto_d

    .line 735
    :cond_8
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 736
    :goto_d
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private listEntry(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 656
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->displayNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->locationOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->keywordTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v2, ""

    .line 660
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_35

    .line 662
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 664
    :cond_35
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 665
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    :cond_3e
    :goto_3e
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 668
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4f

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    const-string v1, "\u3010"

    .line 669
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u3011"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 671
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_69
    const/4 p0, 0x0

    aput-object v0, v1, p0

    const/4 p0, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    return-object v1
.end method

.method private loadSyncRows()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dsh/nameblock/ListActivity$SyncRow;",
            ">;"
        }
    .end annotation

    .line 1255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1257
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->contactNames()Ljava/util/Map;

    .line 1258
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    const v2, 0x7fffffff

    .line 1259
    invoke-static {p0, v2}, Lcom/dsh/nameblock/Scanner;->recentCalls(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 1260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "recentCalls "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms entries="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "perf"

    invoke-static {p0, v1, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 1264
    :try_start_3b
    invoke-virtual {p0}, Lcom/dsh/nameblock/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    const-string p0, "data1"

    const/4 v9, 0x0

    aput-object p0, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 1269
    :cond_52
    :goto_52
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 1270
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1271
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_3b .. :try_end_69} :catchall_6d

    goto :goto_52

    :cond_6a
    if-eqz v1, :cond_72

    goto :goto_6f

    :catchall_6d
    if-eqz v1, :cond_72

    .line 1276
    :goto_6f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1278
    :cond_72
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dsh/nameblock/Scanner$CallEntry;

    .line 1280
    new-instance v3, Lcom/dsh/nameblock/ListActivity$SyncRow;

    iget-object v4, v2, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/dsh/nameblock/ListActivity$SyncRow;-><init>(Lcom/dsh/nameblock/Scanner$CallEntry;Z)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_96
    return-object p0
.end method

.method private locationOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 554
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->locationCache:Ljava/util/Map;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    .line 555
    :cond_7
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->locationCache:Ljava/util/Map;

    if-nez v0, :cond_d

    const/4 p0, 0x0

    goto :goto_19

    :cond_d
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->locationCache:Ljava/util/Map;

    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_19
    if-nez p0, :cond_1d

    const-string p0, ""

    :cond_1d
    return-object p0
.end method

.method private logsPage()V
    .registers 18

    move-object/from16 v0, p0

    .line 1097
    iget-object v1, v0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v1}, Lcom/dsh/nameblock/Store;->logs()Ljava/util/List;

    move-result-object v1

    .line 1098
    iget-object v2, v0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u62e6\u622a\u8bb0\u5f55\uff08"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\uff09"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1101
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v4, "\u5f00\u5173\u6253\u5f00\uff1d\u653e\u884c\uff08\u7eff\u8272\uff09\uff0c\u5173\u95ed\uff1d\u62e6\u622a\uff08\u7ea2\u8272\uff09\u3002\u653e\u884c\u4f1a\u52a0\u5165\u767d\u540d\u5355\u3002"

    .line 1102
    invoke-direct {v0, v4}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1103
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u6e05\u7a7a\u8bb0\u5f55"

    .line 1104
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    new-instance v5, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda14;

    invoke-direct {v5, v0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda14;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1111
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd HH:mm"

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_175

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 1114
    aget-object v7, v6, v3

    .line 1115
    invoke-direct {v0, v7}, Lcom/dsh/nameblock/ListActivity;->displayNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1117
    new-instance v9, Lcom/dsh/nameblock/ListActivity$RowData;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/dsh/nameblock/ListActivity$RowData;-><init>(Lcom/dsh/nameblock/ListActivity$RowData-IA;)V

    const-string v10, "\u2298"

    .line 1118
    iput-object v10, v9, Lcom/dsh/nameblock/ListActivity$RowData;->glyph:Ljava/lang/String;

    .line 1119
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_84

    invoke-direct {v0, v7}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_85

    :cond_84
    move-object v10, v8

    :goto_85
    iput-object v10, v9, Lcom/dsh/nameblock/ListActivity$RowData;->title:Ljava/lang/String;

    const/4 v10, 0x3

    .line 1120
    aget-object v10, v6, v10

    const-string v11, ""

    if-nez v10, :cond_8f

    goto :goto_95

    :cond_8f
    const-string v12, "^[^\\p{L}\\p{N}]+"

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1121
    :goto_95
    invoke-direct {v0, v7}, Lcom/dsh/nameblock/ListActivity;->keywordTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "\u62e6\u622a\u540d\u5355"

    .line 1124
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b1

    .line 1125
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_aa

    const-string v11, "\u9ed1\u540d\u5355\u62e6\u622a"

    goto :goto_ab

    :cond_aa
    move-object v11, v10

    .line 1126
    :goto_ab
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    :goto_af
    xor-int/2addr v12, v3

    goto :goto_c9

    :cond_b1
    const-string v12, "\u300c"

    .line 1127
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c8

    .line 1128
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c2

    const-string v11, "\u5173\u952e\u8bcd\u62e6\u622a"

    goto :goto_c3

    :cond_c2
    move-object v11, v10

    .line 1129
    :goto_c3
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    goto :goto_af

    :cond_c8
    const/4 v12, 0x0

    .line 1132
    :goto_c9
    invoke-direct {v0, v7}, Lcom/dsh/nameblock/ListActivity;->locationOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1133
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1134
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    const-string v3, "\u3011"

    const-string v13, " \u00b7 "

    if-nez v16, :cond_107

    .line 1135
    invoke-direct {v0, v7}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_ef

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :cond_ef
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_135

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_135

    const-string v8, " \u3010"

    .line 1138
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_135

    .line 1141
    :cond_107
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_110

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_110
    if-eqz v12, :cond_129

    .line 1143
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_11d

    const-string v8, " "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11d
    const-string v8, "\u3010"

    .line 1144
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_135

    .line 1146
    :cond_129
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_132

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    :cond_132
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    :cond_135
    :goto_135
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/dsh/nameblock/ListActivity$RowData;->sub:Ljava/lang/String;

    .line 1152
    :try_start_13b
    new-instance v3, Ljava/util/Date;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;
    :try_end_14d
    .catchall {:try_start_13b .. :try_end_14d} :catchall_14d

    .line 1155
    :catchall_14d
    iget-object v3, v0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v3, v7}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v9, Lcom/dsh/nameblock/ListActivity$RowData;->toggleOn:Ljava/lang/Boolean;

    .line 1156
    iget-object v3, v9, Lcom/dsh/nameblock/ListActivity$RowData;->toggleOn:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_164

    const-string v3, "\u5df2\u653e\u884c"

    goto :goto_166

    :cond_164
    const-string v3, "\u5df2\u62e6\u622a"

    :goto_166
    iput-object v3, v9, Lcom/dsh/nameblock/ListActivity$RowData;->toggleLabel:Ljava/lang/String;

    .line 1157
    new-instance v3, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda15;

    invoke-direct {v3, v0, v7}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda15;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    iput-object v3, v9, Lcom/dsh/nameblock/ListActivity$RowData;->toggle:Ljava/lang/Runnable;

    .line 1168
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_5d

    .line 1170
    :cond_175
    invoke-direct {v0, v2, v5}, Lcom/dsh/nameblock/ListActivity;->showList(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private looksLikeCompany(Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_1d

    .line 540
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1d

    .line 541
    :cond_a
    sget-object v0, Lcom/dsh/nameblock/ListActivity;->COMPANY_WORDS:[Ljava/lang/String;

    array-length v1, v0

    move v2, p0

    :goto_e
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    :goto_1d
    return p0
.end method

.method private manualAddDialog(Z)V
    .registers 5

    .line 914
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u624b\u673a\u53f7\u6216\u5ea7\u673a\u53f7"

    .line 915
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 916
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 917
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u624b\u52a8\u6dfb\u52a0\u53f7\u7801"

    .line 918
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 919
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda8;-><init>(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;Z)V

    const-string p0, "\u6dfb\u52a0"

    .line 920
    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u53d6\u6d88"

    const/4 v0, 0x0

    .line 924
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 925
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private markOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    .line 548
    :cond_7
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    if-nez v0, :cond_d

    const/4 p0, 0x0

    goto :goto_19

    :cond_d
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_19
    if-nez p0, :cond_1d

    const-string p0, ""

    :cond_1d
    return-object p0
.end method

.method private markSignature()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->callLogNameCache:Ljava/util/Map;

    .line 115
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

    .line 116
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    .line 117
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->cachedNameCache:Ljava/util/Map;

    .line 118
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->displayedNumbers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    iget-object v3, p0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    const-string v4, ""

    if-nez v3, :cond_2d

    move-object v3, v4

    goto :goto_39

    :cond_2d
    iget-object v3, p0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    invoke-static {v2}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    :goto_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v3, :cond_44

    goto :goto_48

    :cond_44
    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->flagOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_48
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0xfa0

    if-le v2, v3, :cond_19

    .line 125
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private modePage()V
    .registers 8

    .line 1657
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u964c\u751f\u53f7\u7801\u7b56\u7565"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1658
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u9ed8\u8ba4\u5173\u95ed\uff1a\u53ea\u6309\u540d\u79f0\u5173\u952e\u8bcd\u62e6\u622a\uff0c\u5176\u4ed6\u964c\u751f\u53f7\u7801\u6b63\u5e38\u54cd\u94c3\u3002"

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1660
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 1661
    new-instance v1, Landroid/widget/RadioButton;

    invoke-direct {v1, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5173\u95ed\uff08\u53ea\u6309\u540d\u79f0\u5173\u952e\u8bcd\uff09"

    .line 1662
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x7d1

    .line 1663
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setId(I)V

    .line 1664
    new-instance v3, Landroid/widget/RadioButton;

    invoke-direct {v3, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string v4, "\u964c\u751f\u53f7\u7801\u9759\u97f3\uff08\u4e0d\u54cd\u94c3\uff09"

    .line 1665
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x7d2

    .line 1666
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 1667
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string v6, "\u964c\u751f\u53f7\u7801\u76f4\u63a5\u62d2\u63a5"

    .line 1668
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x7d3

    .line 1669
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setId(I)V

    .line 1670
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1671
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1672
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1673
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v1}, Lcom/dsh/nameblock/Store;->mode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_58

    move v2, v6

    goto :goto_5c

    :cond_58
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5c

    move v2, v4

    .line 1674
    :cond_5c
    :goto_5c
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 1675
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda10;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1677
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private numbersPage()V
    .registers 13

    .line 836
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v0

    .line 837
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9ed1\u540d\u5355\uff08"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff09"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 840
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "\u540d\u79f0\u547d\u4e2d\u5173\u952e\u8bcd\u88ab\u6302\u65ad\u7684\u53f7\u7801\u4f1a\u81ea\u52a8\u52a0\u8fdb\u6765\u3002\u8fd9\u91cc\u7684\u53f7\u7801\u6765\u7535\u65f6\u5728\u54cd\u94c3\u524d\u76f4\u63a5\u62d2\u63a5\uff0c\u5373\u4f7f\u662f\u901a\u8baf\u5f55\u8054\u7cfb\u4eba\u4e5f\u4f1a\u88ab\u62d2\u63a5\uff08\u767d\u540d\u5355\u91cc\u7684\u9664\u5916\uff09\u3002"

    .line 841
    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 844
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 845
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 847
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "\u6dfb\u52a0\u53f7\u7801"

    .line 848
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 849
    new-instance v6, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda28;

    invoke-direct {v6, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda28;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "\u6e05\u7a7a\u9ed1\u540d\u5355"

    .line 853
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 854
    new-instance v6, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda29;

    invoke-direct {v6, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda29;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 859
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd HH:mm"

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 860
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 861
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 862
    aget-object v7, v6, v4

    .line 863
    invoke-direct {p0, v7}, Lcom/dsh/nameblock/ListActivity;->listEntry(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 864
    new-instance v9, Lcom/dsh/nameblock/ListActivity$RowData;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/dsh/nameblock/ListActivity$RowData;-><init>(Lcom/dsh/nameblock/ListActivity$RowData-IA;)V

    const-string v10, "\u2298"

    .line 865
    iput-object v10, v9, Lcom/dsh/nameblock/ListActivity$RowData;->glyph:Ljava/lang/String;

    .line 866
    aget-object v10, v8, v4

    iput-object v10, v9, Lcom/dsh/nameblock/ListActivity$RowData;->title:Ljava/lang/String;

    .line 867
    aget-object v8, v8, v2

    iput-object v8, v9, Lcom/dsh/nameblock/ListActivity$RowData;->sub:Ljava/lang/String;

    const-string v8, ""

    iput-object v8, v9, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;

    .line 868
    array-length v8, v6

    const/4 v10, 0x2

    if-le v8, v10, :cond_d0

    aget-object v8, v6, v10

    if-eqz v8, :cond_d0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d0

    .line 870
    :try_start_bf
    new-instance v8, Ljava/util/Date;

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;
    :try_end_d0
    .catchall {:try_start_bf .. :try_end_d0} :catchall_d0

    :catchall_d0
    :cond_d0
    const-string v6, "\u2715"

    .line 874
    iput-object v6, v9, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    .line 875
    new-instance v6, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda30;

    invoke-direct {v6, p0, v7}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda30;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    iput-object v6, v9, Lcom/dsh/nameblock/ListActivity$RowData;->action:Ljava/lang/Runnable;

    .line 879
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 881
    :cond_df
    invoke-direct {p0, v1, v5}, Lcom/dsh/nameblock/ListActivity;->showList(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private pickCallLog(Z)V
    .registers 4

    const-string v0, "\u6b63\u5728\u8bfb\u53d6\u901a\u8bdd\u8bb0\u5f55\u2026"

    const/4 v1, 0x0

    .line 1004
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1005
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda13;-><init>(Lcom/dsh/nameblock/ListActivity;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1024
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private pickContact(Z)V
    .registers 22

    move-object/from16 v0, p0

    const-string v1, ""

    .line 929
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 930
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 931
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 932
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    .line 935
    :try_start_19
    invoke-virtual/range {p0 .. p0}, Lcom/dsh/nameblock/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "_id"

    aput-object v11, v10, v6

    const-string v11, "sort_key"

    const/4 v14, 0x1

    aput-object v11, v10, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_50

    if-eqz v8, :cond_4d

    .line 941
    :goto_34
    :try_start_34
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 942
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 943
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    if-nez v9, :cond_49

    move-object v9, v1

    :cond_49
    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_51

    goto :goto_34

    :cond_4d
    if-eqz v8, :cond_56

    goto :goto_53

    :catchall_50
    const/4 v8, 0x0

    :catchall_51
    if-eqz v8, :cond_56

    .line 948
    :goto_53
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 952
    :cond_56
    :try_start_56
    invoke-virtual/range {p0 .. p0}, Lcom/dsh/nameblock/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "display_name ASC"

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_152

    if-eqz v8, :cond_14c

    :try_start_67
    const-string v9, "display_name"

    .line 957
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "data1"

    .line 958
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "contact_id"

    .line 959
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move v12, v6

    .line 961
    :goto_7a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_14c

    add-int/lit8 v13, v12, 0x1

    const/16 v14, 0x320

    if-ge v12, v14, :cond_14c

    if-ltz v10, :cond_8d

    .line 962
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_8e

    :cond_8d
    const/4 v12, 0x0

    :goto_8e
    if-eqz v12, :cond_13e

    .line 963
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9c

    goto/16 :goto_13e

    :cond_9c
    if-ltz v9, :cond_a3

    .line 964
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_a4

    :cond_a3
    move-object v14, v1

    :goto_a4
    if-nez v14, :cond_a8

    move-object v14, v1

    goto :goto_ac

    .line 965
    :cond_a8
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 966
    :goto_ac
    invoke-static {v12}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 967
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_13e

    invoke-interface {v3, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_be

    goto/16 :goto_13e

    .line 968
    :cond_be
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_c9

    const-string v16, "\u624b\u52a8\u6dfb\u52a0"

    move-object/from16 v7, v16

    goto :goto_ca

    :cond_c9
    move-object v7, v14

    :goto_ca
    invoke-interface {v3, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v11, :cond_e0

    .line 971
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_e0

    goto :goto_e1

    :cond_e0
    move-object v7, v1

    :goto_e1
    const-string v17, "#"

    .line 975
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_100

    .line 976
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    move-object/from16 v18, v1

    const/16 v1, 0x41

    if-lt v6, v1, :cond_102

    const/16 v1, 0x5a

    if-gt v6, v1, :cond_102

    .line 977
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v17

    goto :goto_102

    :cond_100
    move-object/from16 v18, v1

    :cond_102
    :goto_102
    move-object/from16 v1, v17

    .line 979
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_108
    .catchall {:try_start_67 .. :try_end_108} :catchall_14a

    const-string v17, "\uff08\u65e0\u540d\u79f0\uff09"

    move-object/from16 v19, v4

    if-eqz v6, :cond_111

    move-object/from16 v6, v17

    goto :goto_112

    :cond_111
    move-object v6, v14

    :goto_112
    :try_start_112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    new-instance v4, Lcom/dsh/nameblock/PickerDialog$Item;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_133

    move-object/from16 v14, v17

    :cond_133
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v14, v6, v15, v1}, Lcom/dsh/nameblock/PickerDialog$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13d
    .catchall {:try_start_112 .. :try_end_13d} :catchall_14a

    goto :goto_142

    :cond_13e
    :goto_13e
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    :goto_142
    move v12, v13

    move-object/from16 v1, v18

    move-object/from16 v4, v19

    const/4 v6, 0x0

    goto/16 :goto_7a

    :catchall_14a
    move-object v7, v8

    goto :goto_153

    :cond_14c
    if-eqz v8, :cond_158

    .line 985
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_158

    :catchall_152
    const/4 v7, 0x0

    :goto_153
    if-eqz v7, :cond_158

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 987
    :cond_158
    :goto_158
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_169

    const-string v1, "\u901a\u8baf\u5f55\u91cc\u6ca1\u6709\u53ef\u7528\u7684\u53f7\u7801"

    const/4 v2, 0x0

    .line 988
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 991
    :cond_169
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, v5}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda6;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const-string v1, "\u4ece\u901a\u8baf\u5f55\u9009\u62e9"

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 997
    new-instance v6, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda7;

    move/from16 v7, p1

    invoke-direct {v6, v0, v3, v7}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda7;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/Map;Z)V

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/dsh/nameblock/PickerDialog;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZZLcom/dsh/nameblock/PickerDialog$Callback;)V

    return-void
.end method

.method private prettyNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string p0, ""

    if-nez p1, :cond_5

    return-object p0

    :cond_5
    const-string v0, "[^0-9+]"

    .line 675
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    const-string v4, " "

    if-le v1, v2, :cond_55

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xf

    if-gt v1, v5, :cond_55

    .line 677
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_27
    if-lez v1, :cond_50

    add-int/lit8 v2, v1, -0x4

    .line 680
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 681
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3b

    move-object v5, p0

    goto :goto_3c

    :cond_3b
    move-object v5, v4

    :goto_3c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_27

    .line 684
    :cond_50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 686
    :cond_55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, v2, :cond_b0

    const-string p0, "0"

    .line 687
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x7

    if-eqz p0, :cond_8a

    const/4 p0, 0x4

    .line 688
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8a
    const/4 p0, 0x3

    .line 690
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b0
    return-object p1
.end method

.method private refresh()V
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 282
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 283
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    if-eqz v0, :cond_20

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 286
    :cond_20
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    :cond_27
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->kind:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_86

    goto :goto_6a

    :sswitch_34
    const-string v1, "white"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_6a

    :cond_3d
    const/4 v3, 0x4

    goto :goto_6a

    :sswitch_3f
    const-string v1, "sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_6a

    :cond_48
    const/4 v3, 0x3

    goto :goto_6a

    :sswitch_4a
    const-string v1, "nums"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_6a

    :cond_53
    const/4 v3, 0x2

    goto :goto_6a

    :sswitch_55
    const-string v1, "logs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_6a

    :cond_5e
    const/4 v3, 0x1

    goto :goto_6a

    :sswitch_60
    const-string v1, "kw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v3, 0x0

    :goto_6a
    packed-switch v3, :pswitch_data_9c

    .line 293
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->diagPage()V

    goto :goto_84

    .line 290
    :pswitch_71
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->whitePage()V

    goto :goto_84

    .line 292
    :pswitch_75
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->syncPage()V

    goto :goto_84

    .line 289
    :pswitch_79
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->numbersPage()V

    goto :goto_84

    .line 291
    :pswitch_7d
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->logsPage()V

    goto :goto_84

    .line 288
    :pswitch_81
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->keywordsPage()V

    :goto_84
    return-void

    nop

    :sswitch_data_86
    .sparse-switch
        0xd6c -> :sswitch_60
        0x32c5af -> :sswitch_55
        0x33c5ad -> :sswitch_4a
        0x361a9b -> :sswitch_3f
        0x6bdcc29 -> :sswitch_34
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
    .end packed-switch
.end method

.method private registerDataReceiver()V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    return-void

    .line 182
    :cond_5
    new-instance v0, Lcom/dsh/nameblock/DataChangeReceiver;

    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda23;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-direct {v0, v1}, Lcom/dsh/nameblock/DataChangeReceiver;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.dsh.nameblock.DATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 191
    :try_start_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_25

    .line 192
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/dsh/nameblock/ListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2e

    .line 194
    :cond_25
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dsh/nameblock/ListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2b

    goto :goto_2e

    :catchall_2b
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    :goto_2e
    return-void
.end method

.method private row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 10

    .line 1728
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1729
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1730
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x8

    .line 1731
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1733
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1734
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 1735
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1736
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1737
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_bd

    .line 1740
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1741
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 1742
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "\u2715"

    .line 1743
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x6

    if-nez v2, :cond_97

    const-string v2, "\u5df2\u653e\u884c"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_58

    goto :goto_97

    :cond_58
    const/high16 p2, 0x7f010000

    .line 1747
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1748
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, 0x1a34c759

    .line 1749
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0xe

    .line 1750
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1751
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    const v5, 0x5534c759

    invoke-virtual {p2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1752
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1753
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p2

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, p2, v4, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_b7

    :cond_97
    :goto_97
    const p2, 0x7f010006

    .line 1744
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0xc

    .line 1745
    invoke-direct {p0, p2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p2

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, p2, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1755
    :goto_b7
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1756
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1759
    :cond_bd
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1760
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1761
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1762
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1763
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f010003

    .line 1764
    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1765
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method private setSyncRunning(Z)V
    .registers 5

    .line 1286
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_13

    .line 1288
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1289
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2a

    .line 1291
    :cond_13
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1292
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    const-string v0, "\u2713 \u540c\u6b65\u5b8c\u6210"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1293
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    const v0, -0xcb38a7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1294
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2a
    return-void
.end method

.method private showCharPicker(Lcom/dsh/nameblock/Scanner$CallEntry;)V
    .registers 7

    .line 1614
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1615
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1616
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    .line 1617
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1619
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 1620
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v2, 0x7f010000

    .line 1621
    invoke-virtual {p0, v2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u5173\u952e\u8bcd\uff1a"

    .line 1622
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1623
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1625
    iget-object v2, p1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->displayNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1626
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v2, p1, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;

    if-nez v2, :cond_40

    const-string v2, ""

    goto :goto_46

    :cond_40
    iget-object v2, p1, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1627
    :cond_46
    :goto_46
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1628
    iget-object p1, p1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->showNumberPicker(Ljava/lang/String;)V

    return-void

    .line 1631
    :cond_52
    new-instance p1, Lcom/dsh/nameblock/CharPickerView;

    const/4 v3, 0x6

    invoke-direct {p1, p0, v2, v3}, Lcom/dsh/nameblock/CharPickerView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1632
    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda31;

    invoke-direct {v2, v1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda31;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, v2}, Lcom/dsh/nameblock/CharPickerView;->setListener(Lcom/dsh/nameblock/CharPickerView$Listener;)V

    .line 1633
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v2}, Lcom/dsh/nameblock/Store;->keywords()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/dsh/nameblock/CharPickerView;->preselectContaining([Ljava/lang/String;)V

    .line 1634
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 1636
    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1637
    invoke-virtual {p1, v2}, Lcom/dsh/nameblock/CharPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1638
    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda32;

    invoke-direct {v2, v1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda32;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, v2}, Lcom/dsh/nameblock/CharPickerView;->setListener(Lcom/dsh/nameblock/CharPickerView$Listener;)V

    .line 1639
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1641
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u624b\u6307\u6ed1\u8fc7\u8981\u4f5c\u4e3a\u5173\u952e\u8bcd\u7684\u5b57"

    .line 1642
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1643
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda33;-><init>(Lcom/dsh/nameblock/ListActivity;Lcom/dsh/nameblock/CharPickerView;)V

    const-string p0, "\u6dfb\u52a0"

    .line 1644
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u53d6\u6d88"

    const/4 v0, 0x0

    .line 1653
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1654
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showKeywordEdit(Ljava/lang/String;)V
    .registers 5

    .line 817
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 818
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 819
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 820
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 821
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u4fee\u6539\u5173\u952e\u8bcd"

    .line 822
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 823
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda11;-><init>(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    const-string p0, "\u4fdd\u5b58"

    .line 824
    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u53d6\u6d88"

    const/4 v0, 0x0

    .line 831
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 832
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showList(Landroid/view/View;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/dsh/nameblock/ListActivity$RowData;",
            ">;)V"
        }
    .end annotation

    .line 1330
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1331
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 1332
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1333
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    const/16 v3, 0x10

    .line 1334
    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v4, v2, v5, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    if-eqz p1, :cond_26

    .line 1335
    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1336
    :cond_26
    new-instance p1, Lcom/dsh/nameblock/ListActivity$RowAdapter;

    invoke-direct {p1, p0, p2}, Lcom/dsh/nameblock/ListActivity$RowAdapter;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1337
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1338
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showNumberPicker(Ljava/lang/String;)V
    .registers 7

    .line 1577
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1578
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1579
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1580
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    .line 1581
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1583
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 1584
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v2, 0x7f010000

    .line 1585
    invoke-virtual {p0, v2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u5173\u952e\u8bcd\uff1a"

    .line 1586
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1587
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1589
    new-instance v2, Lcom/dsh/nameblock/CharPickerView;

    const/4 v3, 0x6

    invoke-direct {v2, p0, p1, v3}, Lcom/dsh/nameblock/CharPickerView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1590
    new-instance p1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, p1}, Lcom/dsh/nameblock/CharPickerView;->setListener(Lcom/dsh/nameblock/CharPickerView$Listener;)V

    .line 1591
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p1}, Lcom/dsh/nameblock/Store;->keywords()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/dsh/nameblock/CharPickerView;->preselectContaining([Ljava/lang/String;)V

    .line 1592
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 1594
    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1595
    invoke-virtual {v2, p1}, Lcom/dsh/nameblock/CharPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1596
    new-instance p1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, v1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda3;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, p1}, Lcom/dsh/nameblock/CharPickerView;->setListener(Lcom/dsh/nameblock/CharPickerView$Listener;)V

    .line 1597
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1599
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u624b\u6307\u6ed1\u8fc7\u8981\u4f5c\u4e3a\u5173\u952e\u8bcd\u7684\u6570\u5b57"

    .line 1600
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1601
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v2}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dsh/nameblock/ListActivity;Lcom/dsh/nameblock/CharPickerView;)V

    const-string p0, "\u6dfb\u52a0"

    .line 1602
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u53d6\u6d88"

    const/4 v0, 0x0

    .line 1610
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1611
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showSyncRows()V
    .registers 16

    .line 1196
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1197
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v2, "\u540d\u79f0\u6765\u81ea\u7cfb\u7edf\u901a\u8bdd\u8bb0\u5f55\uff08\u542b\u9ec4\u9875/\u6807\u8bb0\uff09\u3002\u624b\u6307\u6ed1\u8fc7\u540d\u5b57\u91cc\u7684\u5b57\u5373\u9009\u4e2d\uff1b\u70b9\u4e00\u4e2a\u5b57\u53ef\u5355\u72ec\u9009/\u53d6\u6d88\u3002\u300c\u5df2\u8986\u76d6\u300d\u8868\u793a\u5df2\u547d\u4e2d\u73b0\u6709\u5173\u952e\u8bcd\uff0c\u300c\u8054\u7cfb\u4eba\u300d\u6c38\u8fdc\u4e0d\u4f1a\u88ab\u62e6\u3002"

    .line 1198
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1202
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    sget-object v4, Lcom/dsh/nameblock/ListActivity;->syncCache:Ljava/util/List;

    if-eqz v4, :cond_126

    .line 1205
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_126

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dsh/nameblock/ListActivity$SyncRow;

    .line 1206
    iget-object v5, v5, Lcom/dsh/nameblock/ListActivity$SyncRow;->call:Lcom/dsh/nameblock/Scanner$CallEntry;

    .line 1207
    new-instance v6, Lcom/dsh/nameblock/ListActivity$RowData;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/dsh/nameblock/ListActivity$RowData;-><init>(Lcom/dsh/nameblock/ListActivity$RowData-IA;)V

    .line 1208
    iget v8, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->type:I

    invoke-direct {p0, v8}, Lcom/dsh/nameblock/ListActivity;->typeGlyph(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/dsh/nameblock/ListActivity$RowData;->glyph:Ljava/lang/String;

    .line 1209
    iget-object v8, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/dsh/nameblock/ListActivity;->displayNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1213
    iget-object v9, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/dsh/nameblock/ListActivity;->keywordTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1214
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_62

    iget-object v9, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/dsh/nameblock/ListActivity;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1215
    :cond_62
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6a

    const-string v9, ""

    .line 1216
    :cond_6a
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_77

    .line 1217
    iget-object v11, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_78

    :cond_77
    move-object v11, v8

    :goto_78
    iput-object v11, v6, Lcom/dsh/nameblock/ListActivity$RowData;->title:Ljava/lang/String;

    .line 1218
    iget-object v11, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/dsh/nameblock/ListActivity;->locationOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1219
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v10, :cond_90

    .line 1220
    iget-object v13, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_90
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    const-string v14, " \u00b7 "

    if-nez v13, :cond_a4

    .line 1222
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_a1

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    :cond_a1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    :cond_a4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_ad

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    :cond_ad
    iget v11, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->type:I

    invoke-direct {p0, v11}, Lcom/dsh/nameblock/ListActivity;->typeLabel(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    iget v11, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->count:I

    if-le v11, v1, :cond_c9

    const-string v11, " \u00b7 \u5171 "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->count:I

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " \u901a"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    :cond_c9
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_dc

    const-string v11, " \u3010"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u3011"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :cond_dc
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/dsh/nameblock/ListActivity$RowData;->sub:Ljava/lang/String;

    .line 1230
    new-instance v9, Ljava/util/Date;

    iget-wide v11, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->date:J

    invoke-direct {v9, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;

    if-eqz v10, :cond_f2

    goto :goto_fc

    .line 1232
    :cond_f2
    iget-object v7, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-static {v8}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_fc
    if-eqz v7, :cond_101

    const-string v7, "\u6539\u5173\u952e\u8bcd"

    goto :goto_103

    :cond_101
    const-string v7, "\u52a0\u5173\u952e\u8bcd"

    .line 1233
    :goto_103
    iput-object v7, v6, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    .line 1234
    iput-boolean v1, v6, Lcom/dsh/nameblock/ListActivity$RowData;->actionPill:Z

    xor-int/lit8 v7, v10, 0x1

    .line 1236
    iget-object v8, v5, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-static {v8}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1237
    new-instance v9, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;

    invoke-direct {v9, p0, v7, v5}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;-><init>(Lcom/dsh/nameblock/ListActivity;ZLcom/dsh/nameblock/Scanner$CallEntry;)V

    iput-object v9, v6, Lcom/dsh/nameblock/ListActivity$RowData;->action:Ljava/lang/Runnable;

    const-string v5, "\u52a0\u5165\u9ed1\u540d\u5355"

    .line 1241
    iput-object v5, v6, Lcom/dsh/nameblock/ListActivity$RowData;->subActionLabel:Ljava/lang/String;

    .line 1242
    new-instance v5, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0, v8}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda25;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    iput-object v5, v6, Lcom/dsh/nameblock/ListActivity$RowData;->subAction:Ljava/lang/Runnable;

    .line 1247
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 1250
    :cond_126
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "renderSyncRows "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rows"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "perf"

    invoke-static {p0, v2, v1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    invoke-direct {p0, v0, v3}, Lcom/dsh/nameblock/ListActivity;->showList(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private startPolling()V
    .registers 4

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/dsh/nameblock/ListActivity;->polling:Z

    .line 149
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollTask:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    new-instance v0, Lcom/dsh/nameblock/ListActivity$PollRunnable;

    invoke-direct {v0, p0}, Lcom/dsh/nameblock/ListActivity$PollRunnable;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollTask:Ljava/lang/Runnable;

    .line 150
    :cond_e
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->logWatch:Lcom/dsh/nameblock/LogWatch;

    if-nez v0, :cond_22

    .line 151
    new-instance v0, Lcom/dsh/nameblock/LogWatch;

    invoke-virtual {p0}, Lcom/dsh/nameblock/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda16;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/dsh/nameblock/LogWatch;-><init>(Landroid/content/ContentResolver;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->logWatch:Lcom/dsh/nameblock/LogWatch;

    .line 159
    :cond_22
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->logWatch:Lcom/dsh/nameblock/LogWatch;

    invoke-virtual {v0}, Lcom/dsh/nameblock/LogWatch;->start()V

    .line 160
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->pollTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->pollTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopPolling()V
    .registers 3

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/dsh/nameblock/ListActivity;->polling:Z

    .line 166
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->pollHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    :cond_c
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->logWatch:Lcom/dsh/nameblock/LogWatch;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/dsh/nameblock/LogWatch;->stop()V

    :cond_13
    return-void
.end method

.method private syncPage()V
    .registers 3

    .line 1174
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u540c\u6b65\u901a\u8bdd\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    sget-object v0, Lcom/dsh/nameblock/ListActivity;->syncCache:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->showSyncRows()V

    goto :goto_18

    .line 1176
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/dsh/nameblock/ListActivity;->showList(Landroid/view/View;Ljava/util/List;)V

    .line 1178
    :goto_18
    sget-boolean v0, Lcom/dsh/nameblock/ListActivity;->syncLoading:Z

    const/4 v1, 0x1

    if-nez v0, :cond_30

    .line 1179
    sput-boolean v1, Lcom/dsh/nameblock/ListActivity;->syncLoading:Z

    .line 1180
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->setSyncRunning(Z)V

    .line 1181
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda5;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1189
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_33

    .line 1191
    :cond_30
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->setSyncRunning(Z)V

    :goto_33
    return-void
.end method

.method private tintSwitch(Landroid/widget/Switch;Z)V
    .registers 6

    const p0, 0x10100a0

    .line 716
    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {p0, v0}, [[I

    move-result-object p0

    .line 717
    new-instance v0, Landroid/content/res/ColorStateList;

    const v1, -0xcb38a7

    const v2, -0x1ab7b3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 719
    new-instance v0, Landroid/content/res/ColorStateList;

    const v1, -0x992276

    const v2, -0x4b4b44

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 721
    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private typeGlyph(I)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_19

    const/4 p0, 0x3

    const-string v0, "\u2298"

    if-eq p1, p0, :cond_18

    const/4 p0, 0x5

    if-eq p1, p0, :cond_18

    const/4 p0, 0x6

    if-eq p1, p0, :cond_18

    const/16 p0, 0x32

    if-lt p1, p0, :cond_16

    goto :goto_18

    :cond_16
    const-string v0, "\u00b7"

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    const-string p0, "\u2197"

    return-object p0

    :cond_1c
    const-string p0, "\u2199"

    return-object p0
.end method

.method private typeLabel(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_20

    const/16 p0, 0x32

    if-lt p1, p0, :cond_1c

    const-string p0, "\u62e6\u622a"

    goto :goto_1e

    :pswitch_a
    const-string p0, "\u5df2\u62e6\u622a"

    return-object p0

    :pswitch_d
    const-string p0, "\u62d2\u63a5"

    return-object p0

    :pswitch_10
    const-string p0, "\u8bed\u97f3\u4fe1\u7bb1"

    return-object p0

    :pswitch_13
    const-string p0, "\u672a\u63a5"

    return-object p0

    :pswitch_16
    const-string p0, "\u547c\u51fa"

    return-object p0

    :pswitch_19
    const-string p0, "\u547c\u5165"

    return-object p0

    :cond_1c
    const-string p0, "\u901a\u8bdd"

    :goto_1e
    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private whitePage()V
    .registers 11

    .line 1061
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v1}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767d\u540d\u5355\uff08"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff09"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u767d\u540d\u5355\u91cc\u7684\u53f7\u7801\u6c38\u8fdc\u653e\u884c\u3002\u901a\u8baf\u5f55\u8054\u7cfb\u4eba\u3001\u4f60\u62e8\u51fa\u8fc7\u7684\u53f7\u7801\u4e5f\u4f1a\u81ea\u52a8\u653e\u884c\u3002"

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1064
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4ece\u901a\u8baf\u5f55 / \u901a\u8bdd\u8bb0\u5f55\u6dfb\u52a0"

    .line 1065
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda34;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1069
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u53f7\u7801\uff0c\u5982 13800138000"

    .line 1070
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 1071
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1072
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u52a0\u5165"

    .line 1073
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0, v0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda35;-><init>(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/dsh/nameblock/ListActivity;->inputRow(Landroid/widget/EditText;Landroid/widget/Button;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1083
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v0

    .line 1084
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    const-string v2, "\u6682\u65e0"

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1085
    :cond_84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1086
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->listEntry(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1088
    iget-object v3, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    const-string v5, "\u25cf"

    const/4 v4, 0x0

    aget-object v6, v2, v4

    const/4 v7, 0x1

    aget-object v7, v2, v7

    const-string v8, ""

    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, v1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda36;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    const-string v1, "\u2715"

    .line 1089
    invoke-direct {p0, v1, v4, v2}, Lcom/dsh/nameblock/ListActivity;->actionText(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v9

    move-object v4, p0

    .line 1088
    invoke-direct/range {v4 .. v9}, Lcom/dsh/nameblock/ListActivity;->callRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_88

    :cond_b8
    return-void
.end method

.method private whiteSwitch(Ljava/lang/String;)Landroid/view/View;
    .registers 7

    .line 726
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p1}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    .line 727
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 728
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 729
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 731
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 732
    invoke-direct {p0, v3, v0}, Lcom/dsh/nameblock/ListActivity;->tintSwitch(Landroid/widget/Switch;Z)V

    .line 733
    new-instance v4, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 738
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 740
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_31

    const-string v3, "\u5df2\u653e\u884c"

    goto :goto_33

    :cond_31
    const-string v3, "\u5df2\u62e6\u622a"

    .line 741
    :goto_33
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 742
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v0, :cond_41

    const v0, -0xcb38a7

    goto :goto_44

    :cond_41
    const v0, -0x1ab7b3

    .line 743
    :goto_44
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x6

    .line 744
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p0

    invoke-virtual {p1, p0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 745
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object p1

    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    .line 63
    invoke-virtual {p0}, Lcom/dsh/nameblock/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "kw"

    if-nez p1, :cond_13

    move-object p1, v0

    goto :goto_1d

    :cond_13
    invoke-virtual {p0}, Lcom/dsh/nameblock/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "kind"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1d
    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity;->kind:Ljava/lang/String;

    if-nez p1, :cond_23

    .line 64
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->kind:Ljava/lang/String;

    .line 65
    :cond_23
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->buildUi()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/ListActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/ListActivity;->setIntent(Landroid/content/Intent;)V

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_10

    :cond_a
    const-string v0, "kind"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_10
    if-eqz p1, :cond_1a

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity;->kind:Ljava/lang/String;

    .line 74
    :cond_1a
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->invalidateCaches()V

    .line 75
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 213
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->stopPolling()V

    .line 214
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 216
    :try_start_a
    invoke-virtual {p0, v0}, Lcom/dsh/nameblock/ListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_d

    :catchall_d
    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    :cond_10
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 204
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->invalidateCaches()V

    .line 205
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->registerDataReceiver()V

    .line 206
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    .line 207
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->startPolling()V

    return-void
.end method
