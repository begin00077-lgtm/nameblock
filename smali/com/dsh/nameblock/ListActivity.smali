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
.method public static synthetic $r8$lambda$-3ZGBhFkrZsGVDA0MmaNBnlZNPU(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$syncPage$22(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-wHEX6x08GToHQ6JxQphK-2NKgg(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$numbersPage$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1P-RCaARWXHFhY4fie96McZfMZE(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$whiteSwitch$3(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$2A9yYWrftVHsgF9bgucXHd2LVuI(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$pickCallLog$15(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$5I6xqa0iUAGLTO4-LWCx02kwrgQ(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$logsPage$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6lEQEzyH8nL-4Z2GDNCubilAgSM(Lcom/dsh/nameblock/ListActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$pickCallLog$16(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$70gUcx-9Kbb0U3laJCmug3Pv1hA(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$numbersPage$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ek1wbxyuZA19qhdaW1TUjCZroY(Lcom/dsh/nameblock/ListActivity;Ljava/util/Map;ZLjava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$pickContact$13(Ljava/util/Map;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9kUVuiKvEW0JCM7nyUzDuwNYWMI(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$diagPage$31(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DuERLHtZZOgbdNffLleVqJxSWEA(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$keywordsPage$5(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GRSDku_KAPm53jJ63Roiwgg3dTs(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$buildUi$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H1hDxV8z_SrY0ew6GWKEpbWtoHU(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$diagPage$30(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HokvGvOasFAedugIL2qNLmPM2A8(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$keywordsPage$4(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KkQWhY78JX8r9OLg0w0WFvabglI(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$logsPage$21(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U1ram1ZG1OWAV57r-bYZ-SegWSk(Lcom/dsh/nameblock/ListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->lambda$syncPage$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$V1r2DVXVEOkzSiXZ9xUZJ9WrMtE(Lcom/dsh/nameblock/ListActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$confirmClearBlacklist$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZB8XDaJBemUHoVqARgq--fDYKMs(Lcom/dsh/nameblock/ListActivity;Ljava/util/Map;ZLjava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$pickCallLog$14(Ljava/util/Map;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZGlMAM6B7cjdFCiv_z0-eHUKqGE(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$whitePage$19(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cAWGBeoNs3SKDH25TgajhU9mFzw(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;ZLandroid/content/DialogInterface;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dsh/nameblock/ListActivity;->lambda$manualAddDialog$11(Landroid/widget/EditText;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gRtqqw9IJZ9vMZDXIyz4q4yMd4U(Lcom/dsh/nameblock/ListActivity;Lcom/dsh/nameblock/CharPickerView;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$showCharPicker$28(Lcom/dsh/nameblock/CharPickerView;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n3kOGxLHf54bv8T4Rv5NQxe_qD4(Lcom/dsh/nameblock/ListActivity;Landroid/widget/RadioGroup;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$modePage$29(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ownQxIoJtIAXCv33u_8d3fABQXw(Lcom/dsh/nameblock/ListActivity;ZLandroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/dsh/nameblock/ListActivity;->lambda$addNumberDialog$10(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sGbj3dNecd_-VGP64d0Gtk8tcrA(Lcom/dsh/nameblock/ListActivity;Lcom/dsh/nameblock/Scanner$CallEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$showSyncRows$24(Lcom/dsh/nameblock/Scanner$CallEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vvWVXqiLS0QFVulhQZ7AyGlk9_I(Lcom/dsh/nameblock/ListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->lambda$registerDataReceiver$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xlrccV5TKuLiY9NYutoD7Es13xA(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$numbersPage$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yipZiMfRm5lm9_jPqFhpNiMP-wA(Lcom/dsh/nameblock/ListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$whitePage$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ymXxk6XdBgX0JVd3cf_WiXnBGdU(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$whitePage$18(Landroid/widget/EditText;Landroid/view/View;)V

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

    .line 361
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

    .line 493
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

    .line 653
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 654
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 655
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x6

    if-eqz p2, :cond_50

    const/high16 p2, 0x7f010000

    .line 657
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, 0x1a34c759

    .line 659
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0xe

    .line 660
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x1

    .line 661
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    const v3, 0x5534c759

    invoke-virtual {p2, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 662
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 663
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
    const p2, 0x7f010005

    .line 665
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0xc

    .line 666
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

    .line 668
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

    .line 926
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

    .line 927
    invoke-static {v2}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 928
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_6

    :cond_1d
    if-eqz p3, :cond_25

    .line 930
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v2, v3}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    goto :goto_41

    .line 932
    :cond_25
    iget-object v4, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v4, v3}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v4, v3}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 933
    :cond_32
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 934
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

    .line 939
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u52a0\u5165\u767d\u540d\u5355\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6d

    .line 940
    :cond_5c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u52a0\u5165\u9ed1\u540d\u5355\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 939
    :goto_6d
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 940
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 941
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    :cond_77
    return-void
.end method

.method private addNumberDialog()V
    .registers 2

    const/4 v0, 0x0

    .line 795
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->addNumberDialog(Z)V

    return-void
.end method

.method private addNumberDialog(Z)V
    .registers 6

    .line 799
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_a

    const-string v1, "\u6dfb\u52a0\u53f7\u7801\u5230\u767d\u540d\u5355"

    goto :goto_c

    :cond_a
    const-string v1, "\u6dfb\u52a0\u53f7\u7801\u5230\u9ed1\u540d\u5355"

    .line 800
    :goto_c
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4ece\u901a\u8baf\u5f55\u9009\u62e9"

    const-string v2, "\u4ece\u901a\u8bdd\u8bb0\u5f55\u9009\u62e9"

    const-string v3, "\u624b\u52a8\u8f93\u5165\u53f7\u7801"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda12;-><init>(Lcom/dsh/nameblock/ListActivity;Z)V

    .line 801
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u53d6\u6d88"

    const/4 v0, 0x0

    .line 806
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 807
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private addToList(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 945
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 946
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    if-eqz p3, :cond_29

    .line 948
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    .line 949
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

    .line 951
    :cond_29
    iget-object p3, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p3, p1}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_36

    iget-object p3, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p3, p1}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 952
    :cond_36
    iget-object p3, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p3, p1, p2}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u52a0\u5165\u9ed1\u540d\u5355\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 955
    :goto_50
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private bindRow(Lcom/dsh/nameblock/ListActivity$Holder;Lcom/dsh/nameblock/ListActivity$RowData;)V
    .registers 10

    .line 1349
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

    .line 1350
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->glyph:Landroid/widget/TextView;

    const-string v1, "\u25cf"

    iget-object v3, p2, Lcom/dsh/nameblock/ListActivity$RowData;->glyph:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, -0xcb38a7

    const v4, 0x7f010005

    if-eqz v1, :cond_23

    move v1, v3

    goto :goto_27

    :cond_23
    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v1

    :goto_27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1351
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->sub:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->sub:Ljava/lang/String;

    if-nez v1, :cond_39

    move-object v1, v2

    goto :goto_3b

    :cond_39
    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->sub:Ljava/lang/String;

    :goto_3b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->time:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;

    if-nez v1, :cond_46

    move-object v1, v2

    goto :goto_48

    :cond_46
    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;

    :goto_48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v0, p2, Lcom/dsh/nameblock/ListActivity$RowData;->toggleOn:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v0, :cond_96

    .line 1356
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1357
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1358
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1359
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1360
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    iget-object v1, p2, Lcom/dsh/nameblock/ListActivity$RowData;->toggleOn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dsh/nameblock/ListActivity;->tintSwitch(Landroid/widget/Switch;Z)V

    .line 1361
    iget-object p0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggleLabel:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/dsh/nameblock/ListActivity$RowData;->toggleLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    iget-object p0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggleLabel:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/dsh/nameblock/ListActivity$RowData;->toggleOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_84

    goto :goto_87

    :cond_84
    const v3, -0x1ab7b3

    :goto_87
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1364
    iget-object p0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    new-instance p1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda30;

    invoke-direct {p1, p2}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda30;-><init>(Lcom/dsh/nameblock/ListActivity$RowData;)V

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_12c

    .line 1368
    :cond_96
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1369
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->toggleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1370
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1371
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    if-nez v3, :cond_ac

    goto :goto_ae

    :cond_ac
    iget-object v2, p2, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    :goto_ae
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    iget-boolean v0, p2, Lcom/dsh/nameblock/ListActivity$RowData;->actionPill:Z

    const/4 v2, 0x6

    if-eqz v0, :cond_fc

    .line 1373
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    const/high16 v1, 0x7f010000

    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1374
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, 0x1a34c759

    .line 1376
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0xe

    .line 1377
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, 0x1

    .line 1378
    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    const v4, 0x5534c759

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1379
    iget-object v3, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1380
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p0

    invoke-virtual {v0, v3, v4, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_122

    .line 1382
    :cond_fc
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1383
    iget-object v0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1384
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

    .line 1387
    :goto_122
    iget-object p0, p1, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    new-instance p1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda31;

    invoke-direct {p1, p2}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda31;-><init>(Lcom/dsh/nameblock/ListActivity$RowData;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_12c
    return-void
.end method

.method private buildRowView()Landroid/view/View;
    .registers 15

    .line 1267
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1268
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1270
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 1271
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    .line 1272
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v4, 0xa

    .line 1273
    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1275
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41700000    # 15.0f

    .line 1276
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const v5, 0x7f010005

    .line 1277
    invoke-virtual {p0, v5}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    .line 1278
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1279
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x18

    invoke-direct {p0, v7}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1280
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1282
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1283
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1284
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41800000    # 16.0f

    .line 1287
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const v9, 0x7f010004

    .line 1288
    invoke-virtual {p0, v9}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1289
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1291
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x41400000    # 12.0f

    .line 1292
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1293
    invoke-virtual {p0, v5}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1294
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1295
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1297
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1298
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v11, 0x800015

    .line 1299
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1300
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x7a

    invoke-direct {p0, v13}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v13

    invoke-direct {v12, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v12, 0x41300000    # 11.0f

    .line 1303
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1304
    invoke-virtual {p0, v5}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x800005

    .line 1305
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1306
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1307
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1309
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1310
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1311
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1313
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1314
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1315
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1317
    new-instance v12, Landroid/widget/Switch;

    invoke-direct {v12, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1318
    invoke-direct {p0, v12, v3}, Lcom/dsh/nameblock/ListActivity;->tintSwitch(Landroid/widget/Switch;Z)V

    .line 1319
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1321
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1322
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v10, 0x6

    .line 1323
    invoke-direct {p0, v10}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v10

    invoke-virtual {v13, v10, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1324
    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1326
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1327
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1328
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1330
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1331
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    .line 1332
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    invoke-direct {v3, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1331
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f010002

    .line 1333
    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1334
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1336
    new-instance p0, Lcom/dsh/nameblock/ListActivity$Holder;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity$Holder;-><init>(Lcom/dsh/nameblock/ListActivity$Holder-IA;)V

    .line 1337
    iput-object v4, p0, Lcom/dsh/nameblock/ListActivity$Holder;->glyph:Landroid/widget/TextView;

    .line 1338
    iput-object v7, p0, Lcom/dsh/nameblock/ListActivity$Holder;->title:Landroid/widget/TextView;

    .line 1339
    iput-object v9, p0, Lcom/dsh/nameblock/ListActivity$Holder;->sub:Landroid/widget/TextView;

    .line 1340
    iput-object v8, p0, Lcom/dsh/nameblock/ListActivity$Holder;->time:Landroid/widget/TextView;

    .line 1341
    iput-object v11, p0, Lcom/dsh/nameblock/ListActivity$Holder;->action:Landroid/widget/TextView;

    .line 1342
    iput-object v12, p0, Lcom/dsh/nameblock/ListActivity$Holder;->toggle:Landroid/widget/Switch;

    .line 1343
    iput-object v13, p0, Lcom/dsh/nameblock/ListActivity$Holder;->toggleLabel:Landroid/widget/TextView;

    .line 1344
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private buildUi()Landroid/view/View;
    .registers 11

    const/16 v0, 0x10

    .line 211
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    .line 212
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 213
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 215
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    .line 217
    invoke-virtual {v4, v1, v1, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 219
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u2039 \u8fd4\u56de"

    .line 220
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 221
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0xa

    .line 222
    invoke-direct {p0, v7}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v8

    invoke-virtual {v6, v5, v5, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 223
    new-instance v8, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda6;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 230
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    const/high16 v8, 0x41b00000    # 22.0f

    .line 231
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 232
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v8, 0x0

    const v9, 0x1010079

    invoke-direct {v0, p0, v8, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    .line 236
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x12

    invoke-direct {p0, v8}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v8

    invoke-direct {v0, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    invoke-direct {p0, v7}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 238
    iget-object v7, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    const/high16 v8, 0x41400000    # 12.0f

    .line 243
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 244
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    const v8, -0xcb38a7

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v8

    invoke-virtual {v0, v8, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 246
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    .line 253
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    invoke-direct {v4, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->scroll:Landroid/widget/ScrollView;

    .line 257
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    .line 258
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 259
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v5, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 260
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->scroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method private callLogName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 590
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

    .line 419
    iget-object v5, v0, Lcom/dsh/nameblock/ListActivity;->callLogNameCache:Ljava/util/Map;

    if-eqz v5, :cond_11

    iget-object v0, v0, Lcom/dsh/nameblock/ListActivity;->callLogNameCache:Ljava/util/Map;

    return-object v0

    .line 420
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 421
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 422
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 423
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 424
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 425
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
    .catchall {:try_start_2f .. :try_end_43} :catchall_155

    .line 430
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

    .line 436
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

    goto/16 :goto_156

    :cond_6f
    :goto_6f
    if-eqz v12, :cond_14f

    .line 440
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 441
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 442
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 443
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_81
    move/from16 v14, v20

    .line 445
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_87
    .catchall {:try_start_59 .. :try_end_87} :catchall_6c

    if-eqz v15, :cond_14f

    add-int/lit8 v20, v14, 0x1

    const/16 v15, 0x1770

    if-ge v14, v15, :cond_14f

    const-string v14, ""

    if-ltz v4, :cond_9c

    .line 446
    :try_start_93
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_9d

    :cond_9c
    move-object v15, v14

    .line 447
    :goto_9d
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_a7

    :cond_a3
    :goto_a3
    move/from16 v16, v1

    goto/16 :goto_14b

    :cond_a7
    if-ltz v1, :cond_c6

    .line 448
    invoke-interface {v8, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c6

    .line 449
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_c6

    .line 450
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_c6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_c6
    invoke-interface {v9, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    if-ltz v2, :cond_d3

    .line 453
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_d4

    :cond_d3
    const/4 v13, 0x0

    :goto_d4
    if-nez v13, :cond_d7

    move-object v13, v14

    .line 455
    :cond_d7
    invoke-interface {v9, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_da
    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f5

    if-ltz v2, :cond_f5

    .line 458
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_f5

    .line 459
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_f5

    invoke-interface {v10, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f5
    if-ltz v3, :cond_114

    .line 461
    invoke-interface {v11, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_114

    .line 462
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_114

    .line 463
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_114

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_114
    invoke-interface {v7, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11b

    goto :goto_a3

    .line 466
    :cond_11b
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ltz v2, :cond_a3

    .line 468
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a3

    const-string v14, "\"isCustomMark\":true"

    .line 469
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a3

    const-string v14, "\"phoneFlag\":\""

    .line 470
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_a3

    add-int/lit8 v14, v14, 0xd

    move/from16 v16, v1

    const/16 v1, 0x22

    .line 473
    invoke-virtual {v13, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-le v1, v14, :cond_14b

    .line 474
    invoke-virtual {v13, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14b
    .catchall {:try_start_93 .. :try_end_14b} :catchall_6c

    :cond_14b
    :goto_14b
    move/from16 v1, v16

    goto/16 :goto_81

    :cond_14f
    if-eqz v12, :cond_15b

    .line 482
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_15b

    :catchall_155
    const/4 v13, 0x0

    :goto_156
    if-eqz v13, :cond_15b

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 484
    :cond_15b
    :goto_15b
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

    const-string v2, "perf"

    invoke-static {v0, v2, v1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iput-object v7, v0, Lcom/dsh/nameblock/ListActivity;->callLogNameCache:Ljava/util/Map;

    .line 486
    iput-object v8, v0, Lcom/dsh/nameblock/ListActivity;->locationCache:Ljava/util/Map;

    .line 487
    iput-object v9, v0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    .line 488
    iput-object v10, v0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

    .line 489
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

    .line 288
    invoke-direct/range {v0 .. v5}, Lcom/dsh/nameblock/ListActivity;->callRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private callRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .registers 14

    .line 293
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 294
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 296
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 297
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    .line 298
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v4, 0xa

    .line 299
    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v4, 0x7f010005

    const/4 v5, -0x2

    if-eqz p1, :cond_60

    .line 302
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 304
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v7, "\u25cf"

    .line 305
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const p1, -0xcb38a7

    goto :goto_47

    :cond_43
    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p1

    :goto_47
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 306
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 307
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x18

    invoke-direct {p0, v7}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v7

    invoke-direct {p1, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    :cond_60
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 312
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 313
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 317
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, 0x7f010004

    .line 318
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, ""

    if-nez p3, :cond_96

    move-object p3, v3

    .line 322
    :cond_96
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p3, 0x41400000    # 12.0f

    .line 323
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 324
    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p2, 0x800015

    .line 330
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 331
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p3, 0x7a

    invoke-direct {p0, p3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p3

    invoke-direct {p2, p3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-nez p4, :cond_cf

    move-object p4, v3

    .line 334
    :cond_cf
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p3, 0x41300000    # 11.0f

    .line 335
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 336
    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p3, 0x800005

    .line 337
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 338
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 339
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p5, :cond_100

    .line 342
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p4, 0x4

    .line 344
    invoke-direct {p0, p4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p4

    iput p4, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 345
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 346
    invoke-virtual {p5, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    :cond_100
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p4

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f010002

    .line 354
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 355
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

    .line 370
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p0

    :cond_10
    const-string v0, "[0-9+\\-\\s]+"

    .line 372
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object p0

    :cond_19
    const-string v0, ".*(\u79fb\u52a8|\u8054\u901a|\u7535\u4fe1|\u5e7f\u7535|\u94c1\u901a)$"

    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_2a

    return-object p0

    .line 374
    :cond_2a
    sget-object v0, Lcom/dsh/nameblock/ListActivity;->UI_LABELS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_3c

    aget-object v3, v0, v2

    .line 375
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    return-object p0

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3c
    const-string v0, "\u4fe1\u7bb1"

    .line 377
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

    .line 378
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

    .line 782
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 783
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6e05\u7a7a\u9ed1\u540d\u5355"

    .line 784
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

    .line 785
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda8;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    const-string p0, "\u786e\u8ba4\u6e05\u7a7a"

    .line 786
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 790
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 791
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

    .line 523
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->contactNameCache:Ljava/util/Map;

    if-eqz v2, :cond_b

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->contactNameCache:Ljava/util/Map;

    return-object p0

    .line 524
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 525
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 526
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 527
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 528
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 529
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

    .line 535
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

    .line 542
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

    .line 547
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 548
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 550
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

    .line 551
    :try_start_69
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_73

    :cond_72
    move-object v8, v5

    .line 552
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

    .line 553
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_86
    if-eqz v5, :cond_99

    .line 554
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

    .line 559
    :goto_a0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 561
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

    .line 562
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

    .line 385
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->customMarked:Ljava/util/Set;

    if-eqz v2, :cond_b

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->customMarked:Ljava/util/Set;

    return-object p0

    .line 386
    :cond_b
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 389
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

    .line 393
    :try_start_2a
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 394
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 396
    :goto_32
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    add-int/lit8 v5, v10, 0x1

    const/16 v6, 0x3e8

    if-ge v10, v6, :cond_5f

    if-ltz v0, :cond_45

    .line 397
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_46

    :cond_45
    move-object v6, v3

    :goto_46
    if-eqz v6, :cond_5b

    const-string v7, "\"isCustomMark\":true"

    .line 398
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 399
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

    .line 405
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6a

    :catchall_65
    :goto_65
    if-eqz v3, :cond_6a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_6a
    :goto_6a
    iput-object v2, p0, Lcom/dsh/nameblock/ListActivity;->customMarked:Ljava/util/Set;

    return-object v2
.end method

.method private diagPage()V
    .registers 7

    .line 1473
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u8bca\u65ad\u65e5\u5fd7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1474
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5237\u65b0"

    .line 1475
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1476
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda15;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1477
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1479
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e05\u7a7a"

    .line 1480
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1481
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda16;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1485
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1487
    invoke-static {p0}, Lcom/dsh/nameblock/Diag;->read(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1488
    array-length v1, v0

    add-int/lit16 v1, v1, -0x12c

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1489
    :goto_47
    array-length v3, v0

    if-ge v1, v3, :cond_76

    .line 1490
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_73

    .line 1491
    :cond_53
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1492
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 1493
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x2

    .line 1494
    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v2, v5, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1495
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

    .line 568
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 569
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->contactNames()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 570
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    return-object v0

    .line 571
    :cond_17
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->cachedNameCache:Ljava/util/Map;

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    .line 572
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

    .line 575
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->looksLikeCompany(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    return-object v0

    .line 576
    :cond_35
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 577
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->looksLikeCompany(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    return-object v0

    .line 580
    :cond_4e
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

    if-nez v0, :cond_55

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    .line 581
    :cond_55
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_5d

    move-object p1, v1

    goto :goto_65

    :cond_5d
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_65
    if-eqz p1, :cond_78

    .line 582
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    .line 583
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->flagOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_78

    return-object p0

    :cond_78
    return-object v1
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

    .line 1562
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

    .line 596
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_e

    return-object p0

    :cond_e
    add-int/lit8 v0, v0, 0xd

    const/16 v1, 0x22

    .line 599
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-le v1, v0, :cond_20

    .line 600
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_20
    return-object p0
.end method

.method private hint(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 4

    .line 1502
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1503
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 1504
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x7f010005

    .line 1505
    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x6

    .line 1506
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

    .line 1511
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 1512
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1513
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1514
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1515
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private invalidateCaches()V
    .registers 2

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->callLogNameCache:Ljava/util/Map;

    .line 158
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->locationCache:Ljava/util/Map;

    .line 159
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    .line 160
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->contactNameCache:Ljava/util/Map;

    .line 161
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->customMarked:Ljava/util/Set;

    return-void
.end method

.method private keywordTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 605
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    .line 606
    :cond_7
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_f

    move-object p1, v1

    goto :goto_1b

    :cond_f
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_1b
    if-eqz p1, :cond_36

    .line 607
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_36

    .line 608
    :cond_24
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    return-object v0

    .line 610
    :cond_31
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->flagOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    :goto_36
    return-object v1
.end method

.method private keywordsPage()V
    .registers 6

    .line 706
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u540d\u79f0\u5173\u952e\u8bcd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u6765\u7535\u754c\u9762\u4e0a\u7684\u540d\u79f0\uff08\u6216\u53f7\u7801\uff09\u5305\u542b\u8fd9\u4e9b\u8bcd\u65f6\uff0c\u81ea\u52a8\u6302\u65ad\u3002\u6ce8\u610f\u4e0d\u8981\u7528\u592a\u77ed\u7684\u8bcd\uff0c\u5bb9\u6613\u8bef\u4f24\u3002"

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 710
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4f8b\u5982\uff1a\u4f20\u5a92 / \u6559\u80b2 / \u57f9\u8bad"

    .line 711
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 712
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 713
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6dfb\u52a0"

    .line 714
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 715
    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda13;-><init>(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/dsh/nameblock/ListActivity;->inputRow(Landroid/widget/EditText;Landroid/widget/Button;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 724
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->keywords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 725
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda14;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    const-string v4, "\u2715"

    invoke-direct {p0, v1, v4, v3}, Lcom/dsh/nameblock/ListActivity;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_45

    :cond_62
    return-void
.end method

.method static synthetic lambda$actionText$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 668
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$addNumberDialog$10(ZLandroid/content/DialogInterface;I)V
    .registers 4

    if-nez p3, :cond_6

    .line 802
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->manualAddDialog(Z)V

    goto :goto_10

    :cond_6
    const/4 p2, 0x1

    if-ne p3, p2, :cond_d

    .line 803
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->pickContact(Z)V

    goto :goto_10

    .line 804
    :cond_d
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->pickCallLog(Z)V

    :goto_10
    return-void
.end method

.method static synthetic lambda$bindRow$25(Lcom/dsh/nameblock/ListActivity$RowData;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1365
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity$RowData;->toggle:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$RowData;->toggle:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method static synthetic lambda$bindRow$26(Lcom/dsh/nameblock/ListActivity$RowData;Landroid/view/View;)V
    .registers 2

    .line 1388
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity$RowData;->action:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$RowData;->action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$buildUi$1(Landroid/view/View;)V
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/dsh/nameblock/ListActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$confirmClearBlacklist$9(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 787
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

    .line 788
    :cond_1f
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$diagPage$30(Landroid/view/View;)V
    .registers 2

    .line 1476
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$diagPage$31(Landroid/view/View;)V
    .registers 2

    .line 1482
    invoke-static {p0}, Lcom/dsh/nameblock/Diag;->clear(Landroid/content/Context;)V

    .line 1483
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$keywordsPage$4(Landroid/widget/EditText;Landroid/view/View;)V
    .registers 4

    .line 716
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 717
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 718
    :cond_13
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p2}, Lcom/dsh/nameblock/Store;->addKeyword(Ljava/lang/String;)V

    const-string p2, ""

    .line 719
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 720
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$keywordsPage$5(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 726
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->removeKeyword(Ljava/lang/String;)V

    .line 727
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$logsPage$20(Landroid/view/View;)V
    .registers 2

    .line 1003
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p1}, Lcom/dsh/nameblock/Store;->clearLogs()V

    .line 1004
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$logsPage$21(Ljava/lang/String;)V
    .registers 5

    .line 1052
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p1}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1054
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->keywordTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v1, p1}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 1056
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v0, "\u624b\u52a8\u6dfb\u52a0"

    :cond_1b
    invoke-virtual {v1, p1, v0}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 1058
    :cond_1f
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p1}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    .line 1060
    :goto_24
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$manualAddDialog$11(Landroid/widget/EditText;ZLandroid/content/DialogInterface;I)V
    .registers 5

    .line 818
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 819
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_17

    const-string p3, "\u624b\u52a8\u6dfb\u52a0"

    invoke-direct {p0, p1, p3, p2}, Lcom/dsh/nameblock/ListActivity;->addToList(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$modePage$29(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 1467
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

.method private synthetic lambda$numbersPage$6(Landroid/view/View;)V
    .registers 2

    .line 746
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->addNumberDialog()V

    return-void
.end method

.method private synthetic lambda$numbersPage$7(Landroid/view/View;)V
    .registers 2

    .line 751
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->confirmClearBlacklist()V

    return-void
.end method

.method private synthetic lambda$numbersPage$8(Ljava/lang/String;)V
    .registers 3

    .line 773
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p1}, Lcom/dsh/nameblock/Store;->removeNumber(Ljava/lang/String;)V

    .line 774
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$pickCallLog$14(Ljava/util/Map;ZLjava/util/List;)V
    .registers 5

    if-eqz p3, :cond_c

    .line 917
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_c

    .line 918
    :cond_9
    invoke-direct {p0, p3, p1, p2}, Lcom/dsh/nameblock/ListActivity;->addMany(Ljava/util/List;Ljava/util/Map;Z)V

    :cond_c
    :goto_c
    return-void
.end method

.method private synthetic lambda$pickCallLog$15(Ljava/util/List;Z)V
    .registers 10

    .line 905
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "\u901a\u8bdd\u8bb0\u5f55\u662f\u7a7a\u7684"

    const/4 p2, 0x0

    .line 906
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 909
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 910
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 911
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dsh/nameblock/Scanner$CallEntry;

    .line 912
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

    .line 913
    :goto_3c
    new-instance v4, Lcom/dsh/nameblock/PickerDialog$Item;

    iget-object v5, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lcom/dsh/nameblock/PickerDialog$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
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

    .line 916
    new-instance v5, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda17;

    invoke-direct {v5, p0, v0, p2}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda17;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/Map;Z)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/dsh/nameblock/PickerDialog;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZZLcom/dsh/nameblock/PickerDialog$Callback;)V

    return-void
.end method

.method private synthetic lambda$pickCallLog$16(Z)V
    .registers 4

    const/16 v0, 0x12c

    .line 903
    invoke-static {p0, v0}, Lcom/dsh/nameblock/Scanner;->recentCalls(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 904
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, v0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;Z)V

    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/ListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$pickContact$12(Ljava/util/Map;Lcom/dsh/nameblock/PickerDialog$Item;Lcom/dsh/nameblock/PickerDialog$Item;)I
    .registers 5

    .line 889
    iget-object v0, p1, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 890
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

    .line 891
    :cond_18
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_27

    .line 892
    :cond_1f
    iget-object p0, p1, Lcom/dsh/nameblock/PickerDialog$Item;->title:Ljava/lang/String;

    iget-object p1, p2, Lcom/dsh/nameblock/PickerDialog$Item;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    :goto_27
    return p0
.end method

.method private synthetic lambda$pickContact$13(Ljava/util/Map;ZLjava/util/List;)V
    .registers 5

    if-eqz p3, :cond_c

    .line 895
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_c

    .line 896
    :cond_9
    invoke-direct {p0, p3, p1, p2}, Lcom/dsh/nameblock/ListActivity;->addMany(Ljava/util/List;Ljava/util/Map;Z)V

    :cond_c
    :goto_c
    return-void
.end method

.method private synthetic lambda$registerDataReceiver$0()V
    .registers 7

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 171
    iget-wide v2, p0, Lcom/dsh/nameblock/ListActivity;->lastDataRefresh:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    return-void

    .line 172
    :cond_f
    iput-wide v0, p0, Lcom/dsh/nameblock/ListActivity;->lastDataRefresh:J

    .line 173
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->invalidateCaches()V

    .line 174
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method static synthetic lambda$showCharPicker$27(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u952e\u8bcd\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$showCharPicker$28(Lcom/dsh/nameblock/CharPickerView;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1438
    invoke-virtual {p1}, Lcom/dsh/nameblock/CharPickerView;->getKeyword()Ljava/lang/String;

    move-result-object p1

    .line 1439
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    return-void

    :cond_b
    const/4 p2, 0x0

    .line 1440
    sput-object p2, Lcom/dsh/nameblock/ListActivity;->syncCache:Ljava/util/List;

    .line 1441
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->addKeyword(Ljava/lang/String;)V

    .line 1442
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

    .line 1443
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$showSyncRows$24(Lcom/dsh/nameblock/Scanner$CallEntry;)V
    .registers 2

    .line 1137
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->showCharPicker(Lcom/dsh/nameblock/Scanner$CallEntry;)V

    return-void
.end method

.method private synthetic lambda$syncPage$22(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    .line 1078
    sput-boolean v0, Lcom/dsh/nameblock/ListActivity;->syncLoading:Z

    .line 1079
    sput-object p1, Lcom/dsh/nameblock/ListActivity;->syncCache:Ljava/util/List;

    .line 1080
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->setSyncRunning(Z)V

    const-string p1, "sync"

    .line 1081
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->showSyncRows()V

    :cond_15
    return-void
.end method

.method private synthetic lambda$syncPage$23()V
    .registers 3

    .line 1076
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->loadSyncRows()Ljava/util/List;

    move-result-object v0

    .line 1077
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda20;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/ListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$whitePage$17(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 963
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->addNumberDialog(Z)V

    return-void
.end method

.method private synthetic lambda$whitePage$18(Landroid/widget/EditText;Landroid/view/View;)V
    .registers 4

    .line 972
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 973
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 974
    :cond_13
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p2}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    const-string p2, ""

    .line 975
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 976
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$whitePage$19(Ljava/lang/String;)V
    .registers 3

    .line 987
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p1}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 988
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private synthetic lambda$whiteSwitch$3(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .registers 4

    if-eqz p3, :cond_8

    .line 691
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    goto :goto_d

    .line 692
    :cond_8
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p2, p1}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 693
    :goto_d
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    return-void
.end method

.method private listEntry(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 614
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->displayNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->locationOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->keywordTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_13
    const-string v2, ""

    .line 617
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    .line 619
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d

    const-string v2, " \u00b7 "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 622
    :cond_36
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 624
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_50

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    const-string v1, "\u3010"

    .line 625
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u3011"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    :goto_5d
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 628
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6a
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

    .line 1147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1149
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->contactNames()Ljava/util/Map;

    .line 1150
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    const v2, 0x7fffffff

    .line 1151
    invoke-static {p0, v2}, Lcom/dsh/nameblock/Scanner;->recentCalls(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 1152
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

    .line 1153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 1156
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

    .line 1161
    :cond_52
    :goto_52
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 1162
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1163
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

    .line 1168
    :goto_6f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1170
    :cond_72
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dsh/nameblock/Scanner$CallEntry;

    .line 1172
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

    .line 516
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->locationCache:Ljava/util/Map;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    .line 517
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
    .registers 16

    .line 994
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->logs()Ljava/util/List;

    move-result-object v0

    .line 995
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u62e6\u622a\u8bb0\u5f55\uff08"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff09"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 998
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "\u5f00\u5173\u6253\u5f00\uff1d\u653e\u884c\uff08\u7eff\u8272\uff09\uff0c\u5173\u95ed\uff1d\u62e6\u622a\uff08\u7ea2\u8272\uff09\u3002\u653e\u884c\u4f1a\u52a0\u5165\u767d\u540d\u5355\u3002"

    .line 999
    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1000
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\u6e05\u7a7a\u8bb0\u5f55"

    .line 1001
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    new-instance v4, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda10;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1006
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1008
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1009
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1011
    aget-object v6, v5, v2

    .line 1012
    invoke-direct {p0, v6}, Lcom/dsh/nameblock/ListActivity;->displayNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1014
    new-instance v8, Lcom/dsh/nameblock/ListActivity$RowData;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/dsh/nameblock/ListActivity$RowData;-><init>(Lcom/dsh/nameblock/ListActivity$RowData-IA;)V

    const-string v9, "\u2298"

    .line 1015
    iput-object v9, v8, Lcom/dsh/nameblock/ListActivity$RowData;->glyph:Ljava/lang/String;

    .line 1016
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_82

    invoke-direct {p0, v6}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_83

    :cond_82
    move-object v9, v7

    :goto_83
    iput-object v9, v8, Lcom/dsh/nameblock/ListActivity$RowData;->title:Ljava/lang/String;

    const/4 v9, 0x3

    .line 1017
    aget-object v9, v5, v9

    const-string v10, ""

    if-nez v9, :cond_8d

    goto :goto_93

    :cond_8d
    const-string v11, "^[^\\p{L}\\p{N}]+"

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1018
    :goto_93
    invoke-direct {p0, v6}, Lcom/dsh/nameblock/ListActivity;->keywordTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "\u62e6\u622a\u540d\u5355"

    .line 1021
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_b0

    .line 1022
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a9

    const-string v10, "\u9ed1\u540d\u5355\u62e6\u622a"

    goto :goto_aa

    :cond_a9
    move-object v10, v9

    .line 1023
    :goto_aa
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    :goto_ae
    xor-int/2addr v9, v2

    goto :goto_c8

    :cond_b0
    const-string v11, "\u300c"

    .line 1024
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c7

    .line 1025
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c1

    const-string v10, "\u5173\u952e\u8bcd\u62e6\u622a"

    goto :goto_c2

    :cond_c1
    move-object v10, v9

    .line 1026
    :goto_c2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    goto :goto_ae

    :cond_c7
    move v9, v12

    .line 1029
    :goto_c8
    invoke-direct {p0, v6}, Lcom/dsh/nameblock/ListActivity;->locationOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1030
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v14, " \u00b7 "

    if-nez v7, :cond_ed

    .line 1032
    invoke-direct {p0, v6}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11d

    .line 1035
    :cond_ed
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f6

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f6
    if-eqz v9, :cond_111

    .line 1037
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_103

    const-string v7, " "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_103
    const-string v7, "\u3010"

    .line 1038
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u3011"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11d

    .line 1040
    :cond_111
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_11a

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    :cond_11a
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    :cond_11d
    :goto_11d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/dsh/nameblock/ListActivity$RowData;->sub:Ljava/lang/String;

    .line 1046
    :try_start_123
    new-instance v7, Ljava/util/Date;

    aget-object v5, v5, v12

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;
    :try_end_134
    .catchall {:try_start_123 .. :try_end_134} :catchall_134

    .line 1049
    :catchall_134
    iget-object v5, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v5, v6}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v8, Lcom/dsh/nameblock/ListActivity$RowData;->toggleOn:Ljava/lang/Boolean;

    .line 1050
    iget-object v5, v8, Lcom/dsh/nameblock/ListActivity$RowData;->toggleOn:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_14b

    const-string v5, "\u5df2\u653e\u884c"

    goto :goto_14d

    :cond_14b
    const-string v5, "\u5df2\u62e6\u622a"

    :goto_14d
    iput-object v5, v8, Lcom/dsh/nameblock/ListActivity$RowData;->toggleLabel:Ljava/lang/String;

    .line 1051
    new-instance v5, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v6}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda11;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    iput-object v5, v8, Lcom/dsh/nameblock/ListActivity$RowData;->toggle:Ljava/lang/Runnable;

    .line 1062
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    .line 1064
    :cond_15b
    invoke-direct {p0, v1, v4}, Lcom/dsh/nameblock/ListActivity;->showList(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private looksLikeCompany(Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_1d

    .line 502
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1d

    .line 503
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

    .line 811
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u624b\u673a\u53f7\u6216\u5ea7\u673a\u53f7"

    .line 812
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 813
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 814
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u624b\u52a8\u6dfb\u52a0\u53f7\u7801"

    .line 815
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 816
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda5;-><init>(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;Z)V

    const-string p0, "\u6dfb\u52a0"

    .line 817
    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u53d6\u6d88"

    const/4 v0, 0x0

    .line 821
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 822
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private markOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 509
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->markCache:Ljava/util/Map;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->callLogNames()Ljava/util/Map;

    .line 510
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
    iget-object v3, p0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

    const-string v4, ""

    if-nez v3, :cond_2d

    move-object v3, v4

    goto :goto_39

    :cond_2d
    iget-object v3, p0, Lcom/dsh/nameblock/ListActivity;->nameMarkCache:Ljava/util/Map;

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

    .line 1449
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u964c\u751f\u53f7\u7801\u7b56\u7565"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u9ed8\u8ba4\u5173\u95ed\uff1a\u53ea\u6309\u540d\u79f0\u5173\u952e\u8bcd\u62e6\u622a\uff0c\u5176\u4ed6\u964c\u751f\u53f7\u7801\u6b63\u5e38\u54cd\u94c3\u3002"

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1452
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 1453
    new-instance v1, Landroid/widget/RadioButton;

    invoke-direct {v1, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5173\u95ed\uff08\u53ea\u6309\u540d\u79f0\u5173\u952e\u8bcd\uff09"

    .line 1454
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x7d1

    .line 1455
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setId(I)V

    .line 1456
    new-instance v3, Landroid/widget/RadioButton;

    invoke-direct {v3, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string v4, "\u964c\u751f\u53f7\u7801\u9759\u97f3\uff08\u4e0d\u54cd\u94c3\uff09"

    .line 1457
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x7d2

    .line 1458
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 1459
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string v6, "\u964c\u751f\u53f7\u7801\u76f4\u63a5\u62d2\u63a5"

    .line 1460
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x7d3

    .line 1461
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setId(I)V

    .line 1462
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1463
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1464
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1465
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

    .line 1466
    :cond_5c
    :goto_5c
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 1467
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda7;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1469
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private numbersPage()V
    .registers 13

    .line 733
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v0

    .line 734
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

    .line 736
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 737
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "\u540d\u79f0\u547d\u4e2d\u5173\u952e\u8bcd\u88ab\u6302\u65ad\u7684\u53f7\u7801\u4f1a\u81ea\u52a8\u52a0\u8fdb\u6765\u3002\u8fd9\u91cc\u7684\u53f7\u7801\u6765\u7535\u65f6\u5728\u54cd\u94c3\u524d\u76f4\u63a5\u62d2\u63a5\uff0c\u5373\u4f7f\u662f\u901a\u8baf\u5f55\u8054\u7cfb\u4eba\u4e5f\u4f1a\u88ab\u62d2\u63a5\uff08\u767d\u540d\u5355\u91cc\u7684\u9664\u5916\uff09\u3002"

    .line 738
    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 741
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 742
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 744
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "\u6dfb\u52a0\u53f7\u7801"

    .line 745
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 746
    new-instance v6, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;

    invoke-direct {v6, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "\u6e05\u7a7a\u9ed1\u540d\u5355"

    .line 750
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 751
    new-instance v6, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda22;

    invoke-direct {v6, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda22;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 756
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd HH:mm"

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 757
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 758
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 759
    aget-object v7, v6, v4

    .line 760
    invoke-direct {p0, v7}, Lcom/dsh/nameblock/ListActivity;->listEntry(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 761
    new-instance v9, Lcom/dsh/nameblock/ListActivity$RowData;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/dsh/nameblock/ListActivity$RowData;-><init>(Lcom/dsh/nameblock/ListActivity$RowData-IA;)V

    const-string v10, "\u2298"

    .line 762
    iput-object v10, v9, Lcom/dsh/nameblock/ListActivity$RowData;->glyph:Ljava/lang/String;

    .line 763
    aget-object v10, v8, v4

    iput-object v10, v9, Lcom/dsh/nameblock/ListActivity$RowData;->title:Ljava/lang/String;

    .line 764
    aget-object v8, v8, v2

    iput-object v8, v9, Lcom/dsh/nameblock/ListActivity$RowData;->sub:Ljava/lang/String;

    const-string v8, ""

    iput-object v8, v9, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;

    .line 765
    array-length v8, v6

    const/4 v10, 0x2

    if-le v8, v10, :cond_d0

    aget-object v8, v6, v10

    if-eqz v8, :cond_d0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d0

    .line 767
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

    .line 771
    iput-object v6, v9, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    .line 772
    new-instance v6, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda23;

    invoke-direct {v6, p0, v7}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda23;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    iput-object v6, v9, Lcom/dsh/nameblock/ListActivity$RowData;->action:Ljava/lang/Runnable;

    .line 776
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 778
    :cond_df
    invoke-direct {p0, v1, v5}, Lcom/dsh/nameblock/ListActivity;->showList(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private pickCallLog(Z)V
    .registers 4

    const-string v0, "\u6b63\u5728\u8bfb\u53d6\u901a\u8bdd\u8bb0\u5f55\u2026"

    const/4 v1, 0x0

    .line 901
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 902
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda9;-><init>(Lcom/dsh/nameblock/ListActivity;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 921
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private pickContact(Z)V
    .registers 22

    move-object/from16 v0, p0

    const-string v1, ""

    .line 826
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 827
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 828
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 829
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    .line 832
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

    .line 838
    :goto_34
    :try_start_34
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 839
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 840
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

    .line 845
    :goto_53
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 849
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

    .line 854
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "data1"

    .line 855
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "contact_id"

    .line 856
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move v12, v6

    .line 858
    :goto_7a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_14c

    add-int/lit8 v13, v12, 0x1

    const/16 v14, 0x320

    if-ge v12, v14, :cond_14c

    if-ltz v10, :cond_8d

    .line 859
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_8e

    :cond_8d
    const/4 v12, 0x0

    :goto_8e
    if-eqz v12, :cond_13e

    .line 860
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9c

    goto/16 :goto_13e

    :cond_9c
    if-ltz v9, :cond_a3

    .line 861
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_a4

    :cond_a3
    move-object v14, v1

    :goto_a4
    if-nez v14, :cond_a8

    move-object v14, v1

    goto :goto_ac

    .line 862
    :cond_a8
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 863
    :goto_ac
    invoke-static {v12}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 864
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_13e

    invoke-interface {v3, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_be

    goto/16 :goto_13e

    .line 865
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

    .line 868
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

    .line 872
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_100

    .line 873
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    move-object/from16 v18, v1

    const/16 v1, 0x41

    if-lt v6, v1, :cond_102

    const/16 v1, 0x5a

    if-gt v6, v1, :cond_102

    .line 874
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v17

    goto :goto_102

    :cond_100
    move-object/from16 v18, v1

    :cond_102
    :goto_102
    move-object/from16 v1, v17

    .line 876
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

    .line 877
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

    .line 882
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_158

    :catchall_152
    const/4 v7, 0x0

    :goto_153
    if-eqz v7, :cond_158

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 884
    :cond_158
    :goto_158
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_169

    const-string v1, "\u901a\u8baf\u5f55\u91cc\u6ca1\u6709\u53ef\u7528\u7684\u53f7\u7801"

    const/4 v2, 0x0

    .line 885
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 888
    :cond_169
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, v5}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const-string v1, "\u4ece\u901a\u8baf\u5f55\u9009\u62e9"

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 894
    new-instance v6, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;

    move/from16 v7, p1

    invoke-direct {v6, v0, v3, v7}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/Map;Z)V

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

    .line 632
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
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

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_27
    if-lez v1, :cond_50

    add-int/lit8 v2, v1, -0x4

    .line 637
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 638
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

    .line 641
    :cond_50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 643
    :cond_55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, v2, :cond_b0

    const-string p0, "0"

    .line 644
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x7

    if-eqz p0, :cond_8a

    const/4 p0, 0x4

    .line 645
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

    .line 647
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

    .line 268
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 269
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 270
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    if-eqz v0, :cond_20

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    :cond_20
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
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

    .line 280
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->diagPage()V

    goto :goto_84

    .line 277
    :pswitch_71
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->whitePage()V

    goto :goto_84

    .line 279
    :pswitch_75
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->syncPage()V

    goto :goto_84

    .line 276
    :pswitch_79
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->numbersPage()V

    goto :goto_84

    .line 278
    :pswitch_7d
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->logsPage()V

    goto :goto_84

    .line 275
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

    .line 168
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    return-void

    .line 169
    :cond_5
    new-instance v0, Lcom/dsh/nameblock/DataChangeReceiver;

    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda18;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-direct {v0, v1}, Lcom/dsh/nameblock/DataChangeReceiver;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.dsh.nameblock.DATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    :try_start_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_25

    .line 179
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/dsh/nameblock/ListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2e

    .line 181
    :cond_25
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dsh/nameblock/ListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2b

    goto :goto_2e

    :catchall_2b
    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    :goto_2e
    return-void
.end method

.method private row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 10

    .line 1520
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1521
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1522
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x8

    .line 1523
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1525
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1526
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 1527
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1528
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1529
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_bd

    .line 1532
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1533
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 1534
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "\u2715"

    .line 1535
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

    .line 1539
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1540
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, 0x1a34c759

    .line 1541
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0xe

    .line 1542
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1543
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    const v5, 0x5534c759

    invoke-virtual {p2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1544
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1545
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
    const p2, 0x7f010005

    .line 1536
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0xc

    .line 1537
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

    .line 1547
    :goto_b7
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1548
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1551
    :cond_bd
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1552
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1553
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1554
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1555
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f010002

    .line 1556
    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1557
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method private setSyncRunning(Z)V
    .registers 5

    .line 1178
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->syncSpinner:Landroid/widget/ProgressBar;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_13

    .line 1180
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1181
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2a

    .line 1183
    :cond_13
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1184
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    const-string v0, "\u2713 \u540c\u6b65\u5b8c\u6210"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    const v0, -0xcb38a7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1186
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->syncStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2a
    return-void
.end method

.method private showCharPicker(Lcom/dsh/nameblock/Scanner$CallEntry;)V
    .registers 8

    .line 1415
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1416
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1417
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v1

    .line 1418
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1420
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 1421
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v2, 0x7f010000

    .line 1422
    invoke-virtual {p0, v2}, Lcom/dsh/nameblock/ListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u5173\u952e\u8bcd\uff1a"

    .line 1423
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1426
    iget-object v5, p1, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->displayNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_pick_try_name

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_pick_go

    :cond_pick_try_name
    if-eqz v5, :cond_pick_try_tag

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_pick_go

    :cond_pick_try_tag
    iget-object v4, p1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->keywordTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_pick_go

    const-string v4, ""

    :cond_pick_go
    const-string v3, "picker"

    invoke-static {p0, v3, v4}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/dsh/nameblock/CharPickerView;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v4, v3}, Lcom/dsh/nameblock/CharPickerView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1427
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 1429
    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1430
    invoke-virtual {v2, p1}, Lcom/dsh/nameblock/CharPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1431
    new-instance p1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda25;

    invoke-direct {p1, v1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda25;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, p1}, Lcom/dsh/nameblock/CharPickerView;->setListener(Lcom/dsh/nameblock/CharPickerView$Listener;)V

    .line 1432
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1434
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u624b\u6307\u6ed1\u8fc7\u8981\u4f5c\u4e3a\u5173\u952e\u8bcd\u7684\u5b57"

    .line 1435
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1436
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, v2}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda26;-><init>(Lcom/dsh/nameblock/ListActivity;Lcom/dsh/nameblock/CharPickerView;)V

    const-string p0, "\u6dfb\u52a0"

    .line 1437
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u53d6\u6d88"

    const/4 v0, 0x0

    .line 1445
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1446
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

    .line 1216
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1217
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 1218
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1219
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    const/16 v3, 0x10

    .line 1220
    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v4, v2, v5, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    if-eqz p1, :cond_26

    .line 1221
    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1222
    :cond_26
    new-instance p1, Lcom/dsh/nameblock/ListActivity$RowAdapter;

    invoke-direct {p1, p0, p2}, Lcom/dsh/nameblock/ListActivity$RowAdapter;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1223
    iget-object p1, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1224
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->body:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showSyncRows()V
    .registers 17

    move-object/from16 v0, p0

    .line 1090
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1091
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "\u540d\u79f0\u6765\u81ea\u7cfb\u7edf\u901a\u8bdd\u8bb0\u5f55\uff08\u542b\u9ec4\u9875/\u6807\u8bb0\uff09\u3002\u624b\u6307\u6ed1\u8fc7\u540d\u5b57\u91cc\u7684\u5b57\u5373\u9009\u4e2d\uff1b\u70b9\u4e00\u4e2a\u5b57\u53ef\u5355\u72ec\u9009/\u53d6\u6d88\u3002\u300c\u5df2\u8986\u76d6\u300d\u8868\u793a\u5df2\u547d\u4e2d\u73b0\u6709\u5173\u952e\u8bcd\uff0c\u300c\u8054\u7cfb\u4eba\u300d\u6c38\u8fdc\u4e0d\u4f1a\u88ab\u62e6\u3002"

    .line 1092
    invoke-direct {v0, v3}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1096
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1097
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    sget-object v5, Lcom/dsh/nameblock/ListActivity;->syncCache:Ljava/util/List;

    if-eqz v5, :cond_125

    .line 1099
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_125

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dsh/nameblock/ListActivity$SyncRow;

    .line 1100
    iget-object v7, v6, Lcom/dsh/nameblock/ListActivity$SyncRow;->call:Lcom/dsh/nameblock/Scanner$CallEntry;

    .line 1101
    new-instance v8, Lcom/dsh/nameblock/ListActivity$RowData;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/dsh/nameblock/ListActivity$RowData;-><init>(Lcom/dsh/nameblock/ListActivity$RowData-IA;)V

    .line 1102
    iget v10, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->type:I

    invoke-direct {v0, v10}, Lcom/dsh/nameblock/ListActivity;->typeGlyph(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/dsh/nameblock/ListActivity$RowData;->glyph:Ljava/lang/String;

    .line 1103
    iget-object v10, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/dsh/nameblock/ListActivity;->displayNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1107
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_65

    .line 1108
    iget-object v11, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/dsh/nameblock/ListActivity;->keywordTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1109
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_67

    iget-object v11, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/dsh/nameblock/ListActivity;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_67

    :cond_65
    const-string v11, ""

    .line 1111
    :cond_67
    :goto_67
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_74

    .line 1112
    iget-object v13, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {v0, v13}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_75

    :cond_74
    move-object v13, v10

    :goto_75
    iput-object v13, v8, Lcom/dsh/nameblock/ListActivity$RowData;->title:Ljava/lang/String;

    .line 1113
    iget-object v13, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {v0, v13}, Lcom/dsh/nameblock/ListActivity;->locationOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1114
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v12, :cond_8d

    .line 1115
    iget-object v15, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    invoke-direct {v0, v15}, Lcom/dsh/nameblock/ListActivity;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    :cond_8d
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    const-string v9, " \u00b7 "

    if-nez v15, :cond_a1

    .line 1117
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_9e

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_9e
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    :cond_a1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_aa

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    :cond_aa
    iget v9, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->type:I

    invoke-direct {v0, v9}, Lcom/dsh/nameblock/ListActivity;->typeLabel(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    iget v9, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->count:I

    if-le v9, v2, :cond_c6

    const-string v9, " \u00b7 \u5171 "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->count:I

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " \u901a"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c6
    if-eqz v12, :cond_db

    .line 1123
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_db

    const-string v9, " \u3010"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u3011"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    :cond_db
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/dsh/nameblock/ListActivity$RowData;->sub:Ljava/lang/String;

    .line 1125
    new-instance v9, Ljava/util/Date;

    iget-wide v13, v7, Lcom/dsh/nameblock/Scanner$CallEntry;->date:J

    invoke-direct {v9, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/dsh/nameblock/ListActivity$RowData;->time:Ljava/lang/String;

    if-eqz v12, :cond_f2

    const/4 v9, 0x0

    goto :goto_fc

    .line 1127
    :cond_f2
    iget-object v9, v0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-static {v10}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1128
    :goto_fc
    iget-boolean v6, v6, Lcom/dsh/nameblock/ListActivity$SyncRow;->contact:Z

    if-eqz v6, :cond_105

    const-string v6, "\u8054\u7cfb\u4eba"

    .line 1129
    iput-object v6, v8, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    goto :goto_120

    :cond_105
    if-nez v12, :cond_10c

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_10c

    const-string v6, "\u65e0\u540d\u79f0"

    .line 1131
    iput-object v6, v8, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    goto :goto_120

    :cond_10c
    if-eqz v9, :cond_113

    const-string v6, "\u5df2\u8986\u76d6"

    .line 1133
    iput-object v6, v8, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    goto :goto_120

    :cond_113
    const-string v6, "\u52a0\u5173\u952e\u8bcd"

    .line 1135
    iput-object v6, v8, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;

    .line 1136
    iput-boolean v2, v8, Lcom/dsh/nameblock/ListActivity$RowData;->actionPill:Z

    .line 1137
    new-instance v6, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda19;

    invoke-direct {v6, v0, v7}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda19;-><init>(Lcom/dsh/nameblock/ListActivity;Lcom/dsh/nameblock/Scanner$CallEntry;)V

    iput-object v6, v8, Lcom/dsh/nameblock/ListActivity$RowData;->action:Ljava/lang/Runnable;

    .line 1139
    :goto_120
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a

    .line 1142
    :cond_125
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "renderSyncRows "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rows"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "perf"

    invoke-static {v0, v3, v2}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-direct {v0, v1, v4}, Lcom/dsh/nameblock/ListActivity;->showList(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private startPolling()V
    .registers 4

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/dsh/nameblock/ListActivity;->polling:Z

    .line 147
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollTask:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    new-instance v0, Lcom/dsh/nameblock/ListActivity$PollRunnable;

    invoke-direct {v0, p0}, Lcom/dsh/nameblock/ListActivity$PollRunnable;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollTask:Ljava/lang/Runnable;

    .line 148
    :cond_e
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->pollTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->pollTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopPolling()V
    .registers 2

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/dsh/nameblock/ListActivity;->polling:Z

    .line 154
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->pollTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity;->pollHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private syncPage()V
    .registers 3

    .line 1068
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u540c\u6b65\u901a\u8bdd\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    sget-object v0, Lcom/dsh/nameblock/ListActivity;->syncCache:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->showSyncRows()V

    goto :goto_18

    .line 1070
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/dsh/nameblock/ListActivity;->showList(Landroid/view/View;Ljava/util/List;)V

    .line 1072
    :goto_18
    sget-boolean v0, Lcom/dsh/nameblock/ListActivity;->syncLoading:Z

    const/4 v1, 0x1

    if-nez v0, :cond_30

    .line 1073
    sput-boolean v1, Lcom/dsh/nameblock/ListActivity;->syncLoading:Z

    .line 1074
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->setSyncRunning(Z)V

    .line 1075
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1083
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_33

    .line 1085
    :cond_30
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->setSyncRunning(Z)V

    :goto_33
    return-void
.end method

.method private tintSwitch(Landroid/widget/Switch;Z)V
    .registers 6

    const p0, 0x10100a0

    .line 673
    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {p0, v0}, [[I

    move-result-object p0

    .line 674
    new-instance v0, Landroid/content/res/ColorStateList;

    const v1, -0xcb38a7

    const v2, -0x1ab7b3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 676
    new-instance v0, Landroid/content/res/ColorStateList;

    const v1, -0x992276

    const v2, -0x4b4b44

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 678
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

    .line 958
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

    .line 959
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u767d\u540d\u5355\u91cc\u7684\u53f7\u7801\u6c38\u8fdc\u653e\u884c\u3002\u901a\u8baf\u5f55\u8054\u7cfb\u4eba\u3001\u4f60\u62e8\u51fa\u8fc7\u7684\u53f7\u7801\u4e5f\u4f1a\u81ea\u52a8\u653e\u884c\u3002"

    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 961
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4ece\u901a\u8baf\u5f55 / \u901a\u8bdd\u8bb0\u5f55\u6dfb\u52a0"

    .line 962
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 963
    new-instance v1, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda27;-><init>(Lcom/dsh/nameblock/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 964
    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 966
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u53f7\u7801\uff0c\u5982 13800138000"

    .line 967
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 968
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 969
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u52a0\u5165"

    .line 970
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 971
    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0, v0}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda28;-><init>(Lcom/dsh/nameblock/ListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 978
    iget-object v2, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/dsh/nameblock/ListActivity;->inputRow(Landroid/widget/EditText;Landroid/widget/Button;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 980
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v0

    .line 981
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    const-string v2, "\u6682\u65e0"

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/ListActivity;->hint(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 982
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

    .line 983
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/ListActivity;->listEntry(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 985
    iget-object v3, p0, Lcom/dsh/nameblock/ListActivity;->content:Landroid/widget/LinearLayout;

    const-string v5, "\u25cf"

    const/4 v4, 0x0

    aget-object v6, v2, v4

    const/4 v7, 0x1

    aget-object v7, v2, v7

    const-string v8, ""

    new-instance v2, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0, v1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda29;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    const-string v1, "\u2715"

    .line 986
    invoke-direct {p0, v1, v4, v2}, Lcom/dsh/nameblock/ListActivity;->actionText(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v9

    move-object v4, p0

    .line 985
    invoke-direct/range {v4 .. v9}, Lcom/dsh/nameblock/ListActivity;->callRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_88

    :cond_b8
    return-void
.end method

.method private whiteSwitch(Ljava/lang/String;)Landroid/view/View;
    .registers 7

    .line 683
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0, p1}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    .line 684
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 685
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 686
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 688
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 689
    invoke-direct {p0, v3, v0}, Lcom/dsh/nameblock/ListActivity;->tintSwitch(Landroid/widget/Switch;Z)V

    .line 690
    new-instance v4, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dsh/nameblock/ListActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 695
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 697
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_31

    const-string v3, "\u5df2\u653e\u884c"

    goto :goto_33

    :cond_31
    const-string v3, "\u5df2\u62e6\u622a"

    .line 698
    :goto_33
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 699
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v0, :cond_41

    const v0, -0xcb38a7

    goto :goto_44

    :cond_41
    const v0, -0x1ab7b3

    .line 700
    :goto_44
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x6

    .line 701
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/ListActivity;->dp(I)I

    move-result p0

    invoke-virtual {p1, p0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 702
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

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 200
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->stopPolling()V

    .line 201
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 203
    :try_start_a
    invoke-virtual {p0, v0}, Lcom/dsh/nameblock/ListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_d

    :catchall_d
    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/dsh/nameblock/ListActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    :cond_10
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 191
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->invalidateCaches()V

    .line 192
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->registerDataReceiver()V

    .line 193
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->refresh()V

    .line 194
    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity;->startPolling()V

    return-void
.end method
