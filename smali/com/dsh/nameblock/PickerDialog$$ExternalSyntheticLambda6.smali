.class public final synthetic Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/dsh/nameblock/PickerDialog$IndexBar$OnLetter;


# instance fields
.field public final synthetic f$0:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

.field public final synthetic f$1:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lcom/dsh/nameblock/PickerDialog$ItemAdapter;Landroid/widget/ListView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda6;->f$0:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    iput-object p2, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda6;->f$1:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final onLetter(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda6;->f$0:Lcom/dsh/nameblock/PickerDialog$ItemAdapter;

    iget-object p0, p0, Lcom/dsh/nameblock/PickerDialog$$ExternalSyntheticLambda6;->f$1:Landroid/widget/ListView;

    invoke-static {v0, p0, p1}, Lcom/dsh/nameblock/PickerDialog;->lambda$show$6(Lcom/dsh/nameblock/PickerDialog$ItemAdapter;Landroid/widget/ListView;Ljava/lang/String;)V

    return-void
.end method
