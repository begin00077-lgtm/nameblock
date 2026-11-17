.class public final Lcom/dsh/nameblock/PickerDialog$Item;
.super Ljava/lang/Object;
.source "PickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dsh/nameblock/PickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field public final letter:Ljava/lang/String;

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dsh/nameblock/PickerDialog$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_8

    move-object p1, v0

    .line 49
    :cond_8
    iput-object p1, p0, Lcom/dsh/nameblock/PickerDialog$Item;->title:Ljava/lang/String;

    if-nez p2, :cond_d

    move-object p2, v0

    .line 50
    :cond_d
    iput-object p2, p0, Lcom/dsh/nameblock/PickerDialog$Item;->subtitle:Ljava/lang/String;

    if-nez p3, :cond_12

    move-object p3, v0

    .line 51
    :cond_12
    iput-object p3, p0, Lcom/dsh/nameblock/PickerDialog$Item;->value:Ljava/lang/String;

    if-nez p4, :cond_17

    move-object p4, v0

    .line 52
    :cond_17
    iput-object p4, p0, Lcom/dsh/nameblock/PickerDialog$Item;->letter:Ljava/lang/String;

    return-void
.end method
