.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;
.super Landroid/content/ContentProvider;
.source "VideoSharingProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x1

.field private static final RCSAPI_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

.field private final session_columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 36
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 41
    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharingLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v2, "videoshare"

    const/4 v3, 0x1

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "videoshare/#"

    const/4 v3, 0x2

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 13

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "_id"

    const-string/jumbo v1, "sharing_id"

    const-string v2, "contact"

    const-string v3, "direction"

    const-string/jumbo v4, "timestamp"

    const-string/jumbo v5, "state"

    const-string/jumbo v6, "reason_code"

    const-string v7, "duration"

    const-string/jumbo v8, "video_encoding"

    const-string/jumbo v9, "width"

    const-string v10, "height"

    const-string v11, "orientation"

    .line 51
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->session_columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 63
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 73
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .registers 3

    .line 78
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "VshProvider : onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    .line 86
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    .line 87
    new-instance p3, Landroid/database/MatrixCursor;

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->session_columns:[Ljava/lang/String;

    invoke-direct {p3, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 89
    sget-object p4, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCache.getSize() = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p4, "vsh_tapi"

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eq p2, p5, :cond_f6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_35

    goto/16 :goto_1a8

    .line 122
    :cond_35
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move p2, v0

    .line 123
    :goto_40
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result p5

    if-ge p2, p5, :cond_1a8

    .line 124
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object p5

    .line 125
    invoke-interface {p5}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p5

    if-eqz p1, :cond_f2

    if-nez p5, :cond_58

    goto/16 :goto_f2

    .line 130
    :cond_58
    invoke-static {p4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    iget-wide v2, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 131
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->getVideoSharingByID(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;

    move-result-object v1

    .line 132
    iget-wide v2, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 133
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_7d
    invoke-virtual {p3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    iget-wide p1, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 137
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    iget-object p1, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 139
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 140
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 141
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getTimeStamp()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 142
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 143
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getVideoEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    iget p1, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoWidth:I

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    iget p1, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 145
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getOrientation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_e4
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_7d .. :try_end_e4} :catch_ec
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_e4} :catch_e6

    goto/16 :goto_1a8

    :catch_e6
    move-exception p0

    .line 149
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1a8

    :catch_ec
    move-exception p0

    .line 147
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1a8

    :cond_f2
    :goto_f2
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_40

    :cond_f6
    move p1, v0

    .line 92
    :goto_f7
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result p2

    if-ge v0, p2, :cond_1a8

    .line 93
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object p2

    .line 94
    instance-of p5, p2, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    if-nez p5, :cond_10b

    goto/16 :goto_1a4

    .line 97
    :cond_10b
    invoke-interface {p2}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p2

    .line 98
    sget-object p5, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    iget-wide v1, p2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 101
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->getVideoSharingByID(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;

    move-result-object p5

    .line 103
    :try_start_128
    invoke-virtual {p3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1
    :try_end_12c
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_128 .. :try_end_12c} :catch_19d
    .catch Landroid/os/RemoteException; {:try_start_128 .. :try_end_12c} :catch_196

    add-int/lit8 v2, p1, 0x1

    .line 104
    :try_start_12e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    iget-wide v3, p2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 105
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    iget-object v1, p2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 107
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 108
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 109
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getTimeStamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 110
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 111
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getVideoEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    iget v1, p2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoWidth:I

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoHeight:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 113
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getOrientation()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_191
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_12e .. :try_end_191} :catch_194
    .catch Landroid/os/RemoteException; {:try_start_12e .. :try_end_191} :catch_192

    goto :goto_1a3

    :catch_192
    move-exception p1

    goto :goto_199

    :catch_194
    move-exception p1

    goto :goto_1a0

    :catch_196
    move-exception p2

    move v2, p1

    move-object p1, p2

    .line 117
    :goto_199
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a3

    :catch_19d
    move-exception p2

    move v2, p1

    move-object p1, p2

    .line 115
    :goto_1a0
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1a3
    move p1, v2

    :goto_1a4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f7

    .line 158
    :cond_1a8
    :goto_1a8
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cm.getCount() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/database/MatrixCursor;->getCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 164
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
