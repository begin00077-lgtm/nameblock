.class public final synthetic Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/lang/Runnable;

.field public final synthetic f$4:Landroid/app/Dialog;

.field public final synthetic f$5:Lcom/dsh/nameblock/PickerDialog$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/dsh/nameblock/PickerDialog$ItemAdapter;[ZLjava/util/List;Ljava/lang/Runnable;Landroid/app/Dialog;Lcom/dsh/nameblock/PickerDialog$Callback;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$0:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    iput-object p2, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$1:[Z

    iput-object p3, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$4:Landroid/app/Dialog;

    iput-object p6, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$5:Lcom/dsh/nameblock/PickerDialog$Callback;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 17

    move-object v0, p0

    iget-object v1, v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$0:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    iget-object v2, v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$1:[Z

    iget-object v3, v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iget-object v4, v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Runnable;

    iget-object v5, v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$4:Landroid/app/Dialog;

    iget-object v6, v0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda4;->f$5:Lcom/dsh/nameblock/PickerDialog$Callback;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-wide v9, p4

    invoke-static/range {v0 .. v10}, Lcom/dsh/nameblock/PickerDialog;->lambda$show$4(Lcom/dsh/nameblock/PickerDialog$ItemAdapter;[ZLjava/util/List;Ljava/lang/Runnable;Landroid/app/Dialog;Lcom/dsh/nameblock/PickerDialog$Callback;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
