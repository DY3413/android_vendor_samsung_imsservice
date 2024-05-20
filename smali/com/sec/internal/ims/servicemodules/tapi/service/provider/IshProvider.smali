.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;
.super Landroid/content/ContentProvider;
.source "IshProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field private static final CONTENT_TYPE:Ljava/lang/String; = "placeholder"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x1

.field private static final RCSAPI_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

.field private final session_columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->LOG_TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 39
    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharingLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "ish"

    const/4 v3, 0x1

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "ish/#"

    const/4 v3, 0x2

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "_id"

    const-string/jumbo v1, "sharingId"

    const-string v2, "contact"

    const-string v3, "filename"

    const-string v4, "mime_type"

    const-string v5, "direction"

    const-string v6, "filesize"

    const-string/jumbo v7, "transferred"

    const-string/jumbo v8, "state"

    .line 49
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->session_columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 60
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

    .line 70
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .locals 1

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15

    move-object v0, p0

    .line 82
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 83
    new-instance v3, Landroid/database/MatrixCursor;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->session_columns:[Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 85
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCache.getSize() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/16 v10, 0x9

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v1, v13, :cond_3

    if-eq v1, v11, :cond_0

    goto/16 :goto_4

    .line 106
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v2, v12

    .line 107
    :goto_0
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v14

    if-ge v2, v14, :cond_5

    .line 108
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v14, v2}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v14

    .line 109
    invoke-interface {v14}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v14

    if-eqz v1, :cond_2

    if-nez v14, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    iget-wide v4, v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    iget-wide v1, v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    iget-object v1, v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 117
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 118
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "placeholder"

    aput-object v1, v0, v8

    iget v1, v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    iget-wide v1, v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 120
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataProgress:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    .line 115
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    move v1, v12

    move v2, v1

    .line 88
    :goto_2
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 89
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v4

    .line 90
    instance-of v5, v4, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    if-nez v5, :cond_4

    const/16 v4, 0x8

    const/4 v6, 0x7

    goto :goto_3

    .line 93
    :cond_4
    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v4

    .line 94
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v10, [Ljava/lang/Object;

    add-int/lit8 v14, v2, 0x1

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v12

    iget-wide v6, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v13

    iget-object v2, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 97
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v11

    iget-object v2, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 98
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    iget v2, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    iget v2, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v5, v6

    iget-wide v6, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 99
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v5, v6

    iget-wide v6, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataProgress:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v5, v6

    iget v2, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v5, v4

    .line 95
    invoke-virtual {v3, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move v2, v14

    :goto_3
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x5

    goto :goto_2

    .line 131
    :cond_5
    :goto_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cm.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 137
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
