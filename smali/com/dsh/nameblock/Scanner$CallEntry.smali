.class public final Lcom/dsh/nameblock/Scanner$CallEntry;
.super Ljava/lang/Object;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dsh/nameblock/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallEntry"
.end annotation


# instance fields
.field public count:I

.field public final date:J

.field public final name:Ljava/lang/String;

.field public final number:Ljava/lang/String;

.field public final type:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 7

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 126
    iput v0, p0, Lcom/dsh/nameblock/Scanner$CallEntry;->count:I

    .line 129
    iput-object p1, p0, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;

    .line 131
    iput-wide p3, p0, Lcom/dsh/nameblock/Scanner$CallEntry;->date:J

    .line 132
    iput p5, p0, Lcom/dsh/nameblock/Scanner$CallEntry;->type:I

    return-void
.end method
