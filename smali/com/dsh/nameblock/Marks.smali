.class public final Lcom/dsh/nameblock/Marks;
.super Ljava/lang/Object;
.source "Marks.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static flagOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "\"phoneFlag\":\""

    .line 43
    invoke-static {p0, v0}, Lcom/dsh/nameblock/Marks;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "\"name\":\""

    invoke-static {p0, v0}, Lcom/dsh/nameblock/Marks;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public static of(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "identify_name"

    .line 15
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_f

    return-object v2

    :cond_f
    const/4 v1, 0x0

    .line 19
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 20
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x2

    new-array v5, p0, [Ljava/lang/String;

    const-string p0, "number"

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 p0, 0x1

    aput-object v0, v5, p0

    const-string v6, "number=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "date DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_31

    const/4 p0, -0x1

    goto :goto_35

    .line 25
    :cond_31
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    :goto_35
    if-eqz v1, :cond_59

    .line 27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_59

    if-ltz p0, :cond_59

    .line 28
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_59

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_59

    invoke-static {p0}, Lcom/dsh/nameblock/Marks;->flagOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_5f

    if-eqz v1, :cond_58

    .line 34
    :try_start_55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_58

    :catchall_58
    :cond_58
    return-object p0

    :cond_59
    if-eqz v1, :cond_62

    :goto_5b
    :try_start_5b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_62

    goto :goto_62

    :catchall_5f
    if-eqz v1, :cond_62

    goto :goto_5b

    :catchall_62
    :cond_62
    :goto_62
    return-object v2
.end method

.method private static valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ""

    if-gez v0, :cond_9

    return-object v1

    .line 51
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    const/16 p1, 0x22

    .line 52
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-le p1, v0, :cond_1e

    .line 53
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_1e
    return-object v1
.end method
