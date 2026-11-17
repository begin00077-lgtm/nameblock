.class public final Lcom/dsh/nameblock/Store;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field public static final ACTION_CHANGED:Ljava/lang/String; = "com.dsh.nameblock.DATA_CHANGED"

.field public static final DEFAULT_KEYWORDS:[Ljava/lang/String;

.field public static final MODE_OFF:I = 0x0

.field public static final MODE_REJECT:I = 0x2

.field public static final MODE_SILENCE:I = 0x1

.field private static final PREF:Ljava/lang/String; = "nameblock"

.field private static instance:Lcom/dsh/nameblock/Store;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    const-string v0, "\u4f20\u5a92"

    const-string v1, "\u6587\u5316\u4f20\u64ad"

    const-string v2, "\u6559\u80b2"

    const-string v3, "\u57f9\u8bad"

    const-string v4, "\u62db\u751f"

    const-string v5, "\u8bfe\u7a0b"

    const-string v6, "\u5b66\u9662"

    const-string v7, "\u5b66\u6821"

    const-string v8, "\u5e7f\u544a"

    const-string v9, "\u63a8\u9500"

    const-string v10, "\u9a9a\u6270"

    const-string v11, "\u8bc8\u9a97"

    const-string v12, "\u8d37\u6b3e"

    const-string v13, "\u4fdd\u9669"

    const-string v14, "\u7406\u8d22"

    const-string v15, "\u623f\u4ea7"

    const-string v16, "\u4e2d\u4ecb"

    const-string v17, "\u88c5\u4fee"

    const-string v18, "\u533b\u7f8e"

    const-string v19, "\u62db\u751f\u529e"

    const-string v20, "\u5ba2\u670d\u4e2d\u5fc3"

    .line 17
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dsh/nameblock/Store;->DEFAULT_KEYWORDS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dsh/nameblock/Store;->ctx:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "nameblock"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;
    .registers 3

    const-class v0, Lcom/dsh/nameblock/Store;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/dsh/nameblock/Store;->instance:Lcom/dsh/nameblock/Store;

    if-nez v1, :cond_e

    new-instance v1, Lcom/dsh/nameblock/Store;

    invoke-direct {v1, p0}, Lcom/dsh/nameblock/Store;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/dsh/nameblock/Store;->instance:Lcom/dsh/nameblock/Store;

    .line 47
    :cond_e
    sget-object p0, Lcom/dsh/nameblock/Store;->instance:Lcom/dsh/nameblock/Store;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private notifyChanged()V
    .registers 3

    .line 38
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dsh.nameblock.DATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/dsh/nameblock/Store;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->ctx:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_15

    :catchall_15
    return-void
.end method

.method private saveList(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 257
    :cond_1e
    iget-object p2, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    invoke-direct {p0}, Lcom/dsh/nameblock/Store;->notifyChanged()V

    return-void
.end method

.method private saveNumbers(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Lcom/dsh/nameblock/Store;->notifyChanged()V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 353
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 355
    :cond_38
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "numbers"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private splitLines(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object p0

    :cond_8
    const-string v0, "\n"

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_24

    aget-object v2, p1, v1

    .line 248
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    return-object p0
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    .line 230
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 231
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 232
    :cond_10
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->keywords()Ljava/util/List;

    move-result-object v0

    .line 233
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 234
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, "kw_list"

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/dsh/nameblock/Store;->saveList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized addLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 361
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 362
    iget-object p2, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string p3, "log"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 363
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_60

    const-string v0, "\n"

    .line 365
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 366
    :goto_46
    array-length v1, p2

    if-ge v0, v1, :cond_60

    const/16 v1, 0x12b

    if-ge v0, v1, :cond_60

    .line 367
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5d

    aget-object v1, p2, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 370
    :cond_60
    iget-object p1, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "log"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    invoke-direct {p0}, Lcom/dsh/nameblock/Store;->notifyChanged()V
    :try_end_76
    .catchall {:try_start_1 .. :try_end_76} :catchall_78

    .line 372
    monitor-exit p0

    return-void

    :catchall_78
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addWhitelist(Ljava/lang/String;)V
    .registers 4

    .line 104
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 106
    :cond_b
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 108
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v1, "white_list"

    .line 109
    invoke-direct {p0, v1, v0}, Lcom/dsh/nameblock/Store;->saveList(Ljava/lang/String;Ljava/util/List;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/Store;->removeNumber(Ljava/lang/String;)V

    return-void
.end method

.method public allowed()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v0, "allowed"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_11

    .line 128
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_17

    :cond_11
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_17
    return-object p0
.end method

.method public declared-synchronized clearLogs()V
    .registers 4

    monitor-enter p0

    .line 386
    :try_start_1
    iget-object v0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    invoke-direct {p0}, Lcom/dsh/nameblock/Store;->notifyChanged()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 388
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enabled()Z
    .registers 3

    .line 51
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAllowed(Ljava/lang/String;)Z
    .registers 2

    .line 136
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->allowed()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized isBlockedNumber(Ljava/lang/String;)Z
    .registers 5

    monitor-enter p0

    .line 321
    :try_start_1
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2f

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    monitor-exit p0

    return v1

    .line 323
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 324
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2f

    if-eqz v2, :cond_16

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 326
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d_nokw

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_2d_nokw
    monitor-exit p0

    return v1

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isWhitelisted(Ljava/lang/String;)Z
    .registers 2

    .line 122
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public keywords()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v1, "kw_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_57

    .line 199
    iget-object v0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v4, "kw"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_25

    .line 202
    sget-object v0, Lcom/dsh/nameblock/Store;->DEFAULT_KEYWORDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_53

    .line 205
    :cond_25
    sget-object v4, Lcom/dsh/nameblock/Store;->DEFAULT_KEYWORDS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_29
    if-ge v6, v5, :cond_39

    aget-object v7, v4, v6

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 206
    :cond_39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3d

    .line 208
    :cond_53
    :goto_53
    invoke-direct {p0, v1, v2}, Lcom/dsh/nameblock/Store;->saveList(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 211
    :cond_57
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/Store;->splitLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 212
    iget-object v2, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v4, "kw_order_fixed"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b4

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6e
    :goto_6e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/dsh/nameblock/Store;->DEFAULT_KEYWORDS:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6e

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 216
    :cond_8a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    sget-object v2, Lcom/dsh/nameblock/Store;->DEFAULT_KEYWORDS:[Ljava/lang/String;

    array-length v6, v2

    :goto_92
    if-ge v3, v6, :cond_a2

    aget-object v7, v2, v3

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9f

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 218
    :cond_a2
    invoke-direct {p0, v1, v5}, Lcom/dsh/nameblock/Store;->saveList(Ljava/lang/String;Ljava/util/List;)V

    .line 219
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v5

    :cond_b4
    return-object v0
.end method

.method public lastCallNumber()Ljava/lang/String;
    .registers 3

    .line 148
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v0, "last_call"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_e

    :cond_d
    move-object v1, p0

    :goto_e
    return-object v1
.end method

.method public lastCallWasContact()Z
    .registers 3

    .line 153
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v0, "last_call_contact"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public lastScan()J
    .registers 4

    .line 68
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v0, "last_scan"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized logs()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 375
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v2, "log"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_33

    if-nez v1, :cond_14

    .line 377
    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    const-string v2, "\n"

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    const-string v5, "\t"

    const/4 v6, -0x1

    .line 379
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 380
    array-length v5, v4

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2e

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_33

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 382
    :cond_31
    monitor-exit p0

    return-object v0

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public matchKeyword(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2f

    .line 264
    :cond_a
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->keywords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    invoke-static {v1}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v1

    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public mode()I
    .registers 3

    .line 83
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v0, "mode"

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public nameGuard()Z
    .registers 3

    .line 60
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v0, "name_guard"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized numberLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 314
    :try_start_1
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 316
    aget-object v2, v1, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 p1, 0x1

    aget-object p1, v1, p1

    if-nez p1, :cond_29

    const-string p1, ""
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    :cond_29
    monitor-exit p0

    return-object p1

    :cond_2b
    :try_start_2b
    const-string p1, ""
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2f

    .line 318
    monitor-exit p0

    return-object p1

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized numbers()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 337
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    iget-object v1, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v2, "numbers"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_57

    :cond_19
    const-string v2, "\n"

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_22
    if-ge v4, v2, :cond_55

    aget-object v5, v1, v4

    const-string v6, "\t"

    const/4 v7, -0x1

    .line 341
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 342
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_52

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_52

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    .line 343
    aget-object v8, v5, v3

    aput-object v8, v6, v3

    const/4 v8, 0x1

    aget-object v9, v5, v8

    aput-object v9, v6, v8

    array-length v8, v5

    if-le v8, v7, :cond_4b

    aget-object v5, v5, v7

    goto :goto_4d

    :cond_4b
    const-string v5, "0"

    :goto_4d
    aput-object v5, v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_59

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 346
    :cond_55
    monitor-exit p0

    return-object v0

    .line 339
    :cond_57
    :goto_57
    monitor-exit p0

    return-object v0

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    .line 275
    :try_start_1
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p0, p1}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_79

    .line 277
    :cond_12
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 278
    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v2, v3, :cond_51

    .line 279
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 280
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/String;

    aput-object p1, v2, v1

    if-nez p2, :cond_3a

    const-string p2, ""

    :cond_3a
    aput-object p2, v2, v6

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/Store;->saveNumbers(Ljava/util/List;)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_7b

    .line 283
    monitor-exit p0

    return-void

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_51
    :try_start_51
    new-array v2, v5, [Ljava/lang/String;

    aput-object p1, v2, v1

    if-nez p2, :cond_59

    const-string p2, ""

    :cond_59
    aput-object p2, v2, v6

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 287
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x7d0

    if-le p1, p2, :cond_74

    invoke-interface {v0, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 288
    :cond_74
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/Store;->saveNumbers(Ljava/util/List;)V
    :try_end_77
    .catchall {:try_start_51 .. :try_end_77} :catchall_7b

    .line 289
    monitor-exit p0

    return-void

    .line 276
    :cond_79
    :goto_79
    monitor-exit p0

    return-void

    :catchall_7b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putNumbers(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_9e

    .line 293
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_9e

    .line 294
    :cond_b
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 295
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 296
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {p0, v3}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_14

    :cond_34
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x1

    .line 298
    aget-object v1, v1, v2

    if-nez v1, :cond_40

    const-string v1, ""

    :cond_40
    aput-object v1, v4, v2

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    .line 298
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 301
    :cond_51
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_9b

    if-eqz p1, :cond_59

    monitor-exit p0

    return-void

    .line 302
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object p1

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_66
    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 305
    aget-object v4, v3, v2

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 307
    :cond_7e
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 308
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_96

    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 310
    :cond_96
    invoke-direct {p0, p1}, Lcom/dsh/nameblock/Store;->saveNumbers(Ljava/util/List;)V
    :try_end_99
    .catchall {:try_start_59 .. :try_end_99} :catchall_9b

    .line 311
    monitor-exit p0

    return-void

    :catchall_9b
    move-exception p1

    monitor-exit p0

    throw p1

    .line 293
    :cond_9e
    :goto_9e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized recent(Ljava/lang/String;)[J
    .registers 10

    monitor-enter p0

    .line 161
    :try_start_1
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v1, "recent"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_55

    :cond_19
    const-string v2, "\n"

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_22
    if-ge v4, v2, :cond_53

    aget-object v5, v0, v4

    const-string v6, ","

    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 166
    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_50

    aget-object v6, v5, v3

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_57

    if-eqz v6, :cond_50

    const/4 p1, 0x2

    :try_start_39
    new-array v0, p1, [J

    const/4 v2, 0x1

    .line 168
    aget-object v4, v5, v2

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v3

    aget-object p1, v5, p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2
    :try_end_4c
    .catchall {:try_start_39 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    return-object v0

    .line 170
    :catchall_4e
    monitor-exit p0

    return-object v1

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 174
    :cond_53
    monitor-exit p0

    return-object v1

    .line 163
    :cond_55
    :goto_55
    monitor-exit p0

    return-object v1

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeKeyword(Ljava/lang/String;)V
    .registers 3

    .line 239
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->keywords()Ljava/util/List;

    move-result-object v0

    .line 240
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p1, "kw_list"

    .line 241
    invoke-direct {p0, p1, v0}, Lcom/dsh/nameblock/Store;->saveList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized removeNumber(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 330
    :try_start_1
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->numbers()Ljava/util/List;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 333
    :cond_27
    invoke-direct {p0, v1}, Lcom/dsh/nameblock/Store;->saveNumbers(Ljava/util/List;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 334
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeWhitelist(Ljava/lang/String;)V
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/dsh/nameblock/Store;->whitelist()Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p1, "white_list"

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/dsh/nameblock/Store;->saveList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setAllowed(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const-string p1, "allowed"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 55
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "kw_list"

    .line 226
    invoke-direct {p0, v0, p1}, Lcom/dsh/nameblock/Store;->saveList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setLastCall(Ljava/lang/String;Z)V
    .registers 4

    .line 144
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_call"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "last_call_contact"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLastScan(J)V
    .registers 4

    .line 72
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_scan"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setMode(I)V
    .registers 3

    .line 87
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setNameGuard(Z)V
    .registers 3

    .line 64
    iget-object p0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "name_guard"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public declared-synchronized setRecent(Ljava/lang/String;JI)V
    .registers 11

    monitor-enter p0

    .line 178
    :try_start_1
    invoke-static {p1}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    iget-object p3, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string p4, "recent"

    const-string v1, ""

    invoke-interface {p3, p4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_68

    const-string p4, "\n"

    .line 184
    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_35
    if-ge v2, p4, :cond_68

    aget-object v3, p3, v2

    .line 185
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_65

    :cond_57
    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0xc8

    if-lt v1, v5, :cond_5e

    goto :goto_68

    .line 187
    :cond_5e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v4

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 190
    :cond_68
    :goto_68
    iget-object p1, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "recent"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7b
    .catchall {:try_start_1 .. :try_end_7b} :catchall_7d

    .line 191
    monitor-exit p0

    return-void

    :catchall_7d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v1, "white_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    .line 95
    iget-object v0, p0, Lcom/dsh/nameblock/Store;->sp:Landroid/content/SharedPreferences;

    const-string v3, "white"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_21

    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 97
    :goto_21
    invoke-direct {p0, v1, v0}, Lcom/dsh/nameblock/Store;->saveList(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 100
    :cond_25
    invoke-direct {p0, v0}, Lcom/dsh/nameblock/Store;->splitLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
