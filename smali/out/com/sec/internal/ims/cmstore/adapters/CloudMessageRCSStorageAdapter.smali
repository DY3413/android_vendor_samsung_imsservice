.class public Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;
.super Ljava/lang/Object;
.source "CloudMessageRCSStorageAdapter.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CloudMessageRCSStorageAdapter"


# instance fields
.field public final PROVIDER_NAME:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.rcs.im"

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->PROVIDER_NAME:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    return-void
.end method


# virtual methods
.method public deleteParticipantsUsingRowId(J)I
    .registers 5

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/clouddeleteparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 149
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 150
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "chat_id =?"

    .line 149
    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteRCSDBmessageUsingId(I)I
    .registers 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/clouddeletemessage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 178
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "_id=?"

    .line 177
    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public insertMessageFromBufferDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const-string v0, "content://com.samsung.rcs.im/cloudinsertmessage"

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz p1, :cond_f

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public insertNotificationFromBufferDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "content://com.samsung.rcs.im/cloudinsertnotification"

    .line 197
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public insertParticipantsFromBufferDbToRCSDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    const-string/jumbo v0, "sim_imsi"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 75
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "remove imsi for cloudinsertparticipant"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_14
    const-string v0, "content://com.samsung.rcs.im/cloudinsertparticipant"

    .line 78
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public insertSessionFromBufferDbToRCSDb(Landroid/content/ContentValues;Ljava/util/ArrayList;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    const-string v0, "content://com.samsung.rcs.im/cloudinsertsession"

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertSessionFromBufferDb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 52
    :goto_21
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 53
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 55
    :cond_33
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 56
    new-array p1, p1, [Landroid/content/ContentValues;

    .line 57
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 58
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insertSingleSessionPartsToDB(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public queryAllMessage()Landroid/database/Cursor;
    .registers 8

    const-string v0, "content://com.samsung.rcs.im/message"

    .line 122
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 123
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryAllMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllMessage([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    const-string v0, "content://com.samsung.rcs.im/message"

    .line 129
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 130
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryAllMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSession()Landroid/database/Cursor;
    .registers 8

    const-string v0, "content://com.samsung.rcs.im/session"

    .line 91
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSession([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    const-string v0, "content://com.samsung.rcs.im/session"

    .line 97
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 98
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    const-string v0, "content://com.samsung.rcs.im/session"

    .line 103
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 104
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryAllSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sim_imsi=?"

    .line 106
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    .line 108
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryIMFTUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessagechatid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryIMFTUsingRowId(J)Landroid/database/Cursor;
    .registers 9

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessagerowid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryNotificationUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/messagenotifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudqueryparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessageimdnid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerysessionchatid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessionUsingId(I)Landroid/database/Cursor;
    .registers 8

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerysessionid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public updateMessageFromBufferDb(ILandroid/content/ContentValues;)I
    .registers 5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdatemessage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 86
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "_id=?"

    .line 85
    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateParticipantsFromBufferDbToRCSDb(JLandroid/content/ContentValues;)I
    .registers 6

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdateparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 70
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "_id =?"

    .line 69
    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateRCSNotificationUsingImdnId(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
    .registers 6

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return p0

    .line 205
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdatenotification/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 207
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    .line 208
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const-string p3, "imdn_id=? AND sender_uri=?"

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateSessionFromBufferDbToRCSDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 5

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdatesession/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const-string v1, "chat_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
