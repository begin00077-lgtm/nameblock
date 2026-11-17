.class public final synthetic Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroid/widget/Button;

.field public final synthetic f$4:Landroid/widget/TextView;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>([ZLandroid/widget/TextView;Ljava/util/List;Landroid/widget/Button;Landroid/widget/TextView;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$0:[Z

    iput-object p2, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$3:Landroid/widget/Button;

    iput-object p5, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$4:Landroid/widget/TextView;

    iput-boolean p6, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$0:[Z

    iget-object v1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$3:Landroid/widget/Button;

    iget-object v4, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$4:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda1;->f$5:Z

    invoke-static/range {v0 .. v5}, Lcom/dsh/nameblock/PickerDialog;->lambda$show$1([ZLandroid/widget/TextView;Ljava/util/List;Landroid/widget/Button;Landroid/widget/TextView;Z)V

    return-void
.end method
