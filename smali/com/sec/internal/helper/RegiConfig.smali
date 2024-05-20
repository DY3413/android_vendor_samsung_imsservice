.class public Lcom/sec/internal/helper/RegiConfig;
.super Ljava/lang/Object;
.source "RegiConfig.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiConfig"


# instance fields
.field private mAppRealm:Ljava/lang/String;

.field private mAppUserPwd:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndUserConfReqId:Ljava/lang/String;

.field private mHomeNetworkDomain:Ljava/lang/String;

.field private mIpType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAlive:Z

.field private mLboPcscfAddress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcscfIdx:I

.field private mPhoneId:I

.field private mPrivateUserIdentity:Ljava/lang/String;

.field private mPublicUserIdentity:Ljava/lang/String;

.field private mQValue:Ljava/lang/String;

.field private mRcsVolteSingleReg:I

.field private mRegRetryBaseTime:I

.field private mRegRetryMaxTime:I

.field private mTimer1:I

.field private mTimer2:I

.field private mTimer4:I

.field private mTransProtoPsRoamSignaling:Ljava/lang/String;

.field private mTransProtoPsSignaling:Ljava/lang/String;

.field private mTransProtoWifiSignaling:Ljava/lang/String;

.field private mTransportPsMedia:Ljava/lang/String;

.field private mTransportPsMediaRoaming:Ljava/lang/String;

.field private mTransportWifiMedia:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    .line 58
    iput p1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 59
    iput-object p2, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->loadDefaultValues()V

    return-void
.end method

.method private loadDefaultValues()V
    .locals 2

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mAppUserPwd:Ljava/lang/String;

    const-string v1, "MSRPoTLS"

    .line 65
    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportWifiMedia:Ljava/lang/String;

    const-string v1, "MSRP"

    .line 66
    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMedia:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMediaRoaming:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mQValue:Ljava/lang/String;

    const-string v1, "SIPoTLS"

    .line 69
    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoWifiSignaling:Ljava/lang/String;

    const-string v1, "SIPoUDP"

    .line 70
    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsSignaling:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mEndUserConfReqId:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsRoamSignaling:Ljava/lang/String;

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/sec/internal/helper/RegiConfig;->mKeepAlive:Z

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRcsVolteSingleReg:I

    .line 75
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer1:I

    .line 76
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer2:I

    .line 77
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer4:I

    .line 78
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryBaseTime:I

    .line 79
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryMaxTime:I

    return-void
.end method

.method private setAppRealm()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "realm"

    .line 128
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 127
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mAppRealm:Ljava/lang/String;

    return-void
.end method

.method private setAppUserPwd()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "UserPwd"

    .line 123
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 122
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mAppUserPwd:Ljava/lang/String;

    return-void
.end method

.method private setEndUserConfReqId()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "endUserConfReqId"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mEndUserConfReqId:Ljava/lang/String;

    return-void
.end method

.method private setHomeNetworkDomain()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "home_network_domain_name"

    .line 118
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 117
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mHomeNetworkDomain:Ljava/lang/String;

    return-void
.end method

.method private setKeepAlive()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "keep_alive_enabled"

    .line 145
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 144
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/helper/RegiConfig;->mKeepAlive:Z

    return-void
.end method

.method private setPcscfAddress()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "address"

    .line 102
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readListStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "addresstype"

    .line 104
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readListStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mIpType:Ljava/util/List;

    return-void
.end method

.method private setPrivateUserIdentity()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "private_user_identity"

    .line 109
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 108
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mPrivateUserIdentity:Ljava/lang/String;

    return-void
.end method

.method private setPublicUserIdentity()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getImpu(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mPublicUserIdentity:Ljava/lang/String;

    return-void
.end method

.method private setRcsVolteSingleReg()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "rcsVolteSingleRegistration"

    .line 171
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 170
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRcsVolteSingleReg:I

    return-void
.end method

.method private setRegRetryTime()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "RegRetryBaseTime"

    .line 184
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 183
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryBaseTime:I

    .line 185
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v3, "RegRetryMaxTime"

    .line 186
    invoke-static {v3, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryMaxTime:I

    return-void
.end method

.method private setTimer()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "Timer_T1"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer1:I

    .line 176
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v3, "Timer_T2"

    .line 177
    invoke-static {v3, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer2:I

    .line 178
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v3, "Timer_T4"

    .line 179
    invoke-static {v3, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer4:I

    return-void
.end method

.method private setTransportProtoSignaling()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string/jumbo v2, "wifisignalling"

    .line 155
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIPoTLS"

    .line 154
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoWifiSignaling:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "pssignalling"

    .line 158
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIPoUDP"

    .line 157
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsSignaling:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "pssignallingroaming"

    .line 161
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsSignaling:Ljava/lang/String;

    .line 160
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsRoamSignaling:Ljava/lang/String;

    return-void
.end method

.method private setTransportPsMedia()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "psmedia"

    .line 138
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSRP"

    .line 137
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMedia:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "psmediaroaming"

    .line 140
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMedia:Ljava/lang/String;

    .line 139
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMediaRoaming:Ljava/lang/String;

    return-void
.end method

.method private setTransportWifiMedia()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string/jumbo v2, "wifimedia"

    .line 133
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSRPoTLS"

    .line 132
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportWifiMedia:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppRealm()Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mAppRealm:Ljava/lang/String;

    return-object p0
.end method

.method public getAppUserPwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mAppUserPwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/internal/helper/RegiConfig;->mAppUserPwd:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getEndUserConfReqId()Ljava/lang/String;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mEndUserConfReqId:Ljava/lang/String;

    return-object p0
.end method

.method public getHomeNetworkDomain()Ljava/lang/String;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mHomeNetworkDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getKeepAlive()Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/sec/internal/helper/RegiConfig;->mKeepAlive:Z

    return p0
.end method

.method public getLboPcscfAddressAndIpType()Landroid/os/Bundle;
    .locals 7

    .line 272
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 273
    iget v0, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 274
    iget v0, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    iget-object v2, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 275
    sget-object v0, Lcom/sec/internal/helper/RegiConfig;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v3, "getRcsPcscfAddress : reset pcscfIdx because lboPcscflist is changed"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    iput v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mIpType:Ljava/util/List;

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    sget-object v2, Lcom/sec/internal/helper/RegiConfig;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRcsPcscfAddress mPcscfIdx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lboPcscfAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ipType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mIpType:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 288
    :goto_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "address"

    .line 289
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "addresstype"

    .line 290
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPrivateUserIdentity()Ljava/lang/String;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mPrivateUserIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicUserIdentity()Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mPublicUserIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getQValue()Ljava/lang/String;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mQValue:Ljava/lang/String;

    return-object p0
.end method

.method public getRcsVolteSingleReg()I
    .locals 0

    .line 246
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mRcsVolteSingleReg:I

    return p0
.end method

.method public getRegRetryBaseTime(I)I
    .locals 1

    .line 262
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryBaseTime:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public getRegRetryMaxTime(I)I
    .locals 1

    .line 266
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryMaxTime:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public getTimer1(I)I
    .locals 1

    .line 250
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer1:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public getTimer2(I)I
    .locals 1

    .line 254
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer2:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public getTimer4(I)I
    .locals 1

    .line 258
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer4:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public getTransProtoPsRoamSignaling()Ljava/lang/String;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsRoamSignaling:Ljava/lang/String;

    return-object p0
.end method

.method public getTransProtoPsSignaling()Ljava/lang/String;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsSignaling:Ljava/lang/String;

    return-object p0
.end method

.method public getTransProtoWifiSignaling()Ljava/lang/String;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoWifiSignaling:Ljava/lang/String;

    return-object p0
.end method

.method public getTransportPsMedia()Ljava/lang/String;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMedia:Ljava/lang/String;

    return-object p0
.end method

.method public getTransportPsMediaRoaming()Ljava/lang/String;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMediaRoaming:Ljava/lang/String;

    return-object p0
.end method

.method public getTransportWifiMedia()Ljava/lang/String;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportWifiMedia:Ljava/lang/String;

    return-object p0
.end method

.method public load()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setPcscfAddress()V

    .line 84
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setPrivateUserIdentity()V

    .line 85
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setPublicUserIdentity()V

    .line 86
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setAppRealm()V

    .line 87
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setAppUserPwd()V

    .line 88
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setHomeNetworkDomain()V

    .line 89
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setTransportWifiMedia()V

    .line 90
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setTransportPsMedia()V

    .line 91
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setKeepAlive()V

    .line 92
    invoke-virtual {p0}, Lcom/sec/internal/helper/RegiConfig;->setQValue()V

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setTransportProtoSignaling()V

    .line 94
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setEndUserConfReqId()V

    .line 95
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setRcsVolteSingleReg()V

    .line 96
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setTimer()V

    .line 97
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setRegRetryTime()V

    return-void
.end method

.method public setQValue()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v2, "q-value"

    .line 150
    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 149
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mQValue:Ljava/lang/String;

    return-void
.end method
