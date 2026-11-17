.class public final synthetic Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/dsh/nameblock/CharPickerView$Listener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda25;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda25;->f$0:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/dsh/nameblock/ListActivity;->lambda$showCharPicker$27(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
