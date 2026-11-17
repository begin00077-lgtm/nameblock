.class public final synthetic Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Z[ZLcom/dsh/nameblock/PickerDialog$ItemAdapter;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;->f$0:Z

    iput-object p2, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;->f$1:[Z

    iput-object p3, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;->f$2:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    iput-object p4, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 16

    iget-boolean v0, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;->f$1:[Z

    iget-object v2, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;->f$2:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    iget-object v3, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Runnable;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lcom/dsh/nameblock/PickerDialog;->lambda$show$5(Z[ZLcom/dsh/nameblock/PickerDialog$ItemAdapter;Ljava/util/List;Ljava/lang/Runnable;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method
