.class public Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;
.super Ljava/lang/Object;
.source "SocialPresenceStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;,
        Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$PresenceTable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SocialPresenceStorage"

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "_id"

    const-string v1, "contact_id"

    const-string v2, "raw_contact_id"

    const-string/jumbo v3, "tel_uri"

    const-string/jumbo v4, "uri"

    const-string/jumbo v5, "timestamp"

    const-string v6, "display_name"

    const-string v7, "phone_number"

    const-string v8, "avatar_uri"

    const-string v9, "birthday"

    const-string v10, "email"

    const-string v11, "activities"

    const-string v12, "mood_text"

    const-string v13, "hyper"

    const-string v14, "facebook"

    const-string/jumbo v15, "twitter"

    const-string v16, "cyworld"

    const-string v17, "phone_id"

    .line 189
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->PRESENCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 49
    new-instance p1, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    .line 50
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    return-void
.end method

.method private endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "SocialPresenceStorage"

    const-string p1, "endTransaction: db is null"

    .line 290
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private fillPresenceInfo(Landroid/database/Cursor;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 2

    .line 166
    new-instance p0, Lcom/sec/ims/presence/PresenceInfo$Builder;

    invoke-direct {p0}, Lcom/sec/ims/presence/PresenceInfo$Builder;-><init>()V

    const-string/jumbo v0, "tel_uri"

    .line 167
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->tel_uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string/jumbo v0, "uri"

    .line 168
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "activities"

    .line 169
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->activities(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "avatar_uri"

    .line 170
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->avatar_uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "birthday"

    .line 171
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->birthday(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "cyworld"

    .line 172
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->cyworld(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "display_name"

    .line 173
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->display_name(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "email"

    .line 174
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->email(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "facebook"

    .line 175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->facebook(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "hyper"

    .line 176
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->hyper(I)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "mood_text"

    .line 177
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->mood_text(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "phone_number"

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->phone_number(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string/jumbo v0, "timestamp"

    .line 179
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->timestamp(J)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string/jumbo v0, "twitter"

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->twitter(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->state(I)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    const-string v0, "phone_id"

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->phoneId(I)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->build()Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    const-string v0, "_id"

    .line 185
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/presence/PresenceInfo;->setId(J)V

    return-object p0
.end method

.method private fillPresenceInfo(Landroid/content/ContentValues;Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 2

    .line 144
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getContactId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getContactId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "contact_id"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getRawContactId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 148
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getRawContactId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "tel_uri"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "display_name"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getAvatarUri()Ljava/lang/String;

    move-result-object p0

    const-string v0, "avatar_uri"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getBirthday()Ljava/lang/String;

    move-result-object p0

    const-string v0, "birthday"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getEmail()Ljava/lang/String;

    move-result-object p0

    const-string v0, "email"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getActivities()Ljava/lang/String;

    move-result-object p0

    const-string v0, "activities"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getHyper()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "hyper"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getFacebook()Ljava/lang/String;

    move-result-object p0

    const-string v0, "facebook"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTwitter()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "twitter"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getCyworld()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cyworld"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "phone_id"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 3
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
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uris"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocialPresenceStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "presence"

    const-string/jumbo v2, "tel_uri = ? AND phone_id = ?"

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 7
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
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

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

    const-string v3, "SocialPresenceStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/presence/PresenceInfo;

    .line 129
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->fillPresenceInfo(Landroid/content/ContentValues;Lcom/sec/ims/presence/PresenceInfo;)V

    .line 132
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "presence"

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result v2

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 134
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "_id = ?"

    .line 135
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 138
    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/presence/PresenceInfo;->setId(J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 215
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get: teluri-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SocialPresenceStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v1

    const/4 p1, 0x1

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, p1

    .line 223
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    sget-object v6, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "presence"

    const-string/jumbo v7, "tel_uri = ? AND phone_id = ?"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 231
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 232
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 233
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->fillPresenceInfo(Landroid/database/Cursor;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    .line 229
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0

    :catch_0
    move-exception p0

    .line 225
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
    .locals 13
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

    if-nez p1, :cond_0

    return-object v0

    .line 243
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    .line 244
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get: querying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " telUris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SocialPresenceStorage"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v1, :cond_1

    return-object v0

    .line 249
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel_uri"

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in ("

    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 253
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

    if-lez v1, :cond_2

    const-string v2, ","

    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p1, ")"

    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
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

    const/4 p1, 0x1

    new-array v9, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 260
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, p1

    .line 261
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get: selection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    sget-object v7, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "presence"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 275
    :try_start_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

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

    .line 276
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 279
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->fillPresenceInfo(Landroid/database/Cursor;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 272
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 284
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object p1

    :catch_0
    move-exception p0

    .line 268
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
    .locals 8

    const-string v0, "persist: SQLiteDiskIOException: "

    .line 54
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    const-string v2, "SocialPresenceStorage"

    const-string v3, "persist:"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->getUpdatedUriList()Ljava/util/List;

    move-result-object v1

    .line 57
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->getTrashedUriList()Ljava/util/List;

    move-result-object v3

    .line 61
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 67
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz v1, :cond_2

    .line 70
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 71
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    .line 73
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v7, v6}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 75
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v6, "persist: not found in cache."

    .line 77
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 82
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 83
    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 85
    :cond_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_2
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_6

    .line 91
    :goto_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist: SQLException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 89
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 87
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist: SQLiteFullException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_6
    return-void

    .line 93
    :goto_7
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    throw v0

    :catch_3
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

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 3

    const-string v0, "SocialPresenceStorage"

    const-string v1, "reset:"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 109
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "presence"

    const-string v2, "phone_id = ?"

    .line 111
    invoke-virtual {v0, p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset: SQLiteDiskIOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
