.class public final synthetic Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Z[ZLjava/util/List;Lcom/dsh/nameblock/PickerDialog$ItemAdapter;Ljava/lang/Runnable;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;->f$1:[Z

    iput-object p3, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;->f$3:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    iput-object p5, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    iget-boolean v0, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;->f$1:[Z

    iget-object v2, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;->f$3:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    iget-object v4, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Runnable;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/dsh/nameblock/PickerDialog;->lambda$show$2(Z[ZLjava/util/List;Lcom/dsh/nameblock/PickerDialog$ItemAdapter;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
