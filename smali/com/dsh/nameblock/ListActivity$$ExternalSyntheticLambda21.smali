.class public final synthetic Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dsh/nameblock/ListActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;->f$0:Lcom/dsh/nameblock/ListActivity;

    iput-object p2, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;->f$0:Lcom/dsh/nameblock/ListActivity;

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;->f$1:Ljava/util/List;

    iget-boolean p0, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda21;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/dsh/nameblock/ListActivity;->$r8$lambda$0Eutvg_jJmL06MRmAnCyn_joSCs(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;Z)V

    return-void
.end method
