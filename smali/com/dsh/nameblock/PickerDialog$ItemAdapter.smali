.class final Lcom/dsh/nameblock/PickerDialog$ItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "PickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dsh/nameblock/PickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;,
        Lcom/dsh/nameblock/PickerDialog$ItemAdapter$OnToggle;
    }
.end annotation


# instance fields
.field all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dsh/nameblock/PickerDialog$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;

.field private final density:F

.field multiEnabled:Z

.field onToggle:Lcom/dsh/nameblock/PickerDialog$ItemAdapter$OnToggle;

.field selected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field visible:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dsh/nameblock/PickerDialog$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;F)V
    .registers 4

    .line 267
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->all:Ljava/util/List;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->selected:Ljava/util/List;

    .line 268
    iput-object p1, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->ctx:Landroid/content/Context;

    .line 269
    iput p2, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->density:F

    return-void
.end method

.method static letterOf(Lcom/dsh/nameblock/PickerDialog$Item;)Ljava/lang/String;
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/dsh/nameblock/PickerDialog$Item;->letter:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/dsh/nameblock/PickerDialog$Item;->letter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$Item;->letter:Ljava/lang/String;

    return-object p0

    .line 336
    :cond_f
    iget-object v0, p0, Lcom/dsh/nameblock/PickerDialog$Item;->title:Ljava/lang/String;

    const-string v1, "#"

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/dsh/nameblock/PickerDialog$Item;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_35

    .line 337
    :cond_1e
    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$Item;->title:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_35

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_35

    .line 338
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    :cond_35
    :goto_35
    return-object v1
.end method


# virtual methods
.method firstPositionOf(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 342
    :goto_2
    iget-object v2, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 343
    iget-object v2, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dsh/nameblock/PickerDialog$Item;

    invoke-static {v2}, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->letterOf(Lcom/dsh/nameblock/PickerDialog$Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 346
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 347
    iget-object v1, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dsh/nameblock/PickerDialog$Item;

    invoke-static {v1}, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->letterOf(Lcom/dsh/nameblock/PickerDialog$Item;)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3b

    return v0

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3e
    const/4 p0, -0x1

    return p0
.end method

.method public getCount()I
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 279
    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-nez p2, :cond_73

    .line 291
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->ctx:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 293
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 294
    iget v2, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->density:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 295
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 297
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 298
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 299
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 300
    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 301
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 304
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 305
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 308
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 309
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 312
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 313
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    new-instance v2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;

    invoke-direct {v2}, Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;-><init>()V

    .line 316
    iput-object v1, v2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;->box:Landroid/widget/CheckBox;

    .line 317
    iput-object v3, v2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;->title:Landroid/widget/TextView;

    .line 318
    iput-object v4, v2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;->sub:Landroid/widget/TextView;

    .line 319
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_7a

    .line 322
    :cond_73
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;

    .line 325
    :goto_7a
    iget-object v1, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dsh/nameblock/PickerDialog$Item;

    .line 326
    iget-object v1, v2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;->title:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/dsh/nameblock/PickerDialog$Item;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, v2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;->sub:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/dsh/nameblock/PickerDialog$Item;->subtitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-boolean v1, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->multiEnabled:Z

    .line 329
    iget-object v3, v2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;->box:Landroid/widget/CheckBox;

    if-eqz v1, :cond_97

    move p3, v0

    :cond_97
    invoke-virtual {v3, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 330
    iget-object p3, v2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter$Holder;->box:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->selected:Ljava/util/List;

    iget-object p1, p1, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2
.end method
