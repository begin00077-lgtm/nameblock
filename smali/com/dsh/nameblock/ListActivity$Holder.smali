.class final Lcom/dsh/nameblock/ListActivity$Holder;
.super Ljava/lang/Object;
.source "ListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dsh/nameblock/ListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# instance fields
.field action:Landroid/widget/TextView;

.field glyph:Landroid/widget/TextView;

.field sub:Landroid/widget/TextView;

.field time:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field toggle:Landroid/widget/Switch;

.field toggleLabel:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dsh/nameblock/ListActivity$Holder-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity$Holder;-><init>()V

    return-void
.end method
