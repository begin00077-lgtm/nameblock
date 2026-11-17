.class public final Lcom/dsh/nameblock/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dsh/nameblock/Scanner$Result;,
        Lcom/dsh/nameblock/Scanner$CallEntry;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 197
    :try_start_2
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 198
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_2a

    if-eqz p0, :cond_24

    move v0, p1

    :cond_24
    if-eqz v1, :cond_29

    .line 203
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_29
    return v0

    :catchall_2a
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2f
    return v0
.end method

.method private static pickName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-eqz p0, :cond_13

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    if-eqz p1, :cond_24

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    if-eqz p2, :cond_50

    .line 180
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_50

    .line 182
    :try_start_30
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "name"

    .line 183
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    return-object p1

    :cond_42
    const-string p1, "phoneFlag"

    .line 185
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_4f

    if-nez p1, :cond_50

    return-object p0

    :catchall_4f
    return-object p2

    :cond_50
    const/4 p0, 0x0

    return-object p0
.end method

.method public static recentCalls(Landroid/content/Context;I)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/dsh/nameblock/Scanner$CallEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 142
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_c1

    if-nez v4, :cond_24

    if-eqz v4, :cond_23

    .line 172
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_23
    return-object v1

    :cond_24
    :try_start_24
    const-string v5, "number"

    .line 145
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 146
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "date"

    .line 147
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "type"

    .line 148
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "cnip_name"

    .line 149
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "identify_name"

    .line 150
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-gez v6, :cond_4c

    .line 151
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 152
    :cond_4c
    :goto_4c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v11, p1

    if-ge v0, v11, :cond_ba

    if-ltz v5, :cond_61

    .line 153
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_61
    move-object v0, v3

    :goto_62
    if-ltz v6, :cond_69

    .line 154
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_6a

    :cond_69
    move-object v12, v3

    :goto_6a
    if-ltz v9, :cond_71

    .line 155
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_72

    :cond_71
    move-object v13, v3

    :goto_72
    if-ltz v10, :cond_79

    .line 156
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_7a

    :cond_79
    move-object v14, v3

    .line 154
    :goto_7a
    invoke-static {v12, v13, v14}, Lcom/dsh/nameblock/Scanner;->pickName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_83

    const-string v12, ""

    goto :goto_87

    .line 157
    :cond_83
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    :goto_87
    move-object v15, v12

    .line 158
    invoke-static {v0}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/dsh/nameblock/Scanner$CallEntry;

    const/4 v13, 0x1

    if-eqz v12, :cond_9b

    .line 161
    iget v0, v12, Lcom/dsh/nameblock/Scanner$CallEntry;->count:I

    add-int/2addr v0, v13

    iput v0, v12, Lcom/dsh/nameblock/Scanner$CallEntry;->count:I

    goto :goto_4c

    .line 164
    :cond_9b
    new-instance v12, Lcom/dsh/nameblock/Scanner$CallEntry;

    if-ltz v7, :cond_a4

    .line 165
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    goto :goto_a6

    :cond_a4
    const-wide/16 v16, 0x0

    :goto_a6
    if-ltz v8, :cond_ac

    .line 166
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    :cond_ac
    move/from16 v18, v13

    move-object v13, v12

    move-object v14, v0

    invoke-direct/range {v13 .. v18}, Lcom/dsh/nameblock/Scanner$CallEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 167
    invoke-interface {v2, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b9
    .catchall {:try_start_24 .. :try_end_b9} :catchall_c0

    goto :goto_4c

    :cond_ba
    if-eqz v4, :cond_c6

    .line 172
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_c6

    :catchall_c0
    move-object v3, v4

    :catchall_c1
    if-eqz v3, :cond_c6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c6
    :goto_c6
    return-object v1
.end method

.method public static scan(Landroid/content/Context;Z)Lcom/dsh/nameblock/Scanner$Result;
    .registers 33

    const-string v0, "name"

    const-string v1, "date>"

    .line 33
    new-instance v2, Lcom/dsh/nameblock/Scanner$Result;

    invoke-direct {v2}, Lcom/dsh/nameblock/Scanner$Result;-><init>()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 35
    invoke-static/range {p0 .. p0}, Lcom/dsh/nameblock/Store;->get(Landroid/content/Context;)Lcom/dsh/nameblock/Store;

    move-result-object v10

    if-eqz p1, :cond_16

    const-wide/16 v13, 0x0

    goto :goto_1b

    .line 36
    :cond_16
    invoke-virtual {v10}, Lcom/dsh/nameblock/Store;->lastScan()J

    move-result-wide v3

    move-wide v13, v3

    .line 39
    :goto_1b
    :try_start_1b
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date DESC"

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_32} :catch_1dc
    .catchall {:try_start_1b .. :try_end_32} :catchall_1b5

    if-nez v1, :cond_3e

    :try_start_34
    const-string v0, "\u65e0\u6cd5\u8bfb\u53d6\u901a\u8bdd\u8bb0\u5f55"

    .line 43
    iput-object v0, v2, Lcom/dsh/nameblock/Scanner$Result;->error:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_38} :catch_1b3
    .catchall {:try_start_34 .. :try_end_38} :catchall_1b0

    if-eqz v1, :cond_3d

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3d
    return-object v2

    :cond_3e
    :try_start_3e
    const-string v3, "number"

    .line 46
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 47
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "type"

    .line 48
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "date"

    .line 49
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "duration"

    .line 50
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "cnip_name"

    .line 51
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v11, "identify_name"

    .line 52
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    if-gez v4, :cond_6c

    .line 53
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 55
    :cond_6c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide v18, 0x1cf7c5800L

    sub-long v18, v16, v18

    const-wide v20, 0x9a7ec800L

    sub-long v16, v16, v20

    .line 58
    invoke-virtual {v10}, Lcom/dsh/nameblock/Store;->allowed()Ljava/util/Set;

    move-result-object v0

    .line 61
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v20, v13

    .line 62
    :goto_89
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    const/16 v23, 0x0

    if-eqz v22, :cond_171

    .line 63
    iget v15, v2, Lcom/dsh/nameblock/Scanner$Result;->scanned:I

    move-object/from16 p1, v12

    const/4 v12, 0x1

    add-int/2addr v15, v12

    iput v15, v2, Lcom/dsh/nameblock/Scanner$Result;->scanned:I

    if-ltz v5, :cond_a0

    .line 64
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    goto :goto_a1

    :cond_a0
    move v15, v12

    :goto_a1
    if-ltz v6, :cond_a8

    .line 65
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    goto :goto_aa

    :cond_a8
    const-wide/16 v24, 0x0

    :goto_aa
    cmp-long v22, v24, v13

    if-lez v22, :cond_b0

    move-wide/from16 v13, v24

    :cond_b0
    if-ltz v3, :cond_b7

    .line 68
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_b9

    :cond_b7
    const/16 v22, 0x0

    .line 69
    :goto_b9
    invoke-static/range {v22 .. v22}, Lcom/dsh/nameblock/Norm;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 70
    invoke-static {v12}, Lcom/dsh/nameblock/Norm;->isServiceNumber(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_cb

    move/from16 v22, v3

    move/from16 v24, v4

    :goto_c7
    move-object/from16 v3, p1

    goto/16 :goto_16a

    :cond_cb
    if-ltz v7, :cond_d4

    .line 71
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move/from16 v22, v3

    goto :goto_d8

    :cond_d4
    move/from16 v22, v3

    const-wide/16 v26, 0x0

    :goto_d8
    const/4 v3, 0x2

    if-ne v15, v3, :cond_e8

    cmp-long v3, v24, v18

    if-lez v3, :cond_e2

    .line 75
    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e2
    :goto_e2
    move-object/from16 v3, p1

    move/from16 v24, v4

    goto/16 :goto_16a

    :cond_e8
    const/4 v3, 0x1

    if-ne v15, v3, :cond_f8

    const-wide/16 v28, 0xf

    cmp-long v3, v26, v28

    if-ltz v3, :cond_f8

    cmp-long v3, v24, v16

    if-lez v3, :cond_f8

    .line 79
    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f8
    const/4 v3, 0x4

    if-ne v15, v3, :cond_fc

    goto :goto_e2

    :cond_fc
    if-ltz v4, :cond_103

    .line 83
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_104

    :cond_103
    const/4 v3, 0x0

    :goto_104
    if-ltz v8, :cond_10b

    .line 84
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_10c

    :cond_10b
    const/4 v15, 0x0

    :goto_10c
    if-ltz v11, :cond_119

    .line 85
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v30, v24

    move/from16 v24, v4

    move-object/from16 v4, v30

    goto :goto_11c

    :cond_119
    move/from16 v24, v4

    const/4 v4, 0x0

    .line 87
    :goto_11c
    invoke-static {v3, v15, v4}, Lcom/dsh/nameblock/Scanner;->pickName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_123

    :goto_122
    goto :goto_c7

    .line 90
    :cond_123
    invoke-static {v3}, Lcom/dsh/nameblock/Norm;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12e

    goto :goto_122

    .line 92
    :cond_12e
    invoke-static {v9, v12}, Lcom/dsh/nameblock/Scanner;->isContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_135

    goto :goto_122

    .line 93
    :cond_135
    invoke-virtual {v10, v12}, Lcom/dsh/nameblock/Store;->isWhitelisted(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13c

    goto :goto_122

    :cond_13c
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    aput-object v12, v15, v23

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_149

    :goto_147
    const/4 v4, 0x1

    goto :goto_15e

    :cond_149
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u00b7 "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_147

    :goto_15e
    aput-object v3, v15, v4

    move-object/from16 v3, p1

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget v12, v2, Lcom/dsh/nameblock/Scanner$Result;->added:I

    add-int/2addr v12, v4

    iput v12, v2, Lcom/dsh/nameblock/Scanner$Result;->added:I

    :goto_16a
    move-object v12, v3

    move/from16 v3, v22

    move/from16 v4, v24

    goto/16 :goto_89

    :cond_171
    move-object v3, v12

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v5, 0xbb8

    if-le v4, v5, :cond_19b

    .line 99
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 101
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_183
    move/from16 v6, v23

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-int/lit8 v23, v6, 0x1

    if-lt v6, v5, :cond_196

    goto :goto_19a

    .line 103
    :cond_196
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_183

    :cond_19a
    :goto_19a
    move-object v0, v4

    .line 107
    :cond_19b
    invoke-virtual {v10, v3}, Lcom/dsh/nameblock/Store;->putNumbers(Ljava/util/List;)V

    .line 108
    invoke-virtual {v10, v0}, Lcom/dsh/nameblock/Store;->setAllowed(Ljava/util/Set;)V

    move-wide/from16 v3, v20

    .line 109
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/dsh/nameblock/Store;->setLastScan(J)V
    :try_end_1aa
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_1aa} :catch_1b3
    .catchall {:try_start_3e .. :try_end_1aa} :catchall_1b0

    if-eqz v1, :cond_1e6

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1e6

    :catchall_1b0
    move-exception v0

    move-object v15, v1

    goto :goto_1b7

    :catch_1b3
    move-object v15, v1

    goto :goto_1dd

    :catchall_1b5
    move-exception v0

    const/4 v15, 0x0

    .line 113
    :goto_1b7
    :try_start_1b7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/dsh/nameblock/Scanner$Result;->error:Ljava/lang/String;

    if-eqz v15, :cond_1e6

    goto :goto_1e3

    :catch_1dc
    const/4 v15, 0x0

    :goto_1dd
    const-string v0, "\u7f3a\u5c11\u901a\u8bdd\u8bb0\u5f55\u6743\u9650"

    .line 111
    iput-object v0, v2, Lcom/dsh/nameblock/Scanner$Result;->error:Ljava/lang/String;
    :try_end_1e1
    .catchall {:try_start_1b7 .. :try_end_1e1} :catchall_1e7

    if-eqz v15, :cond_1e6

    .line 115
    :goto_1e3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1e6
    :goto_1e6
    return-object v2

    :catchall_1e7
    move-exception v0

    if-eqz v15, :cond_1ed

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_1ed
    throw v0
.end method
