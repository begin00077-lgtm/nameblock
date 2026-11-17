.class public final synthetic Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/app/Dialog;

.field public final synthetic f$2:Lcom/dsh/nameblock/PickerDialog$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/app/Dialog;Lcom/dsh/nameblock/PickerDialog$Callback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda7;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda7;->f$1:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda7;->f$2:Lcom/dsh/nameblock/PickerDialog$Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda7;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda7;->f$1:Landroid/app/Dialog;

    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda7;->f$2:Lcom/dsh/nameblock/PickerDialog$Callback;

    invoke-static {v0, v1, p0, p1}, Lcom/dsh/nameblock/PickerDialog;->lambda$show$7(Ljava/util/List;Landroid/app/Dialog;Lcom/dsh/nameblock/PickerDialog$Callback;Landroid/view/View;)V

    return-void
.end method
