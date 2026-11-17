.class public final Lcom/dsh/nameblock/PickerDialog$IndexBar;
.super Landroid/view/View;
.source "PickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dsh/nameblock/PickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dsh/nameblock/PickerDialog$IndexBar$OnLetter;
    }
.end annotation


# static fields
.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"


# instance fields
.field private final density:F

.field private final letters:Ljava/lang/String;

.field onLetter:Lcom/dsh/nameblock/PickerDialog$IndexBar$OnLetter;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 374
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 367
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dsh/nameblock/PickerDialog$IndexBar;->paint:Landroid/graphics/Paint;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    .line 370
    iput-object v1, p0, Lcom/dsh/nameblock/PickerDialog$IndexBar;->letters:Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/dsh/nameblock/PickerDialog$IndexBar;->density:F

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 p1, 0x41100000    # 9.0f

    mul-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 377
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const p0, -0x757576

    .line 378
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 387
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 388
    invoke-virtual {p0}, Lcom/dsh/nameblock/PickerDialog$IndexBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x1b

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_32

    add-int/lit8 v3, v2, 0x1

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    .line 390
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dsh/nameblock/PickerDialog$IndexBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v0

    add-float/2addr v2, v6

    const/high16 v6, 0x40800000    # 4.0f

    iget v7, p0, Lcom/dsh/nameblock/PickerDialog$IndexBar;->density:F

    mul-float/2addr v7, v6

    add-float/2addr v2, v7

    iget-object v6, p0, Lcom/dsh/nameblock/PickerDialog$IndexBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v2, v3

    goto :goto_d

    :cond_32
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/dsh/nameblock/PickerDialog$IndexBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x1b

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x1a

    .line 398
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 399
    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$IndexBar;->onLetter:Lcom/dsh/nameblock/PickerDialog$IndexBar$OnLetter;

    if-eqz p0, :cond_29

    add-int/lit8 v0, p1, 0x1

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/dsh/nameblock/PickerDialog$IndexBar$OnLetter;->onLetter(Ljava/lang/String;)V

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method setLetters(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/dsh/nameblock/PickerDialog$IndexBar;->invalidate()V

    return-void
.end method
