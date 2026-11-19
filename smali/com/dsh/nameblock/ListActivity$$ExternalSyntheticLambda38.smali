.class public final synthetic Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/dsh/nameblock/ListActivity$RowData;


# direct methods
.method public synthetic constructor <init>(Lcom/dsh/nameblock/ListActivity$RowData;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda38;->f$0:Lcom/dsh/nameblock/ListActivity$RowData;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda38;->f$0:Lcom/dsh/nameblock/ListActivity$RowData;

    invoke-static {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$bindRow$30(Lcom/dsh/nameblock/ListActivity$RowData;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
