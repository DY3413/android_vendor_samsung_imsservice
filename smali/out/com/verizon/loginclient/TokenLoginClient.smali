.class public Lcom/verizon/loginclient/TokenLoginClient;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;,
        Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;,
        Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;,
        Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;,
        Lcom/verizon/loginclient/TokenLoginClient$ResultCode;,
        Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;,
        Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;,
        Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;,
        Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;
    }
.end annotation


# instance fields
.field private mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field private mAlwaysReturnSubscriptionId:Z

.field private final mAsyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field private mBypassDeviceFeatureCheck:Z

.field private mBypassEnginePackageCheck:Z

.field private final mContext:Landroid/content/Context;

.field private final mDirectEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field private mInteractiveQueryMode:Z

.field private final mLockObj:Ljava/lang/Object;

.field private final mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

.field private mObserveOnNullResult:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private final mSyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

.field private mTargetSubscriptionId:Ljava/lang/Integer;

.field private mTimeoutMs:J

.field private mTokenTypeAuth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;Landroid/os/Looper;Ljava/lang/Integer;)V
    .registers 7

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    const-wide/32 v0, 0xea60

    .line 88
    iput-wide v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mInteractiveQueryMode:Z

    .line 90
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTokenTypeAuth:Z

    .line 91
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassDeviceFeatureCheck:Z

    .line 92
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserveOnNullResult:Z

    .line 94
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAlwaysReturnSubscriptionId:Z

    if-eqz p1, :cond_4b

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    .line 122
    iput-object p4, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    .line 125
    new-instance p4, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    iput-object p4, p0, Lcom/verizon/loginclient/TokenLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    .line 126
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mDirectEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    if-nez p2, :cond_35

    move-object p4, v0

    goto :goto_3a

    .line 127
    :cond_35
    new-instance p4, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    invoke-direct {p4, p0, p2}, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;)V

    :goto_3a
    iput-object p4, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAsyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 129
    new-instance p2, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    if-eqz p3, :cond_41

    goto :goto_45

    .line 130
    :cond_41
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :goto_45
    invoke-direct {p2, p3, p0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;-><init>(Landroid/os/Looper;Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    return-void

    .line 119
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$1000(Lcom/verizon/loginclient/TokenLoginClient;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->unregisterContentObserver()V

    return-void
.end method

.method static synthetic access$1200(Lcom/verizon/loginclient/TokenLoginClient;)Ljava/lang/Object;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->doTokenQuery()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient;->callbackWithResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/verizon/loginclient/TokenLoginClient;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->stopTimeoutWait()V

    return-void
.end method

.method static synthetic access$800(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryParams()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/verizon/loginclient/TokenLoginClient;Landroid/net/Uri;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/loginclient/TokenLoginClient;->queryContentProvider(Landroid/net/Uri;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object p0

    return-object p0
.end method

.method private buildDeleteParams(Z)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .registers 3

    .line 495
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    invoke-direct {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;-><init>()V

    if-eqz p1, :cond_d

    .line 496
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setDeleteAllTokens(Ljava/lang/Boolean;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    goto :goto_12

    .line 497
    :cond_d
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setSubscriptionId(Ljava/lang/Integer;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    .line 499
    :goto_12
    invoke-virtual {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->build()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object p0

    return-object p0
.end method

.method private buildQueryParams()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .registers 3

    .line 484
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    invoke-direct {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;-><init>()V

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    .line 485
    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setSubscriptionId(Ljava/lang/Integer;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    move-result-object v0

    .line 488
    iget-boolean p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAlwaysReturnSubscriptionId:Z

    if-eqz p0, :cond_14

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setAlwaysSendSubscriberId(Ljava/lang/Boolean;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    .line 490
    :cond_14
    invoke-virtual {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->build()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object p0

    return-object p0
.end method

.method private buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 578
    :cond_4
    iget-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mInteractiveQueryMode:Z

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    const-string v0, "/silent"

    .line 579
    :goto_d
    iget-boolean p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTokenTypeAuth:Z

    if-eqz p0, :cond_14

    const-string p0, "authtoken"

    goto :goto_17

    :cond_14
    const-string/jumbo p0, "token"

    .line 581
    :goto_17
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "content://%s/%s%s"

    filled-new-array {p1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 586
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private callbackWithResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V
    .registers 4

    .line 642
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_f

    .line 644
    new-instance p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    .line 646
    :cond_f
    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getResultCode()Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    move-result-object v0

    sget-object v1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    if-ne v0, v1, :cond_1f

    .line 647
    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getTokenData()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;->onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V

    goto :goto_2a

    .line 649
    :cond_1f
    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getResultCode()Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;->onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V

    :goto_2a
    return-void
.end method

.method private doTokenDelete(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 392
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->getLoginClientUri()Landroid/net/Uri;

    move-result-object v0

    .line 395
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient;->buildDeleteParams(Z)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object p1

    if-eqz v0, :cond_1b

    .line 398
    :try_start_a
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectParams()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1b} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-void
.end method

.method private doTokenQuery()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .registers 4

    .line 412
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->isDeviceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 413
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->deviceNotCapable:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 417
    :cond_f
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->getLoginClientUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 419
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 423
    :cond_1d
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryParams()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object v1

    iget-boolean v2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserveOnNullResult:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/verizon/loginclient/TokenLoginClient;->queryContentProvider(Landroid/net/Uri;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object p0

    return-object p0
.end method

.method private getCertFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 11

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 750
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_68
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_d} :catch_68
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_d} :catch_68

    :try_start_d
    const-string p1, "X509"

    .line 751
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 752
    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    const-string v1, "SHA1"

    .line 753
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 754
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_2f
    if-ge v4, v2, :cond_55

    aget-byte v5, p1, v4

    .line 758
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3e

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    :cond_3e
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 761
    :cond_55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_59
    .catchall {:try_start_d .. :try_end_59} :catchall_5e

    .line 763
    :try_start_59
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_68
    .catch Ljava/security/cert/CertificateException; {:try_start_59 .. :try_end_5c} :catch_68
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_59 .. :try_end_5c} :catch_68

    move-object p0, p1

    goto :goto_68

    :catchall_5e
    move-exception p1

    .line 750
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception v0

    :try_start_64
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_67
    throw p1
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_68
    .catch Ljava/security/cert/CertificateException; {:try_start_64 .. :try_end_68} :catch_68
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_64 .. :try_end_68} :catch_68

    :catch_68
    :goto_68
    return-object p0
.end method

.method private getLoginClientUri()Landroid/net/Uri;
    .registers 13

    .line 555
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 557
    sget-object v1, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->AUTHORITIES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_42

    aget-object v5, v1, v4

    .line 558
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    if-nez v6, :cond_16

    goto :goto_3f

    .line 561
    :cond_16
    sget-object v7, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_TOKEN_PACKAGES:[Ljava/lang/String;

    array-length v8, v7

    move v9, v3

    :goto_1a
    if-ge v9, v8, :cond_36

    aget-object v10, v7, v9

    .line 563
    iget-object v11, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    iget-object v10, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/verizon/loginclient/TokenLoginClient;->isAuthorizedSignature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 564
    invoke-direct {p0, v5}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_33
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 567
    :cond_36
    iget-boolean v6, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    if-eqz v6, :cond_3f

    invoke-direct {p0, v5}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_42
    const/4 p0, 0x0

    return-object p0
.end method

.method private isAuthorizedSignature(Ljava/lang/String;)Z
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .line 718
    iget-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_9

    return v0

    .line 724
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v0, :cond_37

    aget-object v4, p1, v3

    .line 726
    invoke-direct {p0, v4}, Lcom/verizon/loginclient/TokenLoginClient;->getCertFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v4

    .line 728
    sget-object v5, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_SIGNING_CERT_SHA1:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_26
    if-ge v7, v6, :cond_34

    aget-object v8, v5, v7

    .line 729
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_2e} :catch_37

    if-eqz v8, :cond_31

    return v1

    :cond_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 737
    :catch_37
    :cond_37
    iget-boolean p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    return p0
.end method

.method private isDeviceCapable()Z
    .registers 7

    .line 537
    iget-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassDeviceFeatureCheck:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 539
    :cond_6
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 541
    sget-object v0, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->LTE_FEATURES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_1f

    aget-object v5, v0, v4

    .line 542
    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1f
    return v3
.end method

.method private queryContentProvider(Landroid/net/Uri;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .registers 12

    const/4 v0, 0x0

    .line 436
    :try_start_1
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    .line 437
    invoke-virtual {p2}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectParams()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p1

    .line 436
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_16} :catch_8f
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_16} :catch_86
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_16} :catch_86

    if-nez p2, :cond_20

    .line 448
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 451
    :cond_20
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_31

    .line 452
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 453
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    :cond_31
    const-string/jumbo v1, "token"

    .line 457
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "subscriptionId"

    .line 460
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4a

    .line 461
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_4b

    :cond_4a
    const/4 v2, -0x1

    .line 463
    :goto_4b
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    if-nez v1, :cond_70

    if-eqz p3, :cond_68

    .line 467
    iget-wide p2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-lez p2, :cond_68

    .line 468
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient;->registerContentObserver(Landroid/net/Uri;)V

    .line 469
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->startTimeoutWait()V

    .line 470
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 472
    :cond_68
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 477
    :cond_70
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 478
    new-instance p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    new-instance p3, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    invoke-direct {p3, p0, v2}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, p2, p3, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p1

    :catch_86
    move-exception p0

    .line 443
    new-instance p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p1, p2, v0, p0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p1

    :catch_8f
    move-exception p0

    .line 440
    new-instance p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->securityException:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p1, p2, v0, p0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p1
.end method

.method private declared-synchronized registerContentObserver(Landroid/net/Uri;)V
    .registers 5

    monitor-enter p0

    .line 505
    :try_start_1
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->unregisterContentObserver()V

    .line 507
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    invoke-direct {v0, p0, v1, p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;

    .line 508
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 509
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startTimeoutWait()V
    .registers 5

    .line 632
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 633
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    iget-wide v2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopTimeoutWait()V
    .registers 2

    .line 637
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private declared-synchronized unregisterContentObserver()V
    .registers 3

    monitor-enter p0

    .line 517
    :try_start_1
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 520
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_12} :catch_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_17

    :catch_12
    const/4 v0, 0x0

    .line 525
    :try_start_13
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_17

    .line 526
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancelQuery()V
    .registers 2

    .line 262
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->unregisterContentObserver()V

    .line 263
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->stopTimeoutWait()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 267
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_c
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p0
.end method

.method public invalidateToken()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, v0}, Lcom/verizon/loginclient/TokenLoginClient;->doTokenDelete(Z)V

    return-void
.end method

.method public queryTokenAsync()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAsyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    if-eqz v0, :cond_14

    .line 151
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 154
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$1;

    invoke-direct {v0, p0}, Lcom/verizon/loginclient/TokenLoginClient$1;-><init>(Lcom/verizon/loginclient/TokenLoginClient;)V

    .line 163
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 148
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot perform async query with null callback receiver (constructor)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTargetSubscriptionId(Ljava/lang/Integer;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    return-void
.end method

.method public setTimeout(J)V
    .registers 3

    .line 326
    iput-wide p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    return-void
.end method
