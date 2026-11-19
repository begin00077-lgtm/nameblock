.class final Lcom/dsh/nameblock/ListActivity$RowData;
.super Ljava/lang/Object;
.source "ListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dsh/nameblock/ListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RowData"
.end annotation


# instance fields
.field action:Ljava/lang/Runnable;

.field actionLabel:Ljava/lang/String;

.field actionPill:Z

.field glyph:Ljava/lang/String;

.field sub:Ljava/lang/String;

.field subAction:Ljava/lang/Runnable;

.field subActionLabel:Ljava/lang/String;

.field time:Ljava/lang/String;

.field title:Ljava/lang/String;

.field toggle:Ljava/lang/Runnable;

.field toggleLabel:Ljava/lang/String;

.field toggleOn:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dsh/nameblock/ListActivity$RowData-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/dsh/nameblock/ListActivity$RowData;-><init>()V

    return-void
.end method
