.class Lcom/sec/internal/google/SipDelegateConfig;
.super Ljava/lang/Object;
.source "SipDelegateConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/SipDelegateConfig$Builder;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SipDelegateConfig"


# instance fields
.field mAssociatedUriHeader:Ljava/lang/String;

.field private mBuilder:Lcom/sec/internal/google/SipDelegateConfig$Builder;

.field mCniHeader:Ljava/lang/String;

.field mContactUserParam:Ljava/lang/String;

.field private mFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGruu:Landroid/net/Uri;

.field mHomeDomain:Ljava/lang/String;

.field mImei:Ljava/lang/String;

.field mIpsecLastLocalTxPort:I

.field mIpsecLastRemoteTxPort:I

.field mIpsecLocalRxPort:I

.field mIpsecLocalTxPort:I

.field mIpsecRemoteRxPort:I

.field mIpsecRemoteTxPort:I

.field mIsSipCompactFormEnabled:Z

.field mIsSipKeepaliveEnabled:Z

.field mLocalAddress:Ljava/net/InetSocketAddress;

.field mMaxUdpPayloadSize:I

.field mNatAddress:Ljava/net/InetSocketAddress;

.field mPaniHeader:Ljava/lang/String;

.field mPathHeader:Ljava/lang/String;

.field mPlaniHeader:Ljava/lang/String;

.field mPrivateUserIdentifier:Ljava/lang/String;

.field mPublicUserIdentifier:Ljava/lang/String;

.field mSecurityVerifyHeader:Ljava/lang/String;

.field mServiceRouteHeader:Ljava/lang/String;

.field mSipAuthHeader:Ljava/lang/String;

.field mSipAuthNonce:Ljava/lang/String;

.field mSipServerAddress:Ljava/net/InetSocketAddress;

.field mTransportType:I

.field mUserAgentHeader:Ljava/lang/String;

.field mVersion:I


# direct methods
.method public static synthetic $r8$lambda$r6P0OLmLVOUCg_7zs2a-ulGC69g(Lcom/sec/internal/google/SipDelegateConfig;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/google/SipDelegateConfig;->lambda$getBuilder$0()Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBuilder(Lcom/sec/internal/google/SipDelegateConfig;Lcom/sec/internal/google/SipDelegateConfig$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mBuilder:Lcom/sec/internal/google/SipDelegateConfig$Builder;

    return-void
.end method

.method private constructor <init>(ILjava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mTransportType:I

    .line 31
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mLocalAddress:Ljava/net/InetSocketAddress;

    .line 32
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSipServerAddress:Ljava/net/InetSocketAddress;

    .line 33
    iput-boolean v2, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIsSipCompactFormEnabled:Z

    .line 34
    iput-boolean v2, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIsSipKeepaliveEnabled:Z

    .line 35
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mMaxUdpPayloadSize:I

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPublicUserIdentifier:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mHomeDomain:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mImei:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mGruu:Landroid/net/Uri;

    .line 41
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSipAuthHeader:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSipAuthNonce:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPathHeader:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mUserAgentHeader:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mContactUserParam:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mCniHeader:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mAssociatedUriHeader:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecLocalTxPort:I

    .line 52
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecLocalRxPort:I

    .line 53
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecLastLocalTxPort:I

    .line 54
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecRemoteTxPort:I

    .line 55
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecRemoteRxPort:I

    .line 56
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecLastRemoteTxPort:I

    .line 57
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSecurityVerifyHeader:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mNatAddress:Ljava/net/InetSocketAddress;

    .line 67
    iput p1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mVersion:I

    .line 68
    iput-object p2, p0, Lcom/sec/internal/google/SipDelegateConfig;->mFeatureTags:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/Set;Lcom/sec/internal/google/SipDelegateConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/google/SipDelegateConfig;-><init>(ILjava/util/Set;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mTransportType:I

    .line 31
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mLocalAddress:Ljava/net/InetSocketAddress;

    .line 32
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSipServerAddress:Ljava/net/InetSocketAddress;

    .line 33
    iput-boolean v2, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIsSipCompactFormEnabled:Z

    .line 34
    iput-boolean v2, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIsSipKeepaliveEnabled:Z

    .line 35
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mMaxUdpPayloadSize:I

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPublicUserIdentifier:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mHomeDomain:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mImei:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mGruu:Landroid/net/Uri;

    .line 41
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSipAuthHeader:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSipAuthNonce:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPathHeader:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mUserAgentHeader:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mContactUserParam:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mCniHeader:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mAssociatedUriHeader:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecLocalTxPort:I

    .line 52
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecLocalRxPort:I

    .line 53
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecLastLocalTxPort:I

    .line 54
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecRemoteTxPort:I

    .line 55
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecRemoteRxPort:I

    .line 56
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mIpsecLastRemoteTxPort:I

    .line 57
    iput-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSecurityVerifyHeader:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mNatAddress:Ljava/net/InetSocketAddress;

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mVersion:I

    .line 62
    iput-object p1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mFeatureTags:Ljava/util/Set;

    return-void
.end method

.method private synthetic lambda$getBuilder$0()Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 3

    .line 83
    new-instance v0, Lcom/sec/internal/google/SipDelegateConfig$Builder;

    iget v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mVersion:I

    iget-object v2, p0, Lcom/sec/internal/google/SipDelegateConfig;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/google/SipDelegateConfig$Builder;-><init>(ILjava/util/Set;)V

    iput-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mBuilder:Lcom/sec/internal/google/SipDelegateConfig$Builder;

    return-object v0
.end method


# virtual methods
.method public convert()Landroid/telephony/ims/SipDelegateConfiguration;
    .locals 10

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mVersion:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mVersion:I

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    iget v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mVersion:I

    int-to-long v2, v1

    iget v4, p0, Lcom/sec/internal/google/SipDelegateConfig;->mTransportType:I

    iget-object v5, p0, Lcom/sec/internal/google/SipDelegateConfig;->mLocalAddress:Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSipServerAddress:Ljava/net/InetSocketAddress;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mHomeDomain:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mImei:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPublicUserIdentifier:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPrivateUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mContactUserParam:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSipAuthHeader:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAuthenticationHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSipAuthNonce:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAuthenticationNonce(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mUserAgentHeader:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    new-instance v9, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/internal/google/SipDelegateConfig;->mSecurityVerifyHeader:Ljava/lang/String;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    .line 103
    invoke-virtual {v0, v9}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig;->mAssociatedUriHeader:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mMaxUdpPayloadSize:I

    .line 108
    invoke-virtual {v0, p0}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 92
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getBuilder()Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mBuilder:Lcom/sec/internal/google/SipDelegateConfig$Builder;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/google/SipDelegateConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/google/SipDelegateConfig$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/google/SipDelegateConfig;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;

    return-object p0
.end method

.method getFeatureTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getLastPaniHeader()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    return-object p0
.end method

.method getPaniHeader()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    return-object p0
.end method

.method getVersion()I
    .locals 1

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget v0, p0, Lcom/sec/internal/google/SipDelegateConfig;->mVersion:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
