.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;
.source "ConfigurationRetrievalWithSIM.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;->LOG_TAG:Ljava/lang/String;

    const-string p1, "created."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public retriveDeviceConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mOperation:I

    .line 37
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mVIMSI:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mDeviceGroup:Ljava/lang/String;

    .line 41
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move v4, p7

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->setDeviceParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 42
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->setRequestUrl(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->executeOperationWithChallenge()V

    return-void
.end method
