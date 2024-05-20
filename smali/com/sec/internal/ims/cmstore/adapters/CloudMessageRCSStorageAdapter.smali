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
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

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
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/clouddeleteparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 137
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "chat_id =?"

    .line 136
    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteRCSDBmessageUsingId(I)I
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/clouddeletemessage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "_id=?"

    .line 164
    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public insertMessageFromBufferDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.samsung.rcs.im/cloudinsertmessage"

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public insertNotificationFromBufferDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "content://com.samsung.rcs.im/cloudinsertnotification"

    .line 184
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public insertParticipantsFromBufferDbToRCSDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.samsung.rcs.im/cloudinsertparticipant"

    .line 74
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public insertSessionFromBufferDbToRCSDb(Landroid/content/ContentValues;Ljava/util/ArrayList;)I
    .locals 4
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
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 53
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
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
    .locals 7

    const-string v0, "content://com.samsung.rcs.im/message"

    .line 109
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 110
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryAllMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
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
    .locals 7

    const-string v0, "content://com.samsung.rcs.im/message"

    .line 116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 117
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryAllMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
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
    .locals 7

    const-string v0, "content://com.samsung.rcs.im/session"

    .line 87
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 88
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
    .locals 7

    const-string v0, "content://com.samsung.rcs.im/session"

    .line 93
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 94
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
    .locals 7

    const-string v0, "content://com.samsung.rcs.im/session"

    .line 99
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryAllSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 104
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const-string/jumbo v4, "sim_imsi=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryIMFTUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessagechatid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 124
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
    .locals 6

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessagerowid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 150
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
    .locals 6

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/messagenotifications/"

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

.method public queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudqueryparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 130
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
    .locals 6

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessageimdnid/"

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

.method public querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerysessionchatid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
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
    .locals 6

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerysessionid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
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
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdatemessage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "_id=?"

    .line 81
    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateParticipantsFromBufferDbToRCSDb(JLandroid/content/ContentValues;)I
    .locals 2

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

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 70
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "_id =?"

    .line 69
    invoke-virtual {p0, v0, p3, p1, v1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateRCSNotificationUsingImsdId(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.samsung.rcs.im/cloudupdatenotification/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    const-string p1, "imdn_id=?"

    invoke-virtual {p0, v1, p2, p1, v2}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateSessionFromBufferDbToRCSDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3

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

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "chat_id=?"

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
