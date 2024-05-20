.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
.source "RetrieveAkaToken.java"


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

    .line 29
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 26
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->LOG_TAG:Ljava/lang/String;

    const-string p1, "created."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    .locals 8

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    .line 42
    new-instance p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 45
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getChallengeResponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getAkaToken()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getImsiEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildAuthenticationRequest(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    return-object p1
.end method

.method protected executeOperationWithChallenge()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->performOperation(ILcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V

    return-void
.end method

.method protected getResponseMessage()Landroid/os/Message;
    .locals 1

    const/4 p0, 0x0

    const/16 v0, 0x76

    .line 52
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected processResponse(Landroid/os/Bundle;)Z
    .locals 4

    .line 62
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->LOG_TAG:Ljava/lang/String;

    const-string v1, "processResponse for akatoken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, "3gppAuthentication"

    .line 65
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    if-eqz p1, :cond_0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response3gppAuthentication responseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v2, v1, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 71
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->retryForServerError([Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "processResponse - server error"

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    return v1
.end method

.method public retrieveAkaToken(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 85
    iput-wide p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryInterval:J

    .line 87
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getVIMSIforSIMDevice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    const-string v1, "Samsung-NSDS-CM-2.0"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->retrieveAkaToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public retrieveAkaToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mVIMSI:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mMSISDN:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mDeviceGroup:Ljava/lang/String;

    const-string p1, "conn-mgr"

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mServiceName:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mClientId:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mPushToken:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->executeOperationWithChallenge()V

    return-void
.end method
