.class public Lcom/dsh/nameblock/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final REQ_PERM:I = 0xb

.field private static final REQ_ROLE:I = 0xa


# instance fields
.field private accStatus:Landroid/widget/TextView;

.field private dataReceiver:Landroid/content/BroadcastReceiver;

.field private lastDataRefresh:J

.field private menuBox:Landroid/widget/LinearLayout;

.field private purged:Z

.field private status:Landroid/widget/TextView;

.field private store:Lcom/dsh/nameblock/Store;


# direct methods
.method public static synthetic $r8$lambda$-VEYw4QXtx9lUINxHgBgouOphok(Lcom/dsh/nameblock/MainActivity;Landroid/widget/CompoundButton;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/MainActivity;->lambda$buildUi$5(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$5BgppT8s0Cwu_fevDzaqD-xdUiA(Lcom/dsh/nameblock/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->lambda$handleIntent$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$EEYXyMLd15Gl1RqJyHSzMzjtSRw(Lcom/dsh/nameblock/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/MainActivity;->lambda$buildUi$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jvktythnjppgh0D0JsMsT7zUsCE(Lcom/dsh/nameblock/MainActivity;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/MainActivity;->lambda$menuRow$8(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uw72164aO59wnfAuBZsnmLJ2pC8(Lcom/dsh/nameblock/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/MainActivity;->lambda$buildUi$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V6XyubJGMn5teSDfN152wEWKt4E(Lcom/dsh/nameblock/MainActivity;Landroid/widget/CompoundButton;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/MainActivity;->lambda$buildUi$6(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VEkVZ7AHP-dYPk_3c6q_0Ui-WAg(Lcom/dsh/nameblock/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/MainActivity;->lambda$buildUi$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iyjIrkR7PMpvANmVFY0-z9aWai4(Lcom/dsh/nameblock/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->lambda$registerDataReceiver$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ju2INgiMz1MDFE4pSYmH5VH0pkU(Lcom/dsh/nameblock/MainActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dsh/nameblock/MainActivity;->lambda$ensurePermissions$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xSjljgb_j0eBb5agOlaKzlpuS58(Lcom/dsh/nameblock/MainActivity;Lcom/dsh/nameblock/Scanner$Result;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/MainActivity;->lambda$handleIntent$0(Lcom/dsh/nameblock/Scanner$Result;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private accEnabled()Z
    .registers 4

    const/4 v0, 0x0

    .line 348
    :try_start_1
    invoke-virtual {p0}, Lcom/dsh/nameblock/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 350
    invoke-virtual {p0}, Lcom/dsh/nameblock/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    :catchall_18
    :cond_18
    return v0
.end method

.method private buildUi()Landroid/view/View;
    .registers 9

    const/16 v0, 0x10

    .line 186
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/MainActivity;->dp(I)I

    move-result v0

    .line 187
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 189
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 193
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f040001

    .line 194
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const/high16 v4, 0x41c00000    # 24.0f

    .line 195
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 196
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u8bfb\u6765\u7535\u754c\u9762\u4e0a\u7684\u540d\u79f0\uff0c\u547d\u4e2d\u5173\u952e\u8bcd\u81ea\u52a8\u6302\u65ad\uff1b\u5176\u4ed6\u964c\u751f\u53f7\u7801\u4e0d\u52a8\u3002"

    .line 200
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41500000    # 13.0f

    .line 201
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x6

    .line 202
    invoke-direct {p0, v4}, Lcom/dsh/nameblock/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/dsh/nameblock/MainActivity;->dp(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 203
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/MainActivity;->status:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    .line 206
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 207
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u8bbe\u4e3a\u9ed8\u8ba4\u6765\u7535\u7b5b\u9009\u5e94\u7528"

    .line 210
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v5, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dsh/nameblock/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u7533\u8bf7\u6743\u9650\uff08\u901a\u8bdd\u8bb0\u5f55/\u8054\u7cfb\u4eba/\u901a\u77e5\uff09"

    .line 215
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
    new-instance v5, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/dsh/nameblock/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const-string v5, "\u542f\u7528\u62e6\u622a\uff08\u603b\u5f00\u5173\uff09"

    .line 220
    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v5, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v5}, Lcom/dsh/nameblock/Store;->enabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 222
    new-instance v5, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dsh/nameblock/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 223
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/MainActivity;->tintSwitch(Landroid/widget/Switch;)V

    .line 224
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const-string v5, "\u6309\u540d\u79f0\u6302\u65ad\uff08\u8bfb\u6765\u7535\u754c\u9762\uff09"

    .line 227
    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v5, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v5}, Lcom/dsh/nameblock/Store;->nameGuard()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 229
    new-instance v5, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/dsh/nameblock/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 230
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/MainActivity;->tintSwitch(Landroid/widget/Switch;)V

    .line 231
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\u603b\u5f00\u5173\u5173\u6389 = \u4ec0\u4e48\u90fd\u4e0d\u62e6\uff08\u8fde\u9ed1\u540d\u5355\u4e5f\u4e0d\u62e6\uff09\u3002\n\u6309\u540d\u79f0\u6302\u65ad\u5355\u72ec\u5173\u6389 = \u53ea\u4fdd\u7559\u9ed1\u540d\u5355\u62d2\u63a5\uff0c\u4e0d\u518d\u8bfb\u6765\u7535\u754c\u9762\u4e0a\u7684\u540d\u79f0\u3002"

    .line 234
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 236
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const v6, 0x7f010006

    .line 237
    invoke-virtual {p0, v6}, Lcom/dsh/nameblock/MainActivity;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    invoke-direct {p0, v4}, Lcom/dsh/nameblock/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v7, v7, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 239
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/MainActivity;->accStatus:Landroid/widget/TextView;

    .line 242
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 243
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->accStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\u6253\u5f00\u65e0\u969c\u788d\u8bbe\u7f6e"

    .line 246
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 247
    new-instance v4, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/dsh/nameblock/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 255
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u7ba1\u7406"

    .line 256
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 257
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 258
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v4, 0x12

    .line 259
    invoke-direct {p0, v4}, Lcom/dsh/nameblock/MainActivity;->dp(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/dsh/nameblock/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v7, v4, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 260
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dsh/nameblock/MainActivity;->menuBox:Landroid/widget/LinearLayout;

    .line 263
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 264
    iget-object p0, p0, Lcom/dsh/nameblock/MainActivity;->menuBox:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private dp(I)I
    .registers 3

    int-to-float p1, p1

    .line 434
    invoke-virtual {p0}, Lcom/dsh/nameblock/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private ensurePermissions(Z)V
    .registers 5

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_CALL_LOG"

    .line 375
    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 376
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v1, "android.permission.READ_CONTACTS"

    .line 378
    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1b

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_2c

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 382
    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2c

    .line 383
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5c

    if-nez p1, :cond_35

    return-void

    .line 387
    :cond_35
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6743\u9650\u72b6\u6001"

    .line 388
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u901a\u8bdd\u8bb0\u5f55 \u2713\n\u901a\u8baf\u5f55 \u2713\n\u901a\u77e5 \u2713\n\n\u4e09\u9879\u6743\u9650\u90fd\u5df2\u6388\u4e88\uff0c\u4e0d\u9700\u8981\u518d\u7533\u8bf7\u3002"

    .line 389
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/dsh/nameblock/MainActivity;)V

    const-string p0, "\u6253\u5f00\u5e94\u7528\u8bbe\u7f6e"

    .line 390
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u77e5\u9053\u4e86"

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 392
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_5c
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 395
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/dsh/nameblock/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 15

    if-nez p1, :cond_3

    return-void

    .line 50
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "null"

    goto :goto_18

    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {p0, v1, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "addNumber"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "removeNumber"

    .line 52
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "testNumber"

    .line 53
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dumpList"

    const/4 v8, 0x0

    .line 54
    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iget-object v10, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    .line 55
    invoke-virtual {v10}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "add="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rm="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " test="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dump="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {p0, v1, v4}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b3

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b3

    .line 59
    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, "\u624b\u52a8\u6dfb\u52a0"

    invoke-virtual {v1, v4, v6}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u52a0\u5165\u62e6\u622a\u540d\u5355\uff1a"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    :cond_b3
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cc

    .line 64
    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-static {v0}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dsh/nameblock/Store;->removeNumber(Ljava/lang/String;)V

    .line 66
    :cond_cc
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10f

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10f

    .line 68
    invoke-static {v0}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v1, v0}, Lcom/dsh/nameblock/Store;->isBlockedNumber(Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    .line 70
    invoke-virtual {v3}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " inList="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    .line 69
    invoke-static {p0, v1, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10f
    const-string v0, "dumpKw"

    .line 72
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15b

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    iget-object v2, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v2}, Lcom/dsh/nameblock/Store;->keywords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_127
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_141

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_127

    .line 76
    :cond_141
    :try_start_141
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "keywords.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_15b
    .catchall {:try_start_141 .. :try_end_15b} :catchall_15b

    .line 82
    :catchall_15b
    :cond_15b
    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    iget-object v2, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v2}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_170
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_192

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v4, v3, v8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_170

    .line 86
    :cond_192
    :try_start_192
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "list.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1ac
    .catchall {:try_start_192 .. :try_end_1ac} :catchall_1ac

    :catchall_1ac
    :cond_1ac
    const-string v0, "mode"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1bd

    .line 94
    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dsh/nameblock/Store;->setMode(I)V

    :cond_1bd
    const-string v0, "addWhite"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d8

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d8

    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dsh/nameblock/Store;->addWhitelist(Ljava/lang/String;)V

    :cond_1d8
    const-string v0, "removeWhite"

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_247

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_247

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v2}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " left="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "white-rm"

    invoke-static {p0, v2, v1}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v1}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_247
    const-string v0, "dumpWhite"

    .line 104
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25e

    .line 105
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "white-dump"

    invoke-static {p0, v1, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25e
    const-string v0, "clearWhite"

    .line 107
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29f

    .line 108
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_270
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_282

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v2, v1}, Lcom/dsh/nameblock/Store;->removeWhitelist(Ljava/lang/String;)V

    goto :goto_270

    .line 109
    :cond_282
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "left="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "white-clear"

    invoke-static {p0, v1, v0}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29f
    const-string v0, "addKeyword"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2ba

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2ba

    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dsh/nameblock/Store;->addKeyword(Ljava/lang/String;)V

    :cond_2ba
    const-string v0, "removeKeyword"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d5

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d5

    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dsh/nameblock/Store;->removeKeyword(Ljava/lang/String;)V

    :cond_2d5
    const-string v0, "testNotify"

    .line 115
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2e6

    const-string v0, "\u5317\u4eac\u660e\u4f26\u542f\u6b63\u6587\u5316\u4f20\u5a92\u6709\u9650\u516c\u53f8"

    const-string v1, "\u540d\u79f0\u542b\u300c\u4f20\u5a92\u300d\uff0c\u5df2\u6302\u65ad"

    const-string v2, "0431 8292 3577"

    .line 116
    invoke-static {p0, v2, v0, v1}, Lcom/dsh/nameblock/Notifier;->blocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e6
    const-string v0, "page"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_304

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_304

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dsh/nameblock/ListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "kind"

    .line 121
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/dsh/nameblock/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_304
    const-string v0, "scan"

    .line 123
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_322

    const-string p1, "\u6b63\u5728\u626b\u63cf\u901a\u8bdd\u8bb0\u5f55\u2026"

    .line 124
    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 125
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/dsh/nameblock/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 134
    :cond_322
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->refresh()V

    return-void
.end method

.method private isRoleHeld()Z
    .registers 2

    .line 342
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Lcom/dsh/nameblock/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    if-eqz p0, :cond_14

    const-string v0, "android.app.role.CALL_SCREENING"

    .line 343
    invoke-virtual {p0, v0}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private synthetic lambda$buildUi$3(Landroid/view/View;)V
    .registers 2

    .line 211
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->requestRole()V

    return-void
.end method

.method private synthetic lambda$buildUi$4(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 216
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/MainActivity;->ensurePermissions(Z)V

    return-void
.end method

.method private synthetic lambda$buildUi$5(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 222
    iget-object p0, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/Store;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$buildUi$6(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 229
    iget-object p0, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/Store;->setNameGuard(Z)V

    return-void
.end method

.method private synthetic lambda$buildUi$7(Landroid/view/View;)V
    .registers 3

    .line 249
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method

.method private synthetic lambda$ensurePermissions$9(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 390
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->openAppSettings()V

    return-void
.end method

.method private synthetic lambda$handleIntent$0(Lcom/dsh/nameblock/Scanner$Result;)V
    .registers 5

    .line 128
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->refresh()V

    .line 129
    iget-object v0, p1, Lcom/dsh/nameblock/Scanner$Result;->error:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object p1, p1, Lcom/dsh/nameblock/Scanner$Result;->error:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_37

    .line 130
    :cond_18
    iget v0, p1, Lcom/dsh/nameblock/Scanner$Result;->scanned:I

    iget p1, p1, Lcom/dsh/nameblock/Scanner$Result;->added:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u626b\u63cf "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u6761\uff0c\u65b0\u589e "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_37
    const/4 v0, 0x1

    .line 129
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$handleIntent$1()V
    .registers 3

    const/4 v0, 0x1

    .line 126
    invoke-static {p0, v0}, Lcom/dsh/nameblock/Scanner;->scan(Landroid/content/Context;Z)Lcom/dsh/nameblock/Scanner$Result;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/dsh/nameblock/MainActivity;Lcom/dsh/nameblock/Scanner$Result;)V

    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$menuRow$8(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 298
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/dsh/nameblock/ListActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "kind"

    .line 299
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 298
    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$registerDataReceiver$2()V
    .registers 7

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 146
    iget-wide v2, p0, Lcom/dsh/nameblock/MainActivity;->lastDataRefresh:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    return-void

    .line 147
    :cond_f
    iput-wide v0, p0, Lcom/dsh/nameblock/MainActivity;->lastDataRefresh:J

    .line 148
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->refresh()V

    return-void
.end method

.method private menuRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .line 270
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 271
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 272
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xe

    .line 273
    invoke-direct {p0, v2}, Lcom/dsh/nameblock/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/dsh/nameblock/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 275
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 276
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 277
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 281
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 282
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 285
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 286
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, 0x7f010006

    .line 287
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/MainActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u203a"

    .line 293
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 294
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 295
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/MainActivity;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    new-instance p1, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3}, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dsh/nameblock/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 303
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 305
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v3}, Lcom/dsh/nameblock/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p3, 0x7f010003

    .line 306
    invoke-virtual {p0, p3}, Lcom/dsh/nameblock/MainActivity;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 307
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private openAppSettings()V
    .registers 6

    const-string v0, "package:"

    .line 400
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 401
    invoke-virtual {p0}, Lcom/dsh/nameblock/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 400
    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_21

    goto :goto_3c

    :catchall_21
    move-exception v0

    .line 403
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e0\u6cd5\u6253\u5f00\u8bbe\u7f6e\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_3c
    return-void
.end method

.method private refresh()V
    .registers 7

    .line 312
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->status:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 313
    :cond_5
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->isRoleHeld()Z

    move-result v0

    const-string v1, "android.permission.READ_CALL_LOG"

    .line 314
    invoke-virtual {p0, v1}, Lcom/dsh/nameblock/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    :goto_16
    const-string v4, "android.permission.POST_NOTIFICATIONS"

    .line 315
    invoke-virtual {p0, v4}, Lcom/dsh/nameblock/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    .line 316
    :goto_20
    iget-object v3, p0, Lcom/dsh/nameblock/MainActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    const-string v0, "\u5df2\u6388\u4e88 \u2713"

    goto :goto_29

    :cond_27
    const-string v0, "\u672a\u6388\u4e88 \u2717"

    :goto_29
    const-string v4, "\u2713"

    const-string v5, "\u2717"

    if-eqz v1, :cond_31

    move-object v1, v4

    goto :goto_32

    :cond_31
    move-object v1, v5

    :goto_32
    if-eqz v2, :cond_35

    goto :goto_36

    :cond_35
    move-object v4, v5

    .line 318
    :goto_36
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\u6765\u7535\u7b5b\u9009\uff1a"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    \u901a\u8bdd\u8bb0\u5f55\uff1a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    \u901a\u77e5\uff1a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->accStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_6f

    .line 320
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->accEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v1, "\u5df2\u5f00\u542f \u2713"

    goto :goto_66

    :cond_64
    const-string v1, "\u672a\u5f00\u542f \u2717\uff08\u8bfb\u540d\u79f0\u6302\u65ad\u4f9d\u8d56\u5b83\uff09"

    :goto_66
    const-string v2, "\u65e0\u969c\u788d\u670d\u52a1\uff1a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_6f
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->menuBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_138

    .line 324
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 325
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->menuBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    .line 326
    invoke-virtual {v1}, Lcom/dsh/nameblock/Store;->keywords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5171 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u4e2a\uff0c\u547d\u4e2d\u5373\u6302\u65ad"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kw"

    const-string v4, "\u540d\u79f0\u5173\u952e\u8bcd"

    .line 325
    invoke-direct {p0, v4, v1, v2}, Lcom/dsh/nameblock/MainActivity;->menuRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->menuBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    .line 328
    invoke-virtual {v1}, Lcom/dsh/nameblock/Store;->logs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u6700\u8fd1 "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u6761\uff0c\u53ef\u6ed1\u52a8\u653e\u884c/\u62e6\u622a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logs"

    const-string v4, "\u62e6\u622a\u8bb0\u5f55"

    .line 327
    invoke-direct {p0, v4, v1, v2}, Lcom/dsh/nameblock/MainActivity;->menuRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->menuBox:Landroid/widget/LinearLayout;

    const-string v1, "\u4ece\u901a\u8bdd\u8bb0\u5f55\u6311\u540d\u79f0\uff0c\u6dfb\u52a0\u5173\u952e\u8bcd"

    const-string v2, "sync"

    const-string v4, "\u540c\u6b65\u901a\u8bdd\u8bb0\u5f55"

    invoke-direct {p0, v4, v1, v2}, Lcom/dsh/nameblock/MainActivity;->menuRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->menuBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    .line 332
    invoke-virtual {v1}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u4e2a\uff0c\u6c38\u8fdc\u653e\u884c"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "white"

    const-string v4, "\u767d\u540d\u5355"

    .line 331
    invoke-direct {p0, v4, v1, v2}, Lcom/dsh/nameblock/MainActivity;->menuRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->menuBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    .line 334
    invoke-virtual {v1}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u4e2a\uff0c\u54cd\u94c3\u524d\u76f4\u63a5\u62d2\u63a5"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nums"

    const-string v3, "\u9ed1\u540d\u5355"

    .line 333
    invoke-direct {p0, v3, v1, v2}, Lcom/dsh/nameblock/MainActivity;->menuRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->menuBox:Landroid/widget/LinearLayout;

    const-string v1, "\u6700\u8fd1\u6765\u7535\u7684\u5224\u5b9a\u8fc7\u7a0b"

    const-string v2, "diag"

    const-string v3, "\u8bca\u65ad\u65e5\u5fd7"

    invoke-direct {p0, v3, v1, v2}, Lcom/dsh/nameblock/MainActivity;->menuRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_138
    return-void
.end method

.method private registerDataReceiver()V
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    return-void

    .line 144
    :cond_5
    new-instance v0, Lcom/dsh/nameblock/DataChangeReceiver;

    new-instance v1, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/dsh/nameblock/MainActivity;)V

    invoke-direct {v0, v1}, Lcom/dsh/nameblock/DataChangeReceiver;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/dsh/nameblock/MainActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.dsh.nameblock.DATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    :try_start_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_25

    .line 153
    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/dsh/nameblock/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2e

    .line 155
    :cond_25
    iget-object v1, p0, Lcom/dsh/nameblock/MainActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dsh/nameblock/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2b

    goto :goto_2e

    :catchall_2b
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/dsh/nameblock/MainActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    :goto_2e
    return-void
.end method

.method private requestRole()V
    .registers 5

    .line 357
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Lcom/dsh/nameblock/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    const/4 v1, 0x1

    if-nez v0, :cond_15

    const-string v0, "\u6b64\u7cfb\u7edf\u4e0d\u652f\u6301\u6765\u7535\u7b5b\u9009\u89d2\u8272"

    .line 359
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_15
    const-string v2, "android.app.role.CALL_SCREENING"

    .line 362
    invoke-virtual {v0, v2}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v0, "\u5df2\u7ecf\u662f\u9ed8\u8ba4\u6765\u7535\u7b5b\u9009\u5e94\u7528"

    const/4 v1, 0x0

    .line 363
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 367
    :cond_28
    :try_start_28
    invoke-virtual {v0, v2}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/dsh/nameblock/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_32

    goto :goto_4c

    :catchall_32
    move-exception v0

    .line 369
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65e0\u6cd5\u6253\u5f00\u6388\u6743\u754c\u9762\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_4c
    return-void
.end method

.method private tintSwitch(Landroid/widget/Switch;)V
    .registers 5

    const p0, 0x10100a0

    .line 426
    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {p0, v0}, [[I

    move-result-object p0

    .line 427
    new-instance v0, Landroid/content/res/ColorStateList;

    const v1, -0xcb38a7

    const v2, -0x424243

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 429
    new-instance v0, Landroid/content/res/ColorStateList;

    const v1, -0x992276

    const v2, -0x4b4b44

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 421
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 422
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->refresh()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object p1

    iput-object p1, p0, Lcom/dsh/nameblock/MainActivity;->store:Lcom/dsh/nameblock/Store;

    .line 35
    invoke-static {p0}, Lcom/dsh/nameblock/ScanJob;->schedule(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->buildUi()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/MainActivity;->setContentView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Lcom/dsh/nameblock/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dsh/nameblock/MainActivity;->handleIntent(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/MainActivity;->ensurePermissions(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/MainActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 174
    iget-object v0, p0, Lcom/dsh/nameblock/MainActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_d

    .line 176
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/dsh/nameblock/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_a

    :catchall_a
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/dsh/nameblock/MainActivity;->dataReceiver:Landroid/content/BroadcastReceiver;

    :cond_d
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    .line 409
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 410
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->refresh()V

    const/16 p2, 0xb

    if-ne p1, p2, :cond_26

    .line 413
    array-length p1, p3

    const/4 p2, 0x0

    move v0, p2

    :goto_d
    const/4 v1, 0x1

    if-ge p2, p1, :cond_18

    aget v2, p3, p2

    if-eqz v2, :cond_15

    move v0, v1

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_18
    if-eqz v0, :cond_1d

    const-string p1, "\u6709\u6743\u9650\u88ab\u62d2\u7edd\uff0c\u53ef\u5728\u5e94\u7528\u8bbe\u7f6e\u91cc\u624b\u52a8\u5f00\u542f"

    goto :goto_1f

    :cond_1d
    const-string p1, "\u6743\u9650\u5df2\u6388\u4e88"

    .line 414
    :goto_1f
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 415
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_26
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 165
    invoke-static {p0}, Lcom/dsh/nameblock/Keeper;->ensure(Landroid/content/Context;)V

    .line 166
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->registerDataReceiver()V

    .line 167
    invoke-direct {p0}, Lcom/dsh/nameblock/MainActivity;->refresh()V

    return-void
.end method
