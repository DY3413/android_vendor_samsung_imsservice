.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
.source "SIMDeviceActivation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mDeviceGroup:Ljava/lang/String;

.field private mMSISDN:Ljava/lang/String;

.field private mPushToken:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mVIMSI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 33
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->LOG_TAG:Ljava/lang/String;

    const-string p1, "created."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->LOG_TAG:Ljava/lang/String;

    const-string p1, "created."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public activateSIMDevice(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 122
    iput-wide p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryInterval:J

    .line 124
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getVIMSIforSIMDevice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    const-string v1, "Samsung-NSDS-CM-2.0"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->activateSIMDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public activateSIMDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mVIMSI:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mMSISDN:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mDeviceGroup:Ljava/lang/String;

    const-string p1, "conn-mgr"

    .line 156
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mServiceName:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mClientId:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mPushToken:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->executeOperationWithChallenge()V

    return-void
.end method

.method public buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    .locals 12

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    .line 55
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 57
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 58
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getChallengeResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getAkaToken()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getImsiEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    .line 57
    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildAuthenticationRequest(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;

    move-result-object v10

    .line 61
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mVIMSI:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mDeviceGroup:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 61
    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildManageConnectivityRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;

    move-result-object v11

    .line 65
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mMSISDN:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mServiceName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mClientId:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mPushToken:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    .line 65
    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildManagePushTokenRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;

    move-result-object p0

    .line 68
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildGetMSISDNRequest(ILjava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    const/4 v1, 0x1

    aput-object v11, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    return-object v0
.end method

.method protected executeOperationWithChallenge()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v2, p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->performOperation(ILcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V

    return-void
.end method

.method protected getResponseMessage()Landroid/os/Message;
    .locals 1

    const/4 p0, 0x0

    const/16 v0, 0x67

    .line 77
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected processResponse(Landroid/os/Bundle;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v1, "manageConnectivity"

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;

    const-string v2, "managePushToken"

    .line 92
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    const-string v3, "getMSISDN"

    .line 93
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v0

    const/4 v5, 0x2

    aput-object v2, v3, v5

    .line 97
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->retryForServerError([Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v4

    :cond_0
    move-object p1, v1

    move-object v2, p1

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 104
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSimDeviceActivationResponse : responseManageConnectivity respCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "responseManagePushToken respCode:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "responseGetMsisdn respCode:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->LOG_TAG:Ljava/lang/String;

    const-string p1, "one of the responses is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method
