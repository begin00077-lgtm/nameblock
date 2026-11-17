.class public final synthetic Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/dsh/nameblock/PickerDialog$ItemAdapter$OnToggle;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final toggled(Lcom/dsh/nameblock/PickerDialog$Item;Z)V
    .registers 4

    iget-object v0, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1, p2}, Lcom/dsh/nameblock/PickerDialog;->lambda$show$3(Ljava/util/List;Ljava/lang/Runnable;Lcom/dsh/nameblock/PickerDialog$Item;Z)V

    return-void
.end method
