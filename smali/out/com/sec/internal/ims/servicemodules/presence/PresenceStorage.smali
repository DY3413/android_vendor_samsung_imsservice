.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;
.super Ljava/lang/Object;
.source "PresenceStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$DatabaseHelper;,
        Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$PresenceTable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceStorage"

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$DatabaseHelper;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "_id"

    const-string v1, "contact_id"

    const-string/jumbo v2, "tel_uri"

    const-string/jumbo v3, "uri"

    const-string/jumbo v4, "timestamp"

    const-string v5, "phone_id"

    .line 165
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->PRESENCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;I)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    .line 49
    new-instance p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$DatabaseHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$DatabaseHelper;

    .line 50
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    return-void
.end method

.method private endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    if-nez p1, :cond_a

    const-string p0, "PresenceStorage"

    const-string p1, "endTransaction: db is null"

    .line 254
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 259
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 261
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :goto_12
    return-void
.end method

.method private fillPresenceInfo(Landroid/database/Cursor;)Lcom/sec/ims/presence/PresenceInfo;
    .registers 4

    .line 154
    new-instance p0, Lcom/sec/ims/presence/PresenceInfo$Builder;

    invoke-direct {p0}, Lcom/sec/ims/presence/PresenceInfo$Builder;-><init>()V

    const-string/jumbo v0, "tel_uri"

    .line 155
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->tel_uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string/jumbo v0, "uri"

    .line 156
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string/jumbo v0, "timestamp"

    .line 157
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->timestamp(J)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "phone_id"

    .line 158
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->phoneId(I)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->build()Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    const-string v0, "_id"

    .line 161
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/presence/PresenceInfo;->setId(J)V

    return-object p0
.end method

.method private fillPresenceInfo(Landroid/content/ContentValues;Lcom/sec/ims/presence/PresenceInfo;)V
    .registers 5

    .line 144
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getContactId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    const-string p0, "contact_id"

    .line 145
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string/jumbo p0, "tel_uri"

    .line 147
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "uri"

    .line 148
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "phone_id"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 115
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uris"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_26
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    .line 120
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "presence"

    const-string/jumbo v2, "tel_uri = ? AND phone_id = ?"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_26

    :cond_49
    return-void
.end method

.method private update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;)V"
        }
    .end annotation

    .line 125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 126
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " PresenceInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/presence/PresenceInfo;

    .line 129
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->fillPresenceInfo(Landroid/content/ContentValues;Lcom/sec/ims/presence/PresenceInfo;)V

    .line 132
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "presence"

    if-ltz v2, :cond_63

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result v2

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    if-ne v2, v4, :cond_63

    .line 134
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id = ?"

    .line 135
    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2b

    :cond_63
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 138
    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/presence/PresenceInfo;->setId(J)V

    goto :goto_2b

    :cond_6c
    return-void
.end method


# virtual methods
.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 179
    :cond_4
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get: teluri-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v7, "tel_uri = ? AND phone_id = ?"

    .line 182
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v8

    .line 187
    :try_start_2d
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2d .. :try_end_33} :catch_5b

    const-string v5, "presence"

    .line 193
    sget-object v6, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 195
    :try_start_3e
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4b

    .line 196
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 197
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->fillPresenceInfo(Landroid/database/Cursor;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_4f

    .line 199
    :cond_4b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_4f
    move-exception p0

    if-eqz p1, :cond_5a

    .line 193
    :try_start_52
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5a
    :goto_5a
    throw p0

    :catch_5b
    move-exception p0

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get: SQLiteDiskIOException: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public get(Ljava/util/Set;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 207
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    .line 208
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get: querying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " telUris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PresenceStorage"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v1, :cond_28

    return-object v0

    .line 213
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel_uri"

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in ("

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3c
    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_3c

    const-string v2, ","

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_6d
    const-string p1, ")"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "phone_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = ?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 224
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v9

    .line 225
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get: selection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 230
    :try_start_b6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_bc
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_b6 .. :try_end_bc} :catch_117

    const-string v6, "presence"

    .line 236
    sget-object v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_111

    .line 239
    :try_start_c9
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get: presenceInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_111

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 243
    :cond_f1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->fillPresenceInfo(Landroid/database/Cursor;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_104
    .catchall {:try_start_c9 .. :try_end_104} :catchall_107

    if-nez v1, :cond_f1

    goto :goto_111

    :catchall_107
    move-exception p0

    .line 236
    :try_start_108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_10c

    goto :goto_110

    :catchall_10c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_110
    throw p0

    :cond_111
    :goto_111
    if-eqz v0, :cond_116

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_116
    return-object p1

    :catch_117
    move-exception p0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get: SQLiteDiskIOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public persist()V
    .registers 9

    const-string v0, "persist: SQLiteDiskIOException: "

    .line 54
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    const-string v2, "persist:"

    const-string v3, "PresenceStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->getUpdatedUriList()Ljava/util/List;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->getTrashedUriList()Ljava/util/List;

    move-result-object v2

    .line 61
    :try_start_17
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$DatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_17 .. :try_end_1d} :catch_bb

    .line 67
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz v1, :cond_5b

    .line 70
    :try_start_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5b

    .line 71
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    .line 73
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {v7, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v6

    if-eqz v6, :cond_49

    .line 75
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_49
    const-string v6, "persist: not found in cache."

    .line 77
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 80
    :cond_4f
    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    goto :goto_5b

    :catchall_53
    move-exception v0

    goto :goto_b7

    :catch_55
    move-exception v0

    goto :goto_6d

    :catch_57
    move-exception v1

    goto :goto_86

    :catch_59
    move-exception v0

    goto :goto_9d

    :cond_5b
    :goto_5b
    if-eqz v2, :cond_66

    .line 82
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_66

    .line 83
    invoke-direct {p0, v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 85
    :cond_66
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_69
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_22 .. :try_end_69} :catch_59
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_22 .. :try_end_69} :catch_57
    .catch Landroid/database/SQLException; {:try_start_22 .. :try_end_69} :catch_55
    .catchall {:try_start_22 .. :try_end_69} :catchall_53

    .line 93
    :goto_69
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_b6

    .line 91
    :goto_6d
    :try_start_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist: SQLException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 89
    :goto_86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 87
    :goto_9d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist: SQLiteFullException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_6d .. :try_end_b5} :catchall_53

    goto :goto_69

    :goto_b6
    return-void

    .line 93
    :goto_b7
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    throw v0

    :catch_bb
    move-exception p0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .registers 4

    const-string/jumbo v0, "reset:"

    const-string v1, "PresenceStorage"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_8 .. :try_end_e} :catch_20

    .line 109
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->mPhoneId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v1, "presence"

    const-string v2, "phone_id = ?"

    .line 111
    invoke-virtual {v0, v1, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_20
    move-exception p0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset: SQLiteDiskIOException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
