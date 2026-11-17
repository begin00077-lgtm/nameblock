.class Lcom/dsh/nameblock/PickerDialog$1;
.super Ljava/lang/Object;
.source "PickerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dsh/nameblock/PickerDialog;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZZLcom/dsh/nameblock/PickerDialog$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;


# direct methods
.method constructor <init>(Lcom/dsh/nameblock/PickerDialog$ItemAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/dsh/nameblock/PickerDialog$1;->val$adapter:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 215
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 216
    iget-object p2, p0, Lcom/dsh/nameblock/PickerDialog$1;->val$adapter:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    .line 217
    iget-object p2, p0, Lcom/dsh/nameblock/PickerDialog$1;->val$adapter:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    iget-object p2, p2, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->all:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1d
    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dsh/nameblock/PickerDialog$Item;

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_47

    iget-object p4, p3, Lcom/dsh/nameblock/PickerDialog$Item;->title:Ljava/lang/String;

    .line 219
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_47

    iget-object p4, p3, Lcom/dsh/nameblock/PickerDialog$Item;->subtitle:Ljava/lang/String;

    .line 220
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1d

    .line 221
    :cond_47
    iget-object p4, p0, Lcom/dsh/nameblock/PickerDialog$1;->val$adapter:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    iget-object p4, p4, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->visible:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 224
    :cond_4f
    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$1;->val$adapter:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    invoke-virtual {p0}, Lcom/dsh/nameblock/PickerDialog$ItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
