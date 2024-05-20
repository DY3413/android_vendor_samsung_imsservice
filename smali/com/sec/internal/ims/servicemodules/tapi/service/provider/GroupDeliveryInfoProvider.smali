.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;
.super Landroid/content/ContentProvider;
.source "GroupDeliveryInfoProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x1

.field private static final RCSAPI_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final MESSAGES_COLUMS:[Ljava/lang/String;

.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->LOG_TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 45
    sget-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfoLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "GroupDeliveryInfoLog"

    const/4 v3, 0x1

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "GroupDeliveryInfoLog/#"

    const/4 v3, 0x2

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "_id"

    const-string v1, "id"

    const-string v2, "contact"

    const-string v3, "chat_id"

    const-string/jumbo v4, "timestamp_delivered"

    const-string/jumbo v5, "timestamp_displayed"

    const-string/jumbo v6, "status"

    const-string v7, "reason_code"

    .line 54
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->MESSAGES_COLUMS:[Ljava/lang/String;

    return-void
.end method

.method private buildMessagesCursor()Landroid/database/Cursor;
    .locals 2

    .line 115
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->MESSAGES_COLUMS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildMessagesCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 2

    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 106
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "buildMessageCursor: No last segment."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->MESSAGES_COLUMS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    return-object v0
.end method

.method private fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 6

    const-string v0, "_id"

    const-string v1, "remote_uri"

    const-string v2, "chat_id"

    const-string v3, "delivered_timestamp"

    const-string v4, "displayed_timestamp"

    const-string v5, "notification_status"

    .line 121
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 133
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    move-object v3, p0

    if-eqz v3, :cond_6

    .line 137
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_3

    .line 141
    :cond_1
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "notification_status"

    .line 143
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 142
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p0

    .line 144
    sget-object p2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result p2

    .line 145
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, p0, :cond_2

    .line 146
    sget-object p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result p2

    goto :goto_2

    .line 147
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, p0, :cond_3

    .line 148
    sget-object p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result p2

    goto :goto_2

    .line 149
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, p0, :cond_4

    .line 150
    sget-object p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DISPLAYED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result p2

    .line 152
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "_id"

    .line 154
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 153
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "remote_uri"

    .line 156
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 155
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "chat_id"

    .line 158
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 157
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "delivered_timestamp"

    .line 160
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 159
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "displayed_timestamp"

    .line 162
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 161
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    sget-object p2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 167
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    .line 138
    :cond_6
    :goto_3
    :try_start_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "buildMessageCursor: Message not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_7

    .line 167
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_8
    throw p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 63
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 73
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .locals 1

    .line 78
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 85
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "query "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 95
    new-instance p1, Landroid/database/MatrixCursor;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->MESSAGES_COLUMS:[Ljava/lang/String;

    invoke-direct {p1, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->buildMessagesCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->buildMessagesCursor()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 100
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
