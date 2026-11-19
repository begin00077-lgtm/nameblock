.class public final synthetic Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda6;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$$ExternalSyntheticLambda6;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/dsh/nameblock/PickerDialog$Item;

    check-cast p2, Lcom/dsh/nameblock/PickerDialog$Item;

    invoke-static {p0, p1, p2}, Lcom/dsh/nameblock/ListActivity;->lambda$pickContact$15(Ljava/util/Map;Lcom/dsh/nameblock/PickerDialog$Item;Lcom/dsh/nameblock/PickerDialog$Item;)I

    move-result p0

    return p0
.end method
