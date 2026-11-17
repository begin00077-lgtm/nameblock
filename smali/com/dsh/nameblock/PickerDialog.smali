.class public final Lcom/dsh/nameblock/PickerDialog;
.super Ljava/lang/Object;
.source "PickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dsh/nameblock/PickerDialog$IndexBar;,
        Lcom/dsh/nameblock/PickerDialog$ItemAdapter;,
        Lcom/dsh/nameblock/PickerDialog$Callback;,
        Lcom/dsh/nameblock/PickerDialog$Item;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$show$0(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 128
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$show$1([ZLandroid/widget/TextView;Ljava/util/List;Landroid/widget/Button;Landroid/widget/TextView;Z)V
    .registers 8

    const/4 v0, 0x0

    .line 148
    aget-boolean p0, p0, v0

    const-string v0, "\u6dfb\u52a0"

    if-eqz p0, :cond_51

    .line 149
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u9009 "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u4e2a\uff0c\u957f\u6309\u53ef\u7ee7\u7eed\u591a\u9009"

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_3f

    :cond_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p5, "\u6dfb\u52a0\uff08"

    invoke-direct {p1, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\uff09"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p0, "\u53d6\u6d88\u591a\u9009"

    .line 152
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c

    :cond_51
    if-eqz p5, :cond_56

    const-string p0, "\u957f\u6309\u6216\u70b9\u300c\u591a\u9009\u300d\u53ef\u6279\u91cf\u9009\u62e9"

    goto :goto_58

    :cond_56
    const-string p0, "\u8f93\u5165\u5173\u952e\u5b57\u53ef\u641c\u7d22"

    .line 154
    :goto_58
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p0, "\u591a\u9009"

    .line 157
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6c
    return-void
.end method

.method static synthetic lambda$show$2(Z[ZLjava/util/List;Lcom/dsh/nameblock/PickerDialog$ItemAdapter;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 164
    aget-boolean p5, p1, p0

    xor-int/lit8 p5, p5, 0x1

    aput-boolean p5, p1, p0

    if-nez p5, :cond_f

    .line 165
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 166
    :cond_f
    aget-boolean p0, p1, p0

    iput-boolean p0, p3, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->multiEnabled:Z

    .line 167
    invoke-virtual {p3}, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->notifyDataSetChanged()V

    .line 168
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$show$3(Ljava/util/List;Ljava/lang/Runnable;Lcom/dsh/nameblock/PickerDialog$Item;Z)V
    .registers 4

    if-eqz p3, :cond_10

    .line 173
    iget-object p3, p2, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_15

    iget-object p2, p2, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 175
    :cond_10
    iget-object p2, p2, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 177
    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$show$4(Lcom/dsh/nameblock/PickerDialog$ItemAdapter;[ZLjava/util/List;Ljava/lang/Runnable;Landroid/app/Dialog;Lcom/dsh/nameblock/PickerDialog$Callback;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    .line 181
    iget-object p6, p0, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    invoke-interface {p6, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/dsh/nameblock/PickerDialog$Item;

    const/4 p7, 0x0

    .line 182
    aget-boolean p1, p1, p7

    if-eqz p1, :cond_29

    .line 183
    iget-object p1, p6, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1d

    .line 184
    iget-object p1, p6, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 185
    :cond_1d
    iget-object p1, p6, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    :goto_22
    invoke-virtual {p0}, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->notifyDataSetChanged()V

    .line 187
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_39

    .line 189
    :cond_29
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object p1, p6, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    .line 192
    invoke-interface {p5, p0}, Lcom/dsh/nameblock/PickerDialog$Callback;->onPicked(Ljava/util/List;)V

    :goto_39
    return-void
.end method

.method static synthetic lambda$show$5(Z[ZLcom/dsh/nameblock/PickerDialog$ItemAdapter;Ljava/util/List;Ljava/lang/Runnable;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10

    const/4 p5, 0x0

    if-nez p0, :cond_4

    return p5

    .line 198
    :cond_4
    aget-boolean p0, p1, p5

    const/4 p6, 0x1

    if-nez p0, :cond_28

    .line 199
    aput-boolean p6, p1, p5

    .line 200
    iput-boolean p6, p2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->multiEnabled:Z

    .line 201
    iget-object p0, p2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    invoke-interface {p0, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dsh/nameblock/PickerDialog$Item;

    .line 202
    iget-object p1, p0, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_22
    invoke-virtual {p2}, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->notifyDataSetChanged()V

    .line 204
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_28
    return p6
.end method

.method static synthetic lambda$show$6(Lcom/dsh/nameblock/PickerDialog$ItemAdapter;Landroid/widget/ListView;Ljava/lang/String;)V
    .registers 3

    .line 234
    invoke-virtual {p0, p2}, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->firstPositionOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_9

    .line 235
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_9
    return-void
.end method

.method static synthetic lambda$show$7(Ljava/util/List;Landroid/app/Dialog;Lcom/dsh/nameblock/PickerDialog$Callback;Landroid/view/View;)V
    .registers 4

    .line 239
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 241
    invoke-interface {p2, p3}, Lcom/dsh/nameblock/PickerDialog$Callback;->onPicked(Ljava/util/List;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZZLcom/dsh/nameblock/PickerDialog$Callback;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dsh/nameblock/PickerDialog$Item;",
            ">;ZZ",
            "Lcom/dsh/nameblock/PickerDialog$Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 61
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v7, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 67
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    invoke-virtual {v8, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v4, 0x7f010001

    .line 70
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 72
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v5, p1

    .line 73
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41900000    # 18.0f

    .line 74
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, 0x7f010004

    .line 76
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    const/4 v6, 0x0

    .line 77
    invoke-virtual {v4, v6, v6, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 78
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 82
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 84
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v11, "\u641c\u7d22\u59d3\u540d\u6216\u53f7\u7801"

    .line 85
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41600000    # 14.0f

    .line 86
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTextSize(F)V

    .line 87
    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 88
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v14, 0x41500000    # 13.0f

    .line 91
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v14, 0x41400000    # 12.0f

    mul-float v15, v3, v14

    float-to-int v15, v15

    const/high16 v16, 0x40c00000    # 6.0f

    mul-float v2, v3, v16

    float-to-int v2, v2

    const/high16 v16, 0x40800000    # 4.0f

    mul-float v12, v3, v16

    float-to-int v12, v12

    .line 92
    invoke-virtual {v11, v15, v2, v12, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x8

    if-eqz p4, :cond_a5

    move v12, v6

    goto :goto_a6

    :cond_a5
    move v12, v2

    .line 93
    :goto_a6
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v12, "\u591a\u9009"

    .line 94
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x7f010000

    .line 95
    invoke-virtual {v0, v12}, Landroid/app/Activity;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const v12, 0x7f010005

    .line 101
    invoke-virtual {v0, v12}, Landroid/app/Activity;->getColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x43d20000    # 420.0f

    mul-float/2addr v15, v3

    float-to-int v15, v15

    const/4 v13, -0x1

    invoke-direct {v14, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v15, Landroid/widget/ListView;

    invoke-direct {v15, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    .line 109
    invoke-virtual {v15, v14}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v15, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 111
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v15, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v14, Lcom/dsh/nameblock/PickerDialog$IndexBar;

    invoke-direct {v14, v0}, Lcom/dsh/nameblock/PickerDialog$IndexBar;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_100

    move v2, v6

    .line 115
    :cond_100
    invoke-virtual {v14, v2}, Lcom/dsh/nameblock/PickerDialog$IndexBar;->setVisibility(I)V

    .line 116
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v18, 0x41d00000    # 26.0f

    mul-float v9, v3, v18

    float-to-int v9, v9

    invoke-direct {v2, v9, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v9, 0x800005

    .line 118
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    invoke-virtual {v12, v14, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 123
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    invoke-virtual {v2, v6, v5, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 126
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v9, "\u53d6\u6d88"

    .line 127
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v9, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v9, v7}, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u6dfb\u52a0"

    .line 132
    invoke-virtual {v9, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v9, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v13, v2, [Z

    aput-boolean v6, v13, v6

    .line 140
    new-instance v5, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    invoke-direct {v5, v0, v3}, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;-><init>(Landroid/content/Context;F)V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v5, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->all:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v5, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    .line 143
    iput-boolean v6, v5, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->multiEnabled:Z

    .line 144
    iput-object v12, v5, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->selected:Ljava/util/List;

    .line 145
    invoke-virtual {v15, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    new-instance v6, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;

    move-object v3, v14

    move-object v14, v6

    move-object v2, v15

    move-object v15, v13

    move-object/from16 v16, v4

    move-object/from16 v17, v12

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    move/from16 v20, p4

    invoke-direct/range {v14 .. v20}, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;-><init>([ZLandroid/widget/TextView;Ljava/util/List;Landroid/widget/Button;Landroid/widget/TextView;Z)V

    .line 160
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 162
    new-instance v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;

    move-object/from16 v18, v0

    move/from16 v19, p4

    move-object/from16 v20, v13

    move-object/from16 v21, v12

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    invoke-direct/range {v18 .. v23}, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;-><init>(Z[ZLjava/util/List;Lcom/dsh/nameblock/PickerDialog$ItemAdapter;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, v12, v6}, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Ljava/lang/Runnable;)V

    iput-object v0, v5, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->onToggle:Lcom/dsh/nameblock/PickerDialog$ItemAdapter$OnToggle;

    .line 180
    new-instance v11, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;

    move-object v0, v11

    move-object v1, v5

    move-object v14, v2

    move-object v2, v13

    move-object v15, v3

    move-object v3, v12

    move-object v4, v6

    move-object/from16 p0, v5

    move-object v5, v7

    move-object/from16 v16, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;-><init>(Lcom/dsh/nameblock/PickerDialog$ItemAdapter;[ZLjava/util/List;Ljava/lang/Runnable;Landroid/app/Dialog;Lcom/dsh/nameblock/PickerDialog$Callback;)V

    invoke-virtual {v14, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    new-instance v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;

    move-object/from16 v18, v0

    move-object/from16 v21, p0

    move-object/from16 v22, v12

    move-object/from16 v23, v16

    invoke-direct/range {v18 .. v23}, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;-><init>(Z[ZLcom/dsh/nameblock/PickerDialog$ItemAdapter;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 209
    new-instance v0, Lcom/dsh/nameblock/PickerDialog$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dsh/nameblock/PickerDialog$1;-><init>(Lcom/dsh/nameblock/PickerDialog$ItemAdapter;)V

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    new-instance v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1, v14}, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda6;-><init>(Lcom/dsh/nameblock/PickerDialog$ItemAdapter;Landroid/widget/ListView;)V

    iput-object v0, v15, Lcom/dsh/nameblock/PickerDialog$IndexBar;->onLetter:Lcom/dsh/nameblock/PickerDialog$IndexBar$OnLetter;

    .line 238
    new-instance v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda7;

    move-object/from16 v1, p5

    invoke-direct {v0, v12, v7, v1}, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;Landroid/app/Dialog;Lcom/dsh/nameblock/PickerDialog$Callback;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 245
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1fe

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 249
    :cond_1fe
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void
.end method
