.class public Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
.super Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;,
        Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;,
        Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final FT_SIZE_MARGIN:J = 0x2800L

.field private static final LOG_TAG:Ljava/lang/String; = "DownloadFileTask"

.field private static final MAX_PROGRESS_COUNT:I = 0x32


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDownloadProgressElapsed:J

.field private mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

.field protected final mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field private mPhoneId:I

.field private mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

.field private mTotal:J

.field private mTransferred:J

.field private mWritten:J


# direct methods
.method public static synthetic $r8$lambda$yBhoeYpN8BMNIDp7qT5hzlLOxVM(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->lambda$setDefaultHeaders$0(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDownloadProgressElapsed(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mDownloadProgressElapsed:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRequest(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotal(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTransferred(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWritten(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmDownloadProgressElapsed(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mDownloadProgressElapsed:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTransferred(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;)V
    .registers 7

    .line 80
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;-><init>(Landroid/os/Looper;)V

    .line 81
    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    .line 83
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 85
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)Z
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result p0

    return p0
.end method

.method private cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V
    .registers 5

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v0, :cond_9

    .line 222
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleFtHttpDownloadError(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;

    move-result-object v0

    goto :goto_11

    :cond_9
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;I)V

    .line 223
    :goto_11
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->getDelay()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result p1

    invoke-interface {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    return-void
.end method

.method private getFileLength()J
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 206
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 210
    :cond_1e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_2b

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/FileUtils;->getSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0

    :cond_2b
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z
    .registers 2

    .line 217
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object p0

    instance-of p0, p0, Ljava/net/UnknownHostException;

    return p0
.end method

.method private static synthetic lambda$setDefaultHeaders$0(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 392
    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpuFromIsim(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendEmptyGetRequest(I)I
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 378
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->setDefaultHeaders(I)V

    .line 379
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result p0

    return p0
.end method

.method private sendGetRequest(I)I
    .registers 13

    const-string v0, "application/vnd.gsma.eap-relay.v1.0+json"

    const-string v1, "Content-Type"

    const/4 v2, 0x0

    .line 281
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const/4 v2, 0x3

    const/4 v3, -0x1

    .line 285
    :try_start_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->sendEmptyGetRequest(I)I

    move-result v4
    :try_end_d
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_9 .. :try_end_d} :catch_190
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_d} :catch_180
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_d} :catch_171
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_d} :catch_162

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_e6

    const/16 v0, 0xce

    if-eq v4, v0, :cond_dd

    const/16 v0, 0x12e

    if-eq v4, v0, :cond_97

    const/16 v0, 0x191

    if-eq v4, v0, :cond_45

    .line 350
    :try_start_1d
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive HTTP response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " neither OK nor UNAUTHORIZED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V

    goto/16 :goto_18e

    .line 316
    :cond_45
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Receive 401 Unauthorized, attempt to generate response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 319
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->wwwAuthenticate()Ljava/lang/String;

    move-result-object v1

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "challenge: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    const-string v6, "GET"

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 323
    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest;->getCipherSuite()Ljava/lang/String;

    move-result-object v7

    .line 322
    invoke-static {v0, v5, v1, v6, v7}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 326
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->setDefaultHeaders(I)V

    .line 327
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 329
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v3

    goto/16 :goto_1d5

    .line 333
    :cond_97
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 334
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 335
    new-instance v0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mNetwork:Landroid/net/Network;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTrustAllCerts:Z

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 338
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 339
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    .line 340
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->sendEmptyGetRequest(I)I

    move-result v3

    goto/16 :goto_1d5

    .line 344
    :cond_ca
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendGetRequest: OpenId Process failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1d .. :try_end_d2} :catch_160
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_d2} :catch_15e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_d2} :catch_15c
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_d2} :catch_15a

    .line 346
    :try_start_d2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p1, v0, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
    :try_end_db
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_d2 .. :try_end_db} :catch_190
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d2 .. :try_end_db} :catch_180
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d2 .. :try_end_db} :catch_171
    .catch Ljava/lang/RuntimeException; {:try_start_d2 .. :try_end_db} :catch_162

    goto/16 :goto_1d5

    .line 312
    :cond_dd
    :try_start_dd
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Receive 206 Partial"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18e

    .line 289
    :cond_e6
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Receive 200 OK"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v6, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18e

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 291
    invoke-virtual {v6, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 292
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 293
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_135

    .line 295
    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    invoke-static {v6, v1}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getEAPAkaChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_135

    .line 297
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 298
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->setDefaultHeaders(I)V

    .line 300
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/HttpRequest;->contentType(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 301
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    .line 302
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v3

    goto/16 :goto_1d5

    .line 306
    :cond_135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EAP AKA authentication failed, code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_dd .. :try_end_14f} :catch_160
    .catch Ljava/lang/OutOfMemoryError; {:try_start_dd .. :try_end_14f} :catch_15e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dd .. :try_end_14f} :catch_15c
    .catch Ljava/lang/RuntimeException; {:try_start_dd .. :try_end_14f} :catch_15a

    .line 308
    :try_start_14f
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p1, v0, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
    :try_end_158
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_14f .. :try_end_158} :catch_190
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14f .. :try_end_158} :catch_180
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14f .. :try_end_158} :catch_171
    .catch Ljava/lang/RuntimeException; {:try_start_14f .. :try_end_158} :catch_162

    goto/16 :goto_1d5

    :catch_15a
    move-exception p1

    goto :goto_164

    :catch_15c
    move-exception p1

    goto :goto_173

    :catch_15e
    move-exception p1

    goto :goto_182

    :catch_160
    move-exception p1

    goto :goto_192

    :catch_162
    move-exception p1

    move v4, v3

    .line 370
    :goto_164
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 371
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_18e

    :catch_171
    move-exception p1

    move v4, v3

    .line 367
    :goto_173
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 368
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p0, p1, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_18e

    :catch_180
    move-exception p1

    move v4, v3

    .line 364
    :goto_182
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 365
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p0, p1, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    :cond_18e
    :goto_18e
    move v3, v4

    goto :goto_1d5

    :catch_190
    move-exception p1

    move v4, v3

    .line 354
    :goto_192
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_19f

    .line 355
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 357
    :cond_19f
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 358
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v1, 0x1e

    invoke-interface {p0, v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_1ba

    .line 360
    :cond_1b1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p0, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 362
    :goto_1ba
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " happened. Retry download Task."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18e

    :goto_1d5
    return v3
.end method

.method private setDefaultHeaders(I)V
    .registers 9

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mNetwork:Landroid/net/Network;

    const/4 v3, 0x0

    const/16 v4, 0x2710

    const v5, 0x1d4c0

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/helper/HttpRequest;->setParams(Landroid/net/Network;ZIILjava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 384
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/HttpRequest;->bufferSize(I)Lcom/sec/internal/helper/HttpRequest;

    .line 386
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v0, "is_eap_supported"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 387
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v0, "Accept"

    const-string v1, "application/vnd.gsma.eap-relay.v1.0+json"

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 390
    :cond_2d
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v0, "ft_with_gba"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v0, "use_useridentity_for_fthttp"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_84

    .line 392
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 394
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPublicId(I)Ljava/lang/String;

    move-result-object p1

    .line 396
    :cond_69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "X-3GPP-Intended-Identity"

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 399
    :cond_84
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_93

    .line 400
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/internal/helper/HttpRequest;->range(JJ)Lcom/sec/internal/helper/HttpRequest;

    .line 402
    :cond_93
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-boolean p1, p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTrustAllCerts:Z

    if-eqz p1, :cond_a2

    .line 403
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->trustAllCerts()Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->trustAllHosts()Lcom/sec/internal/helper/HttpRequest;

    :cond_a2
    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Long;
    .registers 15

    .line 91
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 92
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 94
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-wide v2, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTransferredBytes:J

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    .line 97
    iget-wide v4, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTotalBytes:J

    iput-wide v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6a

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->getFileLength()J

    move-result-wide v1

    .line 102
    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_6b

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjust mTransferred to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    .line 105
    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    cmp-long v3, v1, v6

    if-ltz v3, :cond_6b

    const-string v1, "Already the download was completed."

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCompleted(J)V

    .line 108
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_6a
    move-wide v1, v4

    .line 113
    :cond_6b
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    .line 115
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-wide v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTotalBytes:J

    const-wide/16 v6, 0x32

    div-long/2addr v1, v6

    const-wide/32 v6, 0xf000

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v6, 0x7d000

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 120
    :try_start_85
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->sendGetRequest(I)I

    move-result v6

    const/16 v7, 0xc8

    const/16 v8, 0xce

    if-eq v6, v7, :cond_c2

    if-ne v6, v8, :cond_98

    .line 122
    iget-wide v9, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v7, v9, v4

    if-lez v7, :cond_98

    goto :goto_c2

    .line 123
    :cond_98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download failed, response: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V

    .line 125
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_b7
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_85 .. :try_end_b7} :catch_1cc
    .catch Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException; {:try_start_85 .. :try_end_b7} :catch_1ba
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_b7} :catch_1a1
    .catchall {:try_start_85 .. :try_end_b7} :catchall_19f

    .line 193
    :try_start_b7
    throw v2
    :try_end_b8
    .catch Ljava/lang/NullPointerException; {:try_start_b7 .. :try_end_b8} :catch_b8

    :catch_b8
    move-exception v1

    .line 196
    :goto_b9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    :goto_bc
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    return-object v0

    .line 127
    :cond_c2
    :goto_c2
    :try_start_c2
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_e7

    .line 128
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    iget-wide v12, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v12, v12, v4

    if-lez v12, :cond_de

    move v12, v7

    goto :goto_df

    :cond_de
    move v12, v9

    :goto_df
    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v6, v10, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_e5
    move-object v2, v6

    goto :goto_10e

    .line 129
    :cond_e7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_10e

    .line 130
    iget-wide v10, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v1, v10, v4

    if-lez v1, :cond_f7

    const-string/jumbo v1, "wa"

    goto :goto_fa

    :cond_f7
    const-string/jumbo v1, "w"

    .line 131
    :goto_fa
    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_e5

    .line 134
    :cond_10e
    :goto_10e
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v6, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;

    invoke-direct {v6, p0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)V

    invoke-virtual {v1, v6}, Lcom/sec/internal/helper/HttpRequest;->progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;

    .line 158
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_197

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->ok()Z

    move-result v1

    if-eqz v1, :cond_13c

    const-string v1, "Download success, handle response message."

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    iget-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    add-long/2addr v6, v8

    invoke-interface {v0, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCompleted(J)V

    goto :goto_183

    .line 166
    :cond_13c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download failed, "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v6}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    iget-wide v10, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    cmp-long v6, v0, v10

    if-eqz v6, :cond_167

    iget-wide v12, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    add-long/2addr v12, v0

    cmp-long v0, v12, v10

    if-nez v0, :cond_166

    goto :goto_167

    :cond_166
    move v7, v9

    .line 169
    :cond_167
    :goto_167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0

    if-ne v0, v8, :cond_17e

    if-eqz v7, :cond_17e

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    iget-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    add-long/2addr v6, v8

    invoke-interface {v0, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCompleted(J)V

    goto :goto_183

    .line 172
    :cond_17e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V
    :try_end_183
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_c2 .. :try_end_183} :catch_1cc
    .catch Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException; {:try_start_c2 .. :try_end_183} :catch_1ba
    .catch Ljava/io/FileNotFoundException; {:try_start_c2 .. :try_end_183} :catch_1a1
    .catchall {:try_start_c2 .. :try_end_183} :catchall_19f

    .line 193
    :goto_183
    :try_start_183
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_186
    .catch Ljava/lang/NullPointerException; {:try_start_183 .. :try_end_186} :catch_187
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_187

    goto :goto_18b

    :catch_187
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    :goto_18b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 201
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 159
    :cond_197
    :try_start_197
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;

    const-string v1, "Download Task Failed. isCancelled() is called."

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19f
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_197 .. :try_end_19f} :catch_1cc
    .catch Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException; {:try_start_197 .. :try_end_19f} :catch_1ba
    .catch Ljava/io/FileNotFoundException; {:try_start_197 .. :try_end_19f} :catch_1a1
    .catchall {:try_start_197 .. :try_end_19f} :catchall_19f

    :catchall_19f
    move-exception v0

    goto :goto_214

    :catch_1a1
    move-exception v0

    .line 188
    :try_start_1a2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {v0, v1, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 190
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1b2
    .catchall {:try_start_1a2 .. :try_end_1b2} :catchall_19f

    .line 193
    :try_start_1b2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1b5
    .catch Ljava/lang/NullPointerException; {:try_start_1b2 .. :try_end_1b5} :catch_1b7
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1b5} :catch_1b7

    goto/16 :goto_bc

    :catch_1b7
    move-exception v1

    goto/16 :goto_b9

    :catch_1ba
    move-exception v0

    .line 185
    :try_start_1bb
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1c4
    .catchall {:try_start_1bb .. :try_end_1c4} :catchall_19f

    .line 193
    :try_start_1c4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1c7
    .catch Ljava/lang/NullPointerException; {:try_start_1c4 .. :try_end_1c7} :catch_1c9
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1c7} :catch_1c9

    goto/16 :goto_bc

    :catch_1c9
    move-exception v1

    goto/16 :goto_b9

    :catch_1cc
    move-exception v0

    .line 176
    :try_start_1cd
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v1

    if-eqz v1, :cond_1e2

    .line 177
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 178
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v5, 0x1e

    invoke-interface {v1, v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_1ec

    .line 180
    :cond_1e2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v5, 0x3

    invoke-interface {v1, v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 182
    :goto_1ec
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " happened. Retry download Task."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_20c
    .catchall {:try_start_1cd .. :try_end_20c} :catchall_19f

    .line 193
    :try_start_20c
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_20f
    .catch Ljava/lang/NullPointerException; {:try_start_20c .. :try_end_20f} :catch_211
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_20f} :catch_211

    goto/16 :goto_bc

    :catch_211
    move-exception v1

    goto/16 :goto_b9

    :goto_214
    :try_start_214
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_217
    .catch Ljava/lang/NullPointerException; {:try_start_214 .. :try_end_217} :catch_218
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_217} :catch_218

    goto :goto_21c

    :catch_218
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    :goto_21c
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 199
    throw v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->doInBackground()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
