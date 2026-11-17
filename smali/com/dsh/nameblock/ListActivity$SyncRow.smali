.class final Lcom/dsh/nameblock/ListActivity$SyncRow;
.super Ljava/lang/Object;
.source "ListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dsh/nameblock/ListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncRow"
.end annotation


# instance fields
.field final call:Lcom/dsh/nameblock/Scanner$CallEntry;

.field final contact:Z


# direct methods
.method constructor <init>(Lcom/dsh/nameblock/Scanner$CallEntry;Z)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity$SyncRow;->call:Lcom/dsh/nameblock/Scanner$CallEntry;

    .line 43
    iput-boolean p2, p0, Lcom/dsh/nameblock/ListActivity$SyncRow;->contact:Z

    return-void
.end method
