.class final Lcom/dsh/nameblock/ListActivity$RowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dsh/nameblock/ListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RowAdapter"
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dsh/nameblock/ListActivity$RowData;",
            ">;"
        }
    .end annotation
.end field

.field private final host:Lcom/dsh/nameblock/ListActivity;


# direct methods
.method constructor <init>(Lcom/dsh/nameblock/ListActivity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dsh/nameblock/ListActivity;",
            "Ljava/util/List<",
            "Lcom/dsh/nameblock/ListActivity$RowData;",
            ">;)V"
        }
    .end annotation

    .line 1232
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1233
    iput-object p1, p0, Lcom/dsh/nameblock/ListActivity$RowAdapter;->host:Lcom/dsh/nameblock/ListActivity;

    .line 1234
    iput-object p2, p0, Lcom/dsh/nameblock/ListActivity$RowAdapter;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 1239
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$RowAdapter;->data:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1244
    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$RowAdapter;->data:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    if-nez p2, :cond_f

    .line 1256
    iget-object p2, p0, Lcom/dsh/nameblock/ListActivity$RowAdapter;->host:Lcom/dsh/nameblock/ListActivity;

    invoke-static {p2}, Lcom/dsh/nameblock/ListActivity;->-$$Nest$mbuildRowView(Lcom/dsh/nameblock/ListActivity;)Landroid/view/View;

    move-result-object p2

    .line 1257
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dsh/nameblock/ListActivity$Holder;

    goto :goto_15

    .line 1259
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dsh/nameblock/ListActivity$Holder;

    .line 1261
    :goto_15
    iget-object v0, p0, Lcom/dsh/nameblock/ListActivity$RowAdapter;->host:Lcom/dsh/nameblock/ListActivity;

    iget-object p0, p0, Lcom/dsh/nameblock/ListActivity$RowAdapter;->data:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dsh/nameblock/ListActivity$RowData;

    invoke-static {v0, p3, p0}, Lcom/dsh/nameblock/ListActivity;->-$$Nest$mbindRow(Lcom/dsh/nameblock/ListActivity;Lcom/dsh/nameblock/ListActivity$Holder;Lcom/dsh/nameblock/ListActivity$RowData;)V

    return-object p2
.end method
