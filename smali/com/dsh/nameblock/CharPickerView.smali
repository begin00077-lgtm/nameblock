.class public Lcom/dsh/nameblock/CharPickerView;
.super Landroid/view/View;
.source "CharPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dsh/nameblock/CharPickerView$Listener;
    }
.end annotation


# instance fields
.field private base:[Z

.field private final cell:Landroid/graphics/RectF;

.field private cellH:F

.field private cellW:F

.field private final chars:[Ljava/lang/String;

.field private final cols:I

.field private downX:F

.field private downY:F

.field private dragging:Z

.field private final fillPaint:Landroid/graphics/Paint;

.field private inset:F

.field private lastIdx:I

.field private listener:Lcom/dsh/nameblock/CharPickerView$Listener;

.field private final sel:[Z

.field private final slop:I

.field private startIdx:I

.field private final strokePaint:Landroid/graphics/Paint;

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 11

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dsh/nameblock/CharPickerView;->textPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/dsh/nameblock/CharPickerView;->fillPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/dsh/nameblock/CharPickerView;->strokePaint:Landroid/graphics/Paint;

    .line 33
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/dsh/nameblock/CharPickerView;->cell:Landroid/graphics/RectF;

    const/4 v4, -0x1

    .line 36
    iput v4, p0, Lcom/dsh/nameblock/CharPickerView;->startIdx:I

    .line 37
    iput v4, p0, Lcom/dsh/nameblock/CharPickerView;->lastIdx:I

    const-string v4, ""

    if-nez p2, :cond_2b

    move-object p2, v4

    goto :goto_31

    :cond_2b
    const-string v5, "\\s+"

    .line 49
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 50
    :goto_31
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3b

    new-array p2, v6, [Ljava/lang/String;

    goto :goto_3f

    :cond_3b
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :goto_3f
    iput-object p2, p0, Lcom/dsh/nameblock/CharPickerView;->chars:[Ljava/lang/String;

    .line 51
    array-length v4, p2

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/dsh/nameblock/CharPickerView;->sel:[Z

    .line 52
    array-length p2, p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/dsh/nameblock/CharPickerView;->base:[Z

    .line 53
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/dsh/nameblock/CharPickerView;->cols:I

    .line 54
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/dsh/nameblock/CharPickerView;->slop:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 p3, 0x40800000    # 4.0f

    mul-float/2addr p3, p2

    .line 58
    iput p3, p0, Lcom/dsh/nameblock/CharPickerView;->inset:F

    const/high16 p3, 0x41a80000    # 21.0f

    mul-float/2addr p1, p3

    .line 60
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string p1, "sans-serif-medium"

    .line 62
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const p1, -0xcb38a7

    .line 64
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float/2addr p2, p1

    .line 66
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    invoke-virtual {p0}, Lcom/dsh/nameblock/CharPickerView;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f010006

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const p1, 0xffffff

    and-int/2addr p0, p1

    const/high16 p1, 0x66000000

    or-int/2addr p0, p1

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private applyRange()V
    .registers 5

    .line 190
    iget v0, p0, Lcom/dsh/nameblock/CharPickerView;->startIdx:I

    if-gez v0, :cond_5

    return-void

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/dsh/nameblock/CharPickerView;->base:[Z

    iget-object v1, p0, Lcom/dsh/nameblock/CharPickerView;->sel:[Z

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget v0, p0, Lcom/dsh/nameblock/CharPickerView;->startIdx:I

    iget v1, p0, Lcom/dsh/nameblock/CharPickerView;->lastIdx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 193
    iget v1, p0, Lcom/dsh/nameblock/CharPickerView;->startIdx:I

    iget v2, p0, Lcom/dsh/nameblock/CharPickerView;->lastIdx:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1e
    if-gt v0, v1, :cond_30

    .line 196
    iget-object v2, p0, Lcom/dsh/nameblock/CharPickerView;->sel:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_30

    iget-object v3, p0, Lcom/dsh/nameblock/CharPickerView;->base:[Z

    aget-boolean v3, v3, v0

    xor-int/lit8 v3, v3, 0x1

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 197
    :cond_30
    invoke-direct {p0}, Lcom/dsh/nameblock/CharPickerView;->notifyChanged()V

    return-void
.end method

.method private indexAt(FF)I
    .registers 5

    .line 201
    iget v0, p0, Lcom/dsh/nameblock/CharPickerView;->cellW:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 202
    iget v0, p0, Lcom/dsh/nameblock/CharPickerView;->cellH:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 203
    iget v0, p0, Lcom/dsh/nameblock/CharPickerView;->cols:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 204
    invoke-direct {p0}, Lcom/dsh/nameblock/CharPickerView;->rows()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 205
    iget v1, p0, Lcom/dsh/nameblock/CharPickerView;->cols:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    .line 206
    iget-object p0, p0, Lcom/dsh/nameblock/CharPickerView;->chars:[Ljava/lang/String;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private notifyChanged()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/dsh/nameblock/CharPickerView;->listener:Lcom/dsh/nameblock/CharPickerView$Listener;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/dsh/nameblock/CharPickerView;->getKeyword()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/dsh/nameblock/CharPickerView$Listener;->onChanged(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private rows()I
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/dsh/nameblock/CharPickerView;->chars:[Ljava/lang/String;

    array-length v0, v0

    iget p0, p0, Lcom/dsh/nameblock/CharPickerView;->cols:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .registers 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 98
    :goto_6
    iget-object v2, p0, Lcom/dsh/nameblock/CharPickerView;->chars:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_19

    iget-object v3, p0, Lcom/dsh/nameblock/CharPickerView;->sel:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_16

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 99
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    iget-object v0, p0, Lcom/dsh/nameblock/CharPickerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/dsh/nameblock/CharPickerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    .line 119
    :goto_14
    iget-object v3, p0, Lcom/dsh/nameblock/CharPickerView;->chars:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_88

    .line 120
    iget v3, p0, Lcom/dsh/nameblock/CharPickerView;->cols:I

    div-int v4, v2, v3

    .line 121
    rem-int v3, v2, v3

    int-to-float v3, v3

    .line 122
    iget v5, p0, Lcom/dsh/nameblock/CharPickerView;->cellW:F

    mul-float/2addr v3, v5

    iget v6, p0, Lcom/dsh/nameblock/CharPickerView;->inset:F

    add-float/2addr v3, v6

    int-to-float v4, v4

    .line 123
    iget v7, p0, Lcom/dsh/nameblock/CharPickerView;->cellH:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    .line 124
    iget-object v8, p0, Lcom/dsh/nameblock/CharPickerView;->cell:Landroid/graphics/RectF;

    add-float/2addr v5, v3

    mul-float v9, v6, v1

    sub-float/2addr v5, v9

    add-float/2addr v7, v4

    mul-float/2addr v6, v1

    sub-float/2addr v7, v6

    invoke-virtual {v8, v3, v4, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    iget-object v3, p0, Lcom/dsh/nameblock/CharPickerView;->sel:[Z

    aget-boolean v3, v3, v2

    const v4, 0x3e6147ae    # 0.22f

    if-eqz v3, :cond_53

    .line 127
    iget-object v3, p0, Lcom/dsh/nameblock/CharPickerView;->cell:Landroid/graphics/RectF;

    iget v5, p0, Lcom/dsh/nameblock/CharPickerView;->cellH:F

    mul-float v6, v5, v4

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/dsh/nameblock/CharPickerView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 128
    iget-object v3, p0, Lcom/dsh/nameblock/CharPickerView;->textPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6f

    .line 130
    :cond_53
    iget-object v3, p0, Lcom/dsh/nameblock/CharPickerView;->cell:Landroid/graphics/RectF;

    iget v5, p0, Lcom/dsh/nameblock/CharPickerView;->cellH:F

    mul-float v6, v5, v4

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/dsh/nameblock/CharPickerView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 131
    iget-object v3, p0, Lcom/dsh/nameblock/CharPickerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dsh/nameblock/CharPickerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f010005

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    :goto_6f
    iget-object v3, p0, Lcom/dsh/nameblock/CharPickerView;->chars:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/dsh/nameblock/CharPickerView;->cell:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/dsh/nameblock/CharPickerView;->cell:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v5, v0

    iget-object v6, p0, Lcom/dsh/nameblock/CharPickerView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_88
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-gtz p1, :cond_8

    const/16 p1, 0x258

    :cond_8
    int-to-float p2, p1

    .line 110
    iget v0, p0, Lcom/dsh/nameblock/CharPickerView;->cols:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p0, Lcom/dsh/nameblock/CharPickerView;->cellW:F

    const v0, 0x3f866666    # 1.05f

    mul-float/2addr p2, v0

    .line 111
    iput p2, p0, Lcom/dsh/nameblock/CharPickerView;->cellH:F

    .line 112
    invoke-direct {p0}, Lcom/dsh/nameblock/CharPickerView;->rows()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/dsh/nameblock/CharPickerView;->cellH:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/dsh/nameblock/CharPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 139
    iget-object v0, p0, Lcom/dsh/nameblock/CharPickerView;->chars:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    return v1

    .line 140
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_77

    const/4 v3, -0x1

    if-eq v0, v2, :cond_5d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_21

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1c

    .line 184
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 179
    :cond_1c
    iput v3, p0, Lcom/dsh/nameblock/CharPickerView;->startIdx:I

    .line 180
    iput-boolean v1, p0, Lcom/dsh/nameblock/CharPickerView;->dragging:Z

    return v2

    .line 152
    :cond_21
    iget-boolean v0, p0, Lcom/dsh/nameblock/CharPickerView;->dragging:Z

    if-nez v0, :cond_40

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/dsh/nameblock/CharPickerView;->downX:F

    sub-float/2addr v0, v1

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/dsh/nameblock/CharPickerView;->downY:F

    sub-float/2addr v1, v3

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    .line 155
    iget v1, p0, Lcom/dsh/nameblock/CharPickerView;->slop:I

    mul-int/2addr v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_40

    iput-boolean v2, p0, Lcom/dsh/nameblock/CharPickerView;->dragging:Z

    .line 157
    :cond_40
    iget-boolean v0, p0, Lcom/dsh/nameblock/CharPickerView;->dragging:Z

    if-eqz v0, :cond_5c

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/dsh/nameblock/CharPickerView;->indexAt(FF)I

    move-result p1

    .line 159
    iget v0, p0, Lcom/dsh/nameblock/CharPickerView;->lastIdx:I

    if-eq p1, v0, :cond_5c

    .line 160
    iput p1, p0, Lcom/dsh/nameblock/CharPickerView;->lastIdx:I

    .line 161
    invoke-direct {p0}, Lcom/dsh/nameblock/CharPickerView;->applyRange()V

    .line 162
    invoke-virtual {p0}, Lcom/dsh/nameblock/CharPickerView;->invalidate()V

    :cond_5c
    return v2

    .line 168
    :cond_5d
    iget-boolean p1, p0, Lcom/dsh/nameblock/CharPickerView;->dragging:Z

    if-nez p1, :cond_72

    iget p1, p0, Lcom/dsh/nameblock/CharPickerView;->startIdx:I

    if-ltz p1, :cond_72

    .line 170
    iget-object v0, p0, Lcom/dsh/nameblock/CharPickerView;->sel:[Z

    aget-boolean v4, v0, p1

    xor-int/2addr v4, v2

    aput-boolean v4, v0, p1

    .line 171
    invoke-direct {p0}, Lcom/dsh/nameblock/CharPickerView;->notifyChanged()V

    .line 172
    invoke-virtual {p0}, Lcom/dsh/nameblock/CharPickerView;->invalidate()V

    .line 174
    :cond_72
    iput v3, p0, Lcom/dsh/nameblock/CharPickerView;->startIdx:I

    .line 175
    iput-boolean v1, p0, Lcom/dsh/nameblock/CharPickerView;->dragging:Z

    return v2

    .line 142
    :cond_77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/dsh/nameblock/CharPickerView;->indexAt(FF)I

    move-result v0

    iput v0, p0, Lcom/dsh/nameblock/CharPickerView;->startIdx:I

    .line 143
    iput v0, p0, Lcom/dsh/nameblock/CharPickerView;->lastIdx:I

    .line 144
    iput-boolean v1, p0, Lcom/dsh/nameblock/CharPickerView;->dragging:Z

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dsh/nameblock/CharPickerView;->downX:F

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/dsh/nameblock/CharPickerView;->downY:F

    .line 147
    iget-object p1, p0, Lcom/dsh/nameblock/CharPickerView;->sel:[Z

    iget-object p0, p0, Lcom/dsh/nameblock/CharPickerView;->base:[Z

    array-length v0, p1

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2
.end method

.method public preselectContaining([Ljava/lang/String;)V
    .registers 11

    if-eqz p1, :cond_79

    .line 76
    iget-object v0, p0, Lcom/dsh/nameblock/CharPickerView;->chars:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_9

    goto/16 :goto_79

    .line 77
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/dsh/nameblock/CharPickerView;->chars:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_1d

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 79
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 80
    array-length v1, p1

    move v2, v3

    :goto_29
    if-ge v2, v1, :cond_61

    aget-object v4, p1, v2

    if-nez v4, :cond_30

    goto :goto_48

    .line 82
    :cond_30
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_41

    goto :goto_48

    :cond_41
    move v5, v3

    .line 86
    :goto_42
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_4b

    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_4b
    move v6, v5

    .line 88
    :goto_4c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    if-ge v6, v7, :cond_5e

    iget-object v7, p0, Lcom/dsh/nameblock/CharPickerView;->sel:[Z

    array-length v8, v7

    if-ge v6, v8, :cond_5e

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 92
    :cond_61
    iget-object p1, p0, Lcom/dsh/nameblock/CharPickerView;->sel:[Z

    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Lcom/dsh/nameblock/CharPickerView;->base:[Z

    .line 93
    invoke-virtual {p0}, Lcom/dsh/nameblock/CharPickerView;->invalidate()V

    .line 94
    iget-object p1, p0, Lcom/dsh/nameblock/CharPickerView;->listener:Lcom/dsh/nameblock/CharPickerView$Listener;

    if-eqz p1, :cond_79

    invoke-virtual {p0}, Lcom/dsh/nameblock/CharPickerView;->getKeyword()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/dsh/nameblock/CharPickerView$Listener;->onChanged(Ljava/lang/String;)V

    :cond_79
    :goto_79
    return-void
.end method

.method public setListener(Lcom/dsh/nameblock/CharPickerView$Listener;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/dsh/nameblock/CharPickerView;->listener:Lcom/dsh/nameblock/CharPickerView$Listener;

    return-void
.end method
