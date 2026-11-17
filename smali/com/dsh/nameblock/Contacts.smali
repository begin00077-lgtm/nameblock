.class public final Lcom/dsh/nameblock/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isContact(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3b

    .line 16
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p0, 0x0

    .line 19
    :try_start_f
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 20
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 21
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_36

    if-eqz v1, :cond_30

    move v0, p1

    :cond_30
    if-eqz p0, :cond_35

    .line 25
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_35
    return v0

    :catchall_36
    if-eqz p0, :cond_3b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3b
    :goto_3b
    return v0
.end method
