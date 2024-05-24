.class public Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.super Ljava/lang/Object;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;,
        Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    }
.end annotation


# instance fields
.field private mBsfUrl:Ljava/lang/String;

.field private mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

.field private mCipherSuite:[B

.field private mCiphersuite:I

.field private mConnectionTimeout:J

.field private mDns:Lokhttp3/Dns;

.field private mFollowRedirects:Z

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreServerCert:Z

.field private mIpVersion:I

.field private mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field private mNafUrl:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPhoneId:I

.field private mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

.field private mProxy:Ljava/net/Proxy;

.field private mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

.field private mReadTimeout:J

.field private mRetryOnConnectionFailure:Z

.field private mReuseConnection:Z

.field private mSocketFactory:Ljavax/net/SocketFactory;

.field private mToken:I

.field private mUseForcedProtocol:Z

.field private mUseImei:Z

.field private mUseProxy:Z

.field private mUseTls:Z

.field private mUserName:Ljava/lang/String;

.field private mWriteTimeout:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReuseConnection:Z

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-wide/16 v2, 0x7530

    .line 39
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    .line 40
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    .line 41
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 44
    iput v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lokhttp3/Dns;

    .line 46
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:[B

    .line 49
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    .line 50
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIgnoreServerCert:Z

    .line 51
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mRetryOnConnectionFailure:Z

    .line 52
    iput v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    .line 53
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    .line 54
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    .line 55
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    .line 56
    iput v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mToken:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReuseConnection:Z

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    .line 38
    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-wide/16 v2, 0x7530

    .line 39
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    .line 40
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    .line 41
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    .line 43
    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 44
    iput v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    .line 45
    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lokhttp3/Dns;

    .line 46
    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:[B

    .line 49
    iput-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    .line 50
    iput-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIgnoreServerCert:Z

    .line 51
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mRetryOnConnectionFailure:Z

    .line 52
    iput v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    .line 53
    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    .line 55
    iput-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    .line 56
    iput v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mToken:I

    .line 73
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 74
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 77
    iput-object p5, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReuseConnection:Z

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-wide/16 v2, 0x7530

    .line 39
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    .line 40
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    .line 41
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 44
    iput v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lokhttp3/Dns;

    .line 46
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:[B

    .line 49
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    .line 50
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIgnoreServerCert:Z

    .line 51
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mRetryOnConnectionFailure:Z

    .line 52
    iput v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    .line 53
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    .line 54
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    .line 55
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    .line 56
    iput v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mToken:I

    .line 65
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 66
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 68
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReuseConnection:Z

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-wide/16 v2, 0x7530

    .line 39
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    .line 40
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    .line 41
    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 44
    iput v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lokhttp3/Dns;

    .line 46
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:[B

    .line 49
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    .line 50
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIgnoreServerCert:Z

    .line 51
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mRetryOnConnectionFailure:Z

    .line 52
    iput v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    .line 53
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    .line 54
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    .line 55
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    .line 56
    iput v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mToken:I

    .line 81
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBsfUrl()Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    return-object p0
.end method

.method public getCipherSuite()[B
    .registers 1

    .line 358
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:[B

    return-object p0
.end method

.method public getCipherSuiteType()I
    .registers 1

    .line 371
    iget p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCiphersuite:I

    return p0
.end method

.method public getConnectionTimeout()J
    .registers 3

    .line 207
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    return-wide v0
.end method

.method public getDns()Lokhttp3/Dns;
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lokhttp3/Dns;

    return-object p0
.end method

.method public getFollowRedirects()Z
    .registers 1

    .line 239
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    return p0
.end method

.method public getForcedProtocolVersion()Z
    .registers 1

    .line 310
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseForcedProtocol:Z

    return p0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getIgnoreServerCert()Z
    .registers 1

    .line 293
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIgnoreServerCert:Z

    return p0
.end method

.method public getIpVersion()I
    .registers 1

    .line 319
    iget p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    return p0
.end method

.method public getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-object p0
.end method

.method public getMethodString()Ljava/lang/String;
    .registers 2

    .line 89
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_26

    const-string p0, ""

    return-object p0

    :pswitch_10
    const-string p0, "TRACE"

    return-object p0

    :pswitch_13
    const-string p0, "OPTIONS"

    return-object p0

    :pswitch_16
    const-string p0, "HEAD"

    return-object p0

    :pswitch_19
    const-string p0, "DELETE"

    return-object p0

    :pswitch_1c
    const-string p0, "PUT"

    return-object p0

    :pswitch_1f
    const-string p0, "POST"

    return-object p0

    :pswitch_22
    const-string p0, "GET"

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public getPassword()Ljava/lang/String;
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneId()I
    .registers 1

    .line 248
    iget p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    return p0
.end method

.method public getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    return-object p0
.end method

.method public getProxy()Ljava/net/Proxy;
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public getQueryParams()Lcom/sec/internal/helper/httpclient/HttpQueryParams;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    return-object p0
.end method

.method public getReadTimeout()J
    .registers 3

    .line 216
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    return-wide v0
.end method

.method public getRetryOnConnectionFailure()Z
    .registers 1

    .line 302
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mRetryOnConnectionFailure:Z

    return p0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public getToken()I
    .registers 1

    .line 363
    iget p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mToken:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUseImei()Z
    .registers 1

    .line 350
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    return p0
.end method

.method public getUseProxy()Z
    .registers 1

    .line 337
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    return p0
.end method

.method public getUseTls()Z
    .registers 1

    .line 284
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    return p0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method public getWriteTimeout()J
    .registers 3

    .line 225
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    return-wide v0
.end method

.method public isReuseConnection()Z
    .registers 1

    .line 138
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReuseConnection:Z

    return p0
.end method

.method public setBsfUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    return-object p0
.end method

.method public setCipherSuite([B)V
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:[B

    return-void
.end method

.method public setCipherSuiteType(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 366
    iput p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCiphersuite:I

    return-object p0
.end method

.method public setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 3

    .line 211
    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    return-object p0
.end method

.method public setDns(Lokhttp3/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lokhttp3/Dns;

    return-object p0
.end method

.method public setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 243
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setIgnoreServerCert(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 297
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIgnoreServerCert:Z

    return-object p0
.end method

.method public setIpVersion(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 323
    iput p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    return-object p0
.end method

.method public setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 252
    iput p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    return-object p0
.end method

.method public setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    return-object p0
.end method

.method public setPostBody(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 3

    .line 178
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    return-object p0
.end method

.method public setPostBody(Lorg/json/JSONArray;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 3

    .line 188
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    return-object p0
.end method

.method public setPostBody(Lorg/json/JSONObject;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 3

    .line 183
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    return-object p0
.end method

.method public setPostBody([B)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 3

    .line 193
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>([B)V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    return-object p0
.end method

.method public setPostParams(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    return-object p0
.end method

.method public setProtocol(Z)V
    .registers 2

    .line 306
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseForcedProtocol:Z

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public setQueryParams(Lcom/sec/internal/helper/httpclient/HttpQueryParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    return-object p0
.end method

.method public setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 3

    .line 220
    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    return-object p0
.end method

.method public setReuseConnection(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 133
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReuseConnection:Z

    return-object p0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public setToken(I)V
    .registers 2

    .line 361
    iput p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mToken:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setUseImei(Z)V
    .registers 2

    .line 346
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    return-void
.end method

.method public setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 341
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    return-object p0
.end method

.method public setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 288
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method public setWriteTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .registers 3

    .line 229
    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    return-object p0
.end method

.method public toDebugLogs()Ljava/lang/String;
    .registers 5

    .line 375
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    if-eqz v1, :cond_6c

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 377
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "x-att-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "x-att-deviceId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\r\n        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 383
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 388
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    if-eqz v1, :cond_ed

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ed

    .line 390
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ed

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\r\n        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Authorization"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 393
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "username=\"[^\"]*@[^\"]*\""

    .line 396
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 397
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 398
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9d

    const-string/jumbo v6, "username"

    .line 399
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9d

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "username=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_9d
    const-string/jumbo v4, "uri=\"[^\"]*[^\"]\""

    .line 405
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 407
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    :cond_c0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_19

    .line 412
    :cond_c5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "X-3GPP-Intended-Identity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 413
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_19

    .line 415
    :cond_e2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_19

    .line 419
    :cond_ed
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpRequestParams[\r\n    mMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mNafUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mBsfUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    .line 420
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mQueryParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    const-string v3, ""

    if-eqz v2, :cond_12c

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12d

    :cond_12c
    move-object v2, v3

    :goto_12d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mHeaders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toDebugLogs()Ljava/lang/String;

    move-result-object v0

    :cond_13f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n    mConnectionTimeout: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\r\n    mReadTimeout: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\r\n    mWriteTimeout: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\r\n    mFollowRedirects: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\r\n]\r\n    mPostBody: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_181

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    if-eqz p0, :cond_181

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_181
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
