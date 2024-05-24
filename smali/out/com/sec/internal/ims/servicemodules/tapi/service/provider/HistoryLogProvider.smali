.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;
.super Landroid/content/ContentProvider;
.source "HistoryLogProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String;

.field private static final COLUMS:[Ljava/lang/String;

.field private static final HISTORY_ID:I = 0x2

.field private static final HISTORY_PARAMLESS:I = 0x3

.field private static final HISTORY_PARAMLESS_ID:I = 0x4

.field private static final HISTROY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 27
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/gsma/services/rcs/history/HistoryLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->AUTHORITY:Ljava/lang/String;

    .line 38
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "history"

    const/4 v3, 0x1

    .line 41
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "history/*"

    const/4 v3, 0x2

    .line 42
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "history_paramless"

    const/4 v3, 0x3

    .line 43
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "history_paramless/#"

    const/4 v3, 0x4

    .line 44
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v4, "provider_id"

    const-string v5, "id"

    const-string v6, "mime_type"

    const-string v7, "direction"

    const-string v8, "contact"

    const-string/jumbo v9, "timestamp"

    const-string/jumbo v10, "timestamp_sent"

    const-string/jumbo v11, "timestamp_delivered"

    const-string/jumbo v12, "timestamp_displayed"

    const-string/jumbo v13, "status"

    const-string/jumbo v14, "reason_code"

    const-string/jumbo v15, "read_status"

    const-string v16, "chat_id"

    const-string v17, "content"

    const-string v18, "fileicon"

    const-string v19, "fileicon_mime_type"

    const-string v20, "filename"

    const-string v21, "filesize"

    const-string/jumbo v22, "transferred"

    const-string v23, "duration"

    .line 47
    filled-new-array/range {v4 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->COLUMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    return-void
.end method

.method private getColumnValueToInsert(Ljava/lang/String;ILandroid/database/Cursor;)Ljava/lang/String;
    .registers 5

    const-string p0, "id"

    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    if-ne p2, p0, :cond_17

    const-string p0, "msg_id"

    .line 180
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 181
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    if-nez p2, :cond_24

    const-string p0, "chat_id"

    .line 183
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 184
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    if-ne p2, v0, :cond_46

    const-string p0, "ft_id"

    .line 186
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 187
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    const-string p0, "content"

    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    if-ne p2, v0, :cond_46

    const-string p0, "file"

    .line 191
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 192
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 194
    :cond_46
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_4e

    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_4e
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private mergeAdditionalProviderCursor(Landroid/database/MatrixCursor;[Ljava/lang/String;I)V
    .registers 12

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;->getExternalProviderMap()Ljava/util/Map;

    move-result-object v0

    .line 206
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;

    if-nez v0, :cond_29

    .line 208
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not registered provider, id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 212
    :cond_29
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->getColumnMapping()Ljava/util/Map;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_5d

    .line 216
    :try_start_3d
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No data exsit in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_a5

    if-eqz p0, :cond_5c

    .line 243
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5c
    return-void

    .line 220
    :cond_5d
    :try_start_5d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    :cond_60
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 222
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    const/4 v2, 0x0

    .line 223
    :goto_6b
    array-length v3, p2

    if-ge v2, v3, :cond_60

    .line 224
    aget-object v3, p2, v2

    const-string/jumbo v4, "provider_id"

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 226
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 229
    :cond_80
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_8d

    .line 231
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_9e

    .line 235
    :cond_8d
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_97

    .line 237
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_9e

    .line 240
    :cond_97
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_9e
    .catchall {:try_start_5d .. :try_end_9e} :catchall_a5

    :goto_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 243
    :cond_a1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_a5
    move-exception p1

    if-eqz p0, :cond_b0

    .line 214
    :try_start_a8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ac

    goto :goto_b0

    :catchall_ac
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b0
    :goto_b0
    throw p1
.end method

.method private mergeAll([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .registers 7

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;->getExternalProviderMap()Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_11

    .line 114
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mergeAll, projection is null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->COLUMS:[Ljava/lang/String;

    .line 119
    :cond_11
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 120
    sget-object v2, Lcom/gsma/services/rcs/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeDefaultProviderCursor(Landroid/database/MatrixCursor;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 122
    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransferLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeDefaultProviderCursor(Landroid/database/MatrixCursor;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 124
    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharingLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeDefaultProviderCursor(Landroid/database/MatrixCursor;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 126
    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharingLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeDefaultProviderCursor(Landroid/database/MatrixCursor;Landroid/net/Uri;[Ljava/lang/String;I)V

    if-nez p2, :cond_4c

    .line 131
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeAdditionalProviderCursor(Landroid/database/MatrixCursor;[Ljava/lang/String;I)V

    goto :goto_38

    .line 135
    :cond_4c
    array-length v0, p2

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v0, :cond_6b

    aget-object v3, p2, v2

    .line 137
    :try_start_52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v1, p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeAdditionalProviderCursor(Landroid/database/MatrixCursor;[Ljava/lang/String;I)V
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_5d} :catch_60

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 139
    :catch_60
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "NumberFormatException, close cursor"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->close()V

    const/4 v1, 0x0

    :cond_6b
    return-object v1
.end method

.method private mergeDefaultProviderCursor(Landroid/database/MatrixCursor;Landroid/net/Uri;[Ljava/lang/String;I)V
    .registers 11

    if-nez p3, :cond_3

    return-void

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 156
    :try_start_10
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No data exsit in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_7b

    if-eqz v0, :cond_2b

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2b
    return-void

    .line 159
    :cond_2c
    :try_start_2c
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor getCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_77

    .line 162
    :cond_4c
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    const/4 v1, 0x0

    .line 163
    :goto_51
    array-length v2, p3

    if-ge v1, v2, :cond_71

    .line 164
    aget-object v2, p3, v1

    const-string/jumbo v3, "provider_id"

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 166
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_6e

    .line 169
    :cond_67
    invoke-direct {p0, v2, p4, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->getColumnValueToInsert(Ljava/lang/String;ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 171
    :cond_71
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_75
    .catchall {:try_start_2c .. :try_end_75} :catchall_7b

    if-nez p2, :cond_4c

    .line 173
    :cond_77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_7b
    move-exception p0

    if-eqz v0, :cond_86

    .line 154
    :try_start_7e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    goto :goto_86

    :catchall_82
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_86
    :goto_86
    throw p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 2

    .line 65
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 74
    sget-object p3, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Query: uri = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    if-nez p4, :cond_20

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getHistoryService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    .line 79
    :cond_20
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    const/4 p5, 0x0

    if-nez p4, :cond_2b

    const-string p0, "Query:  HistoryLogProvider is not available"

    .line 80
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p5

    .line 84
    :cond_2b
    sget-object p3, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 p4, 0x1

    if-eq p3, p4, :cond_54

    const/4 p4, 0x2

    if-eq p3, p4, :cond_3e

    const/4 p4, 0x3

    if-eq p3, p4, :cond_54

    const/4 p4, 0x4

    if-eq p3, p4, :cond_3e

    goto :goto_58

    .line 94
    :cond_3e
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4f

    const-string p3, "_"

    .line 96
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeAll([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p5

    goto :goto_58

    .line 99
    :cond_4f
    invoke-direct {p0, p2, p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeAll([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p5

    goto :goto_58

    .line 90
    :cond_54
    invoke-direct {p0, p2, p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeAll([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p5

    :goto_58
    return-object p5
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 0
    const/4 p0, 0x0

    return p0
.end method
