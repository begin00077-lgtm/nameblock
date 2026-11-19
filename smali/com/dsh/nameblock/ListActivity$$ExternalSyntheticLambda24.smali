.class public final synthetic Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dsh/nameblock/ListActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/dsh/nameblock/Scanner$CallEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/dsh/nameblock/ListActivity;ZLcom/dsh/nameblock/Scanner$CallEntry;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;->f$0:Lcom/dsh/nameblock/ListActivity;

    iput-boolean p2, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;->f$1:Z

    iput-object p3, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;->f$2:Lcom/dsh/nameblock/Scanner$CallEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;->f$0:Lcom/dsh/nameblock/ListActivity;

    iget-boolean v1, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;->f$1:Z

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda24;->f$2:Lcom/dsh/nameblock/Scanner$CallEntry;

    invoke-static {v0, v1, p0}, Lcom/dsh/nameblock/ListActivity;->$r8$lambda$uj6tp7aODKs8cN517vj5BHfSiR0(Lcom/dsh/nameblock/ListActivity;ZLcom/dsh/nameblock/Scanner$CallEntry;)V

    return-void
.end method
