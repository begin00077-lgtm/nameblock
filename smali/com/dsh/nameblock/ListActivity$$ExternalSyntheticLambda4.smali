.class public final synthetic Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/dsh/nameblock/PickerDialog$Callback;


# instance fields
.field public final synthetic f$0:Lcom/dsh/nameblock/ListActivity;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/Map;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;->f$0:Lcom/dsh/nameblock/ListActivity;

    iput-object p2, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;->f$1:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onPicked(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;->f$0:Lcom/dsh/nameblock/ListActivity;

    iget-object v1, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;->f$1:Ljava/util/Map;

    iget-boolean p0, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda4;->f$2:Z

    invoke-static {v0, v1, p0, p1}, Lcom/dsh/nameblock/ListActivity;->$r8$lambda$9ek1wbxyuZA19qhdaW1TUjCZroY(Lcom/dsh/nameblock/ListActivity;Ljava/util/Map;ZLjava/util/List;)V

    return-void
.end method
