.class public Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
.super Lcom/sec/internal/helper/StateMachine;
.source "UtStateMachine.java"


# static fields
.field public static final DOCUMENT_CACHE_RESET_TIMEOUT:I = 0x3e8

.field public static final HTTP_CONNECTION_TIMEOUT:J = 0x2710L

.field public static final HTTP_READ_TIMEOUT:J = 0x2710L

.field public static final HTTP_READ_TIMEOUT_GCF:J = 0x7d0L

.field public static final HTTP_READ_TIMEOUT_TMB:J = 0x7d00L

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_RETRY_COUNT_412:I = 0x3

.field public static final PDN_LINGER_TIMEOUT:I = 0x1388

.field public static final SECOND:J = 0x3e8L

.field private static mCBIdCounter:I


# instance fields
.field public isGetBeforePut:Z

.field public isRetryingCreatePdn:Z

.field private mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

.field public mBsfRetryCounter:I

.field protected mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

.field private mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

.field private mContext:Landroid/content/Context;

.field public mCount412RetryDone:I

.field private mDns:Lcom/squareup/okhttp/Dns;

.field protected mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

.field public mForce403Error:Z

.field protected mHasCFCache:Z

.field protected mHasICBCache:Z

.field protected mHasOCBCache:Z

.field protected mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field public mIsFailedBySuspended:Z

.field public mIsGetAfter412:Z

.field public mIsGetForAllCb:Z

.field public mIsGetSdBy404:Z

.field private mIsRunningRequest:Z

.field public mIsSuspended:Z

.field public mIsUtConnectionError:Z

.field public mMainCondition:I

.field public mNafRetryCounter:I

.field private mNetwork:Landroid/net/Network;

.field protected mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

.field public mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field public mPdnRetryCounter:I

.field public mPdnType:I

.field private final mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/UtProfile;",
            ">;"
        }
    .end annotation
.end field

.field public mPhoneId:I

.field public mPrevGetType:I

.field protected mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

.field protected mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

.field protected mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

.field protected mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

.field public mSeparatedCFNL:Z

.field public mSeparatedCFNRY:Z

.field public mSeparatedCfAll:Z

.field public mSeparatedMedia:Z

.field public mSocketFactory:Ljavax/net/SocketFactory;

.field protected mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

.field mUtCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

.field public mUtHttpRetryCounter:I

.field public mUtRetryCounter:I

.field public final mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

.field public needPdnRequestForCW:Z


# direct methods
.method public static synthetic $r8$lambda$W9DBqFOzHkgAKk4KhRpF6zw-Lu0(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->lambda$makeHttpParams$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmApn(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetwork(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshDns(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->refreshDns()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDnsInfo(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateDnsInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 104
    sput v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;)V
    .locals 1

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lcom/squareup/okhttp/Dns;

    const/4 p2, -0x1

    .line 66
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    .line 67
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    .line 69
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    .line 71
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    .line 73
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mForce403Error:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    .line 74
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    .line 75
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 77
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    .line 78
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    .line 83
    new-instance p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 85
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 87
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    const/4 p2, 0x1

    .line 100
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    .line 107
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    .line 108
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 2104
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 2156
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 116
    iput-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 117
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 118
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 119
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    .line 121
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    .line 122
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    return-void
.end method

.method private addKddiCbRules(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 9

    if-nez p1, :cond_0

    .line 1204
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/16 v2, 0xa

    const-string v3, " media = "

    const-string v4, " conditions = "

    const-string v5, "KDDI_UT added rule id = "

    const/4 v6, 0x6

    if-ne v1, v2, :cond_3

    .line 1210
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1211
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->valueList:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->parseSIBtarget([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1212
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 1213
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1214
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    :cond_1
    invoke-virtual {p1, v6}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1217
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p1, v6, p0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    .line 1218
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0

    :cond_3
    if-ne v1, v6, :cond_4

    .line 1223
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeCBRule(III)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v0

    .line 1224
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v2, "ss_icb_anonymous_ruleid"

    const-string v6, ""

    invoke-virtual {v1, p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1225
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1226
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method private getApnSettingFromPdnType(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/16 p0, 0xc

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x800

    return p0

    :cond_1
    const/16 p0, 0x80

    return p0

    :cond_2
    const/16 p0, 0x11

    return p0
.end method

.method private getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 1

    .line 1476
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1478
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCb:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1479
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string p2, "no exact CB rule media match -> media ALL should be used"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private getPdnType()I
    .locals 1

    .line 689
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "xcap"

    :goto_0
    const-string v0, "cbs"

    .line 691
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xc

    return p0

    :cond_1
    const-string v0, "default"

    .line 693
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-string/jumbo v0, "wifi"

    .line 695
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/16 p0, 0x1b

    return p0
.end method

.method private initializeUtParameters()V
    .locals 1

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    .line 239
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    .line 240
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    const/4 v0, -0x1

    .line 241
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    return-void
.end method

.method private isChnNoRuleCbPut403Error()Z
    .locals 5

    .line 2078
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 2079
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2080
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 2081
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const/16 v3, 0x67

    if-ne v2, v3, :cond_0

    .line 2082
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v3, :cond_0

    .line 2083
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x69

    if-ne v2, v3, :cond_1

    .line 2085
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v2, :cond_1

    .line 2086
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCsfbErrorCode(ILcom/sec/internal/constants/Mno;)Z
    .locals 7

    .line 2048
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result p2

    const/16 v0, 0x3f1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p2, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3f5

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 2055
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->csfbErrorCodeList:[Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 2059
    :cond_2
    array-length v2, v0

    if-nez v2, :cond_3

    return v1

    .line 2063
    :cond_3
    aget-object v0, v0, v1

    const-string v2, "all"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return p2

    .line 2067
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->csfbErrorCodeList:[Ljava/lang/String;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p0, v2

    .line 2068
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "x"

    const-string v6, "[0-9]"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    return p2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_1
    return p2
.end method

.method private isGcfTelUri(Lcom/sec/internal/constants/Mno;)Z
    .locals 1

    .line 649
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p0

    .line 651
    sget-object v0, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_1

    const-string p1, "CHM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "CBK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "CHC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isRetryPdnFailCause(I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1

    const v1, 0x10001

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 837
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRetryFailCause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 839
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_4

    :cond_2
    if-nez p1, :cond_4

    .line 840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdnRetryCounter: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    if-gt p1, v4, :cond_3

    add-int/2addr p1, v4

    .line 842
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v4
.end method

.method private isSupportfwd(Lcom/sec/internal/constants/Mno;)Z
    .locals 0

    .line 998
    sget-object p0, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isTelUriUsePhoneContext(Lcom/sec/internal/constants/Mno;)Z
    .locals 2

    const/4 p0, 0x5

    new-array p0, p0, [Lcom/sec/internal/constants/Mno;

    .line 645
    sget-object v0, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makeHttpParams$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1813
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1815
    :catch_0
    new-instance p0, Ljava/net/UnknownHostException;

    const-string p1, "android.net.Network.getAllByName returned null"

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1810
    :cond_0
    new-instance p0, Ljava/net/UnknownHostException;

    const-string p1, "hostname == null"

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private makeCBRule(III)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .locals 1

    .line 1464
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p1

    .line 1465
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1467
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1468
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    return-object p1
.end method

.method private makeCFRule(IIILjava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .locals 1

    .line 1442
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p2

    .line 1443
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 1449
    :cond_0
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 p4, 0x0

    iput-boolean p4, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const/4 p1, 0x4

    if-ne p3, p1, :cond_2

    .line 1451
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    const-string p4, ""

    iput-object p4, p1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_1

    .line 1446
    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean p1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1447
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iput-object p4, p1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1454
    :cond_2
    :goto_1
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput p3, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1456
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1457
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p3, p1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    :cond_3
    return-object p2
.end method

.method private makeInternationalFormat(Lcom/sec/internal/constants/Mno;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 702
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->generate3GPPDomain(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v0

    .line 704
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedInternationalNumber:Z

    if-eqz v1, :cond_0

    .line 705
    invoke-static {p3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeInternationalNumber(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 706
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->EASTLINK:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_2

    .line 707
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xb

    if-ne p0, p1, :cond_1

    .line 708
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "+"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 709
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_d

    .line 710
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "+1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :cond_2
    const-string v1, ";phone-context="

    if-eqz p4, :cond_6

    .line 712
    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p2, v2, :cond_6

    .line 713
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_3

    goto :goto_0

    .line 719
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/Mno;->TELENOR_SWE:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_d

    .line 720
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 715
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 717
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 723
    :cond_6
    sget-object p2, Lcom/sec/internal/constants/Mno;->DTAC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_8

    .line 724
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez p0, :cond_7

    .line 725
    invoke-static {p3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeInternationalNumber(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 727
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";phone-context=ims.mnc005.mcc520.3gppnetwork.org"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 729
    :cond_8
    sget-object p2, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_9

    .line 730
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";phone-context=+65"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 731
    :cond_9
    sget-object p2, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_a

    .line 732
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";phone-context=+852"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_a
    if-eqz p4, :cond_b

    .line 733
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isTelUriUsePhoneContext(Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 734
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 735
    :cond_b
    sget-object p0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_c

    sget-object p0, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_c

    sget-object p0, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_d

    :cond_c
    if-eqz v0, :cond_d

    .line 737
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_d
    :goto_1
    return-object p3
.end method

.method private notifyFailResult(ILandroid/os/Bundle;)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 v1, 0x77

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p1, p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setSentSimServDoc(IZ)V

    :cond_0
    return-void

    .line 329
    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    if-eqz v1, :cond_2

    .line 330
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    const/16 v0, 0x19c

    const-string v1, "errorCode"

    .line 331
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorMsg"

    const-string v1, "Precondition Failed"

    .line 332
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x73

    goto :goto_0

    .line 342
    :cond_1
    :pswitch_2
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 353
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private printCompleteLog([Landroid/os/Bundle;II)V
    .locals 3

    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtXcap["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2222
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {Success}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2225
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2227
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",<,T"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractCrLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2229
    sget-object p2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {p2, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2230
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p2, p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    const p0, 0x31000006

    .line 2231
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method private printFailLog(Landroid/os/Bundle;II)V
    .locals 2

    .line 2235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UtXcap["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]< [!ERROR] "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",<,F,"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "originErrorCode"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "errorCode"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2238
    sget-object p3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {p3, v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2239
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p3, p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    const p0, 0x31000006

    .line 2240
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method private refreshDns()V
    .locals 1

    const/4 v0, 0x0

    .line 2043
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lcom/squareup/okhttp/Dns;

    return-void
.end method

.method private requestFailed(ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1916
    invoke-static {}, Lcom/sec/internal/helper/httpclient/DnsController;->getNafAddrSize()I

    move-result v3

    .line 1917
    invoke-static {}, Lcom/sec/internal/helper/httpclient/DnsController;->getBsfAddrSize()I

    move-result v4

    .line 1919
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result v5

    const-wide/16 v6, 0x7ef4

    const/16 v8, 0x3f9

    const/16 v9, 0xf

    const/4 v10, 0x1

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v11, 0x7

    if-ne v5, v11, :cond_0

    .line 1920
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v11, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v12, "performing CSFB for CB_BA_ALL, ignoring handling NAPTR IP type"

    invoke-static {v5, v11, v12}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1921
    :cond_0
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v5, :cond_1

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    const/4 v11, 0x3

    if-ne v5, v11, :cond_1

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    add-int/lit8 v11, v5, 0x1

    if-ge v11, v3, :cond_1

    add-int/2addr v5, v10

    .line 1923
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    .line 1924
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->refreshDns()V

    .line 1925
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNafRetryCounter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1927
    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1928
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1, v9, v8, v6, v7}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    .line 1929
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 1930
    invoke-virtual {v0, v10}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    .line 1934
    :cond_1
    :goto_0
    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 1937
    sget-object v11, Lcom/sec/internal/constants/Mno;->TELEKOM_SVN:Lcom/sec/internal/constants/Mno;

    const/16 v12, 0x193

    if-ne v5, v11, :cond_2

    const/16 v11, 0x194

    if-ne v1, v11, :cond_2

    move v11, v12

    goto :goto_1

    :cond_2
    move v11, v1

    .line 1941
    :goto_1
    sget-object v13, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    const/16 v14, 0x3ec

    const/16 v15, 0x1f7

    const/4 v6, 0x0

    if-ne v5, v13, :cond_5

    if-eq v11, v15, :cond_4

    const/16 v7, 0x3ea

    if-eq v11, v7, :cond_4

    const/16 v7, 0x3f1

    if-eq v11, v7, :cond_4

    if-eq v11, v14, :cond_4

    const/16 v7, 0x3ee

    if-eq v11, v7, :cond_4

    const/16 v7, 0x3ef

    if-eq v11, v7, :cond_4

    const/16 v7, 0x3f5

    if-eq v11, v7, :cond_4

    const/16 v7, 0x3f6

    if-eq v11, v7, :cond_4

    const/16 v7, 0x2726

    if-lt v11, v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v10

    :goto_3
    if-eqz v7, :cond_5

    move v11, v12

    :cond_5
    if-ne v11, v12, :cond_6

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isForbidden()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v7, :cond_6

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->timerFor403:I

    if-eqz v7, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isChnNoRuleCbPut403Error()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1958
    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1960
    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    .line 1961
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    .line 1963
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "By 403 Error, SS request will block"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1964
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "set force CSFB by 403 Error "

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    .line 1966
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerCwdbObserver(I)V

    .line 1967
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setTimerFor403(Ljava/lang/String;)V

    .line 1969
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v1, 0xc

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v12, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    .line 1973
    :cond_6
    invoke-direct {v0, v11, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isCsfbErrorCode(ILcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v11, v12

    .line 1977
    :cond_7
    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v5, v7, :cond_8

    sget-object v7, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_9

    :cond_8
    if-ne v11, v12, :cond_9

    goto :goto_4

    :cond_9
    move v15, v11

    .line 1981
    :goto_4
    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v11, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorCode "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " is converted to "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1982
    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v5

    if-eqz v5, :cond_f

    if-eq v1, v14, :cond_f

    .line 1983
    iget-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    const/16 v11, 0x64

    const/4 v12, 0x2

    if-eqz v5, :cond_e

    if-eqz v2, :cond_e

    .line 1984
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1985
    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    .line 1986
    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v14, "UT connection failed."

    invoke-static {v7, v13, v14}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1989
    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    add-int/2addr v13, v10

    if-lt v13, v3, :cond_a

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    add-int/2addr v13, v10

    if-ge v13, v4, :cond_c

    :cond_a
    const-string v13, "failed to connect"

    .line 1990
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string/jumbo v14, "xcap"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    iget v14, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    add-int/lit8 v6, v14, 0x1

    if-ge v6, v3, :cond_b

    add-int/2addr v14, v10

    .line 1991
    iput v14, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    .line 1993
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->refreshDns()V

    :goto_5
    move v3, v10

    goto :goto_6

    .line 1994
    :cond_b
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "bsf"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v4, :cond_c

    add-int/2addr v3, v10

    .line 1995
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    .line 1997
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->refreshDns()V

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_d

    const-string/jumbo v4, "timeout"

    .line 2000
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    if-ge v4, v12, :cond_d

    add-int/2addr v4, v10

    .line 2001
    iput v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    goto :goto_7

    :cond_d
    move v10, v3

    .line 2005
    :goto_7
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", needRetry = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mNafRetryCounter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mBsfRetryCounter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mUtHttpRetryCounter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v10, :cond_f

    .line 2008
    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 2009
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v2, 0x7ef4

    invoke-virtual {v1, v9, v8, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    .line 2010
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const-wide/16 v1, 0x64

    .line 2011
    invoke-virtual {v0, v11, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void

    :cond_e
    if-nez v5, :cond_f

    const/16 v3, 0x193

    if-eq v1, v3, :cond_10

    .line 2014
    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    if-ge v4, v12, :cond_10

    .line 2015
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "CHN operator UT failed, retry after 5s"

    invoke-static {v7, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 2016
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    .line 2018
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->clearLastAuthInfo()V

    .line 2019
    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 2020
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v2, 0x7ef4

    invoke-virtual {v1, v9, v8, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    .line 2021
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const-wide/16 v1, 0x1388

    .line 2022
    invoke-virtual {v0, v11, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void

    :cond_f
    const/16 v3, 0x193

    .line 2027
    :cond_10
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    .line 2028
    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    const/4 v4, -0x1

    .line 2029
    iput v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    .line 2032
    :cond_11
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-lez v15, :cond_12

    move v12, v15

    goto :goto_8

    :cond_12
    move v12, v3

    :goto_8
    const-string v3, "errorCode"

    .line 2033
    invoke-virtual {v4, v3, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "originErrorCode"

    .line 2034
    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_13

    .line 2035
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v1, :cond_13

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isErrorMsgDisplay:Z

    if-eqz v1, :cond_13

    .line 2036
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorMsg"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    :cond_13
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->failUtRequest(Landroid/os/Bundle;)V

    return-void
.end method

.method private sendDisconnectPdnWithDelay()V
    .locals 8

    const/4 v0, 0x2

    .line 753
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 756
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v2, 0x0

    const/16 v3, 0x1388

    const/16 v4, 0x74

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_2

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v1, :cond_5

    .line 760
    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->delay_disconnect_pdn:I

    if-le v1, v3, :cond_4

    .line 763
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 764
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    if-ge v2, v0, :cond_5

    .line 769
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    if-eq v5, v4, :cond_4

    goto :goto_1

    :cond_4
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    move v2, v3

    .line 776
    :goto_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendDisconnectPdnWithDelay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "ms, loadedSim : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    int-to-long v1, v2

    .line 777
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private setCbUserConfig(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;ZI)V
    .locals 4

    .line 568
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    const-string/jumbo v1, "ss_video_cb_pref"

    const-string/jumbo v2, "ss_volte_cb_pref"

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 569
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v3

    move-object v1, v2

    goto :goto_0

    .line 571
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne p1, v0, :cond_1

    .line 572
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    or-int p1, v3, p3

    goto :goto_1

    :cond_2
    not-int p1, p3

    and-int/2addr p1, v3

    .line 581
    :goto_1
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, p2, v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    return-void
.end method

.method private setTimerFor403(Ljava/lang/String;)V
    .locals 4

    .line 2095
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->timerFor403:I

    .line 2096
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10 minutes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x258

    :cond_0
    if-lez v0, :cond_1

    const/16 p1, 0xe

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 2100
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    :cond_1
    return-void
.end method

.method private updateCallforwardingInfo(Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 5

    .line 897
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-nez v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v1, 0xff

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    goto :goto_0

    .line 899
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v0, v1, :cond_1

    .line 900
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 903
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez v1, :cond_2

    .line 904
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 906
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previous activated number set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    .line 916
    iget p1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    .line 917
    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    .line 916
    invoke-static {p1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 918
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    if-nez v0, :cond_5

    const/4 v0, 0x2

    if-ne v3, v0, :cond_5

    .line 919
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 920
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-static {v0, v1, p1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    .line 919
    invoke-static {p1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 923
    :cond_5
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 924
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    .line 923
    invoke-static {p1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 913
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleSet()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    .line 912
    invoke-static {p1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object p1

    .line 928
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v1, v2, :cond_7

    .line 929
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->clear()V

    :cond_7
    return-object p1
.end method

.method private updateDnsInfo()V
    .locals 4

    .line 2177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2180
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2182
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2185
    :catch_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "UnknownHostException"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2188
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "Dns Service List is null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xc

    const/16 v1, 0x3fa

    .line 2189
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected checkUtInternalError()I
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isForbidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "SS request is blocked by previous 403 error"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3eb

    return p0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 251
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "not support All CB over IMS. CSFB."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3ea

    return p0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkAvailabilityError(I)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isInvalidUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x3f0

    return p0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkXcapApn(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 p0, 0x3f1

    return p0

    .line 268
    :cond_4
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 269
    sget-object v1, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p0, 0x3f2

    return p0

    .line 273
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isServiceDeactive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 274
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "Service is disabled on network side"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3f3

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public clearCachedSsData(I)V
    .locals 3

    const/16 v0, 0x65

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x67

    if-eq p1, v0, :cond_1

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    .line 621
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 622
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 623
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    return-void

    .line 615
    :cond_0
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 616
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    return-void

    .line 611
    :cond_1
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 612
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    return-void

    .line 607
    :cond_2
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 608
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    return-void
.end method

.method protected completeUtRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    return-void
.end method

.method protected completeUtRequest(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 296
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    return-void
.end method

.method protected completeUtRequest(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    .line 288
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v2, "status"

    .line 289
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    return-void
.end method

.method protected completeUtRequest([Landroid/os/Bundle;)V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 301
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    .line 303
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->printCompleteLog([Landroid/os/Bundle;II)V

    .line 305
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    invoke-static {v2, v3}, Lcom/sec/internal/helper/httpclient/DnsController;->correctServerAddr(II)V

    :cond_0
    const/16 v2, 0xf

    .line 310
    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 311
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isDisconnectXcapPdn:Z

    if-eqz v2, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendDisconnectPdnWithDelay()V

    :cond_1
    const/4 v2, 0x0

    .line 314
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 315
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 317
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v3, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    .line 319
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->unlockProcessingRequest()Z

    move-result p1

    if-nez p1, :cond_2

    .line 320
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "Process next request..."

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processUtRequest()V

    :cond_2
    return-void
.end method

.method protected createCBRequestId()I
    .locals 1

    .line 1639
    sget p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    .line 1640
    sput p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    .line 1642
    :cond_0
    sget p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    return p0
.end method

.method protected dequeueProfile()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected disconnectPdn()V
    .locals 4

    const/4 v0, 0x1

    .line 877
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const/4 v0, 0x2

    .line 878
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 879
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 880
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectPdn: mPdnType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    const/4 v0, 0x3

    .line 882
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method protected enqueueProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected failUtRequest(Landroid/os/Bundle;)V
    .locals 5

    .line 357
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 358
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    .line 360
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->printFailLog(Landroid/os/Bundle;II)V

    const/4 v1, 0x0

    .line 362
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    const/16 v2, 0xf

    .line 363
    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 364
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isDisconnectXcapPdn:Z

    if-eqz v2, :cond_1

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendDisconnectPdnWithDelay()V

    .line 368
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 369
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_3

    :cond_2
    const-string v2, "errorCode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x193

    if-ne v1, v3, :cond_3

    .line 370
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "CTC have to retry to CDMA dial"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x1389

    .line 371
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 374
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->notifyFailResult(ILandroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 377
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 379
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->unlockProcessingRequest()Z

    move-result p1

    if-nez p1, :cond_4

    .line 380
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "Process next request..."

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processUtRequest()V

    :cond_4
    return-void
.end method

.method protected getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .locals 6

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    const/16 v1, 0x69

    if-ne p1, v1, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    :cond_0
    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1319
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1322
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, p2, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p2

    .line 1323
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1324
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq p0, p1, :cond_1

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1326
    iput p0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    :cond_3
    return-object p2

    .line 1332
    :cond_4
    new-instance v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 1333
    iput-boolean v1, v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    .line 1334
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1335
    new-instance v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 1336
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iput v5, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 1337
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq p0, p1, :cond_5

    if-ne p0, v2, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    iput-boolean v1, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1339
    iput p0, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    if-nez v0, :cond_7

    .line 1342
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1344
    :cond_7
    iget-object p0, v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 1345
    iget-object p0, v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-object v3
.end method

.method protected getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .locals 8

    .line 1352
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1354
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCf:Z

    if-nez v1, :cond_1

    new-array v1, v4, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v6

    sget-object v7, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v5

    .line 1355
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v6

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v4

    sget-object v7, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v2

    .line 1356
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 1355
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v7}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v6

    :goto_2
    if-eqz v1, :cond_11

    .line 1360
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCf:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v7}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1361
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {p2, p1, v7}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p1

    goto/16 :goto_3

    :cond_4
    new-array v1, v4, [Lcom/sec/internal/constants/Mno;

    .line 1362
    sget-object v7, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v6

    sget-object v7, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1363
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p2, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p1

    .line 1364
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1365
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-array v1, v3, [Lcom/sec/internal/constants/Mno;

    .line 1366
    sget-object v7, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v6

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v4

    sget-object v4, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v4}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1367
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p1

    .line 1368
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1369
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1371
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p1

    .line 1374
    :goto_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 1376
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez v1, :cond_7

    sget-object v1, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7

    .line 1377
    sget-object p2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "number change prevented for deactivation"

    invoke-static {p2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 1379
    :cond_7
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object p2, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1382
    :goto_4
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq v1, v5, :cond_9

    if-ne v1, v2, :cond_8

    goto :goto_5

    :cond_8
    move v5, v6

    :cond_9
    :goto_5
    iput-boolean v5, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    goto :goto_6

    .line 1384
    :cond_a
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v1, v5, :cond_b

    .line 1386
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1387
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_d

    .line 1388
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object p2, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_6

    :cond_b
    if-ne v1, v3, :cond_c

    .line 1391
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    const-string v1, ""

    iput-object v1, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1392
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v6, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    goto :goto_6

    .line 1394
    :cond_c
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v6, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1396
    :cond_d
    :goto_6
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iput v1, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1398
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 1399
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v1, "sip:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v1, "voicemail:"

    .line 1400
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 1401
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v1, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_7

    .line 1402
    :cond_e
    sget-object p2, Lcom/sec/internal/constants/Mno;->TMOBILE_PL:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_f

    .line 1403
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v1, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1407
    :cond_f
    :goto_7
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_10

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isSupportfwd(Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1408
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_10
    return-object p1

    .line 1414
    :cond_11
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;-><init>()V

    .line 1415
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    .line 1416
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 1418
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1419
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 1422
    :cond_12
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1423
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1424
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput p1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 1425
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eqz p1, :cond_13

    if-ne p1, v3, :cond_14

    .line 1426
    :cond_13
    iput-boolean v6, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1428
    :cond_14
    iput p1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1430
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-nez p1, :cond_15

    .line 1431
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 1434
    :cond_15
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 1435
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-object v0
.end method

.method protected getCbRuleId()Ljava/lang/String;
    .locals 6

    .line 1488
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1490
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x67

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v1, v2, :cond_9

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-array v1, v5, [Lcom/sec/internal/constants/Mno;

    .line 1492
    sget-object v2, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v1, :cond_5

    .line 1493
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v1, v5, :cond_1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1494
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    return-object p0

    .line 1495
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1496
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic:Ljava/lang/String;

    return-object p0

    .line 1497
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic_exhc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1498
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic_exhc:Ljava/lang/String;

    return-object p0

    .line 1499
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1500
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    return-object p0

    .line 1503
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->DTAC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_8

    .line 1504
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 1505
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    return-object p0

    .line 1506
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 1507
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic:Ljava/lang/String;

    return-object p0

    .line 1508
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic_exhc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 1509
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic_exhc:Ljava/lang/String;

    return-object p0

    .line 1513
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OCB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->createCBRequestId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    new-array v1, v5, [Lcom/sec/internal/constants/Mno;

    .line 1516
    sget-object v2, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_d

    .line 1517
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v0, v4, :cond_a

    const/4 v2, 0x7

    if-eq v0, v2, :cond_a

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    .line 1518
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1519
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    return-object p0

    .line 1520
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 1521
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    return-object p0

    .line 1522
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 1523
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    return-object p0

    .line 1526
    :cond_d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 1527
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    return-object p0

    .line 1528
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v4, :cond_f

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 1529
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    return-object p0

    .line 1531
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->createCBRequestId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCbRuleSet(I)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 11

    .line 1232
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1234
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    const/16 v2, 0x69

    if-ne p1, v2, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 1239
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1

    .line 1240
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->addKddiCbRules(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_9

    .line 1244
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object p1

    .line 1248
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/sec/internal/constants/Mno;

    .line 1249
    sget-object v6, Lcom/sec/internal/constants/Mno;->ELISA_FINLAND:Lcom/sec/internal/constants/Mno;

    aput-object v6, v5, v2

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v8, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    aput-object v8, v5, v6

    sget-object v6, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    invoke-virtual {v0, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v6, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v6, v9, :cond_3

    .line 1251
    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1252
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_3
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v6, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v6, v10, :cond_2

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget v6, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCb:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 1256
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1259
    :cond_4
    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq v4, v7, :cond_6

    if-ne v4, v8, :cond_5

    goto :goto_1

    :cond_5
    move v5, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v5, v7

    :goto_2
    iput-boolean v5, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1261
    iput v4, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    move v3, v7

    goto/16 :goto_0

    :cond_7
    if-nez v3, :cond_8

    .line 1266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeCBRule(III)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    .line 1267
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    :cond_8
    return-object p1

    .line 1272
    :cond_9
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1273
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    .line 1274
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-object v0
.end method

.method protected getCbRuleSetForAll(I)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 5

    .line 1280
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "getCbRuleSetForAll"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1281
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    .line 1283
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    const/16 v2, 0x69

    if-ne p1, v2, :cond_0

    .line 1285
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    :cond_0
    if-eqz v1, :cond_6

    .line 1289
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "CBCache not null"

    invoke-static {v0, p1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1290
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object p1

    .line 1292
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 1293
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1294
    :cond_2
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_1
    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1296
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    goto :goto_0

    :cond_5
    return-object p1

    .line 1303
    :cond_6
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1304
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    .line 1305
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-object v0
.end method

.method protected getCbURL()Ljava/lang/String;
    .locals 5

    .line 1599
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const-string v2, "%22%5D"

    const-string v3, "/cp:ruleset/cp:rule%5B@id=%22"

    const/16 v4, 0x69

    if-ne v1, v4, :cond_0

    .line 1600
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v1, :cond_1

    .line 1601
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 1604
    invoke-virtual {v3, p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1609
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v1, :cond_1

    .line 1610
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 1613
    invoke-virtual {v3, p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1619
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCfRuleId(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1558
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfu:Ljava/lang/String;

    goto :goto_0

    .line 1554
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfni:Ljava/lang/String;

    goto :goto_0

    .line 1548
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnrc:Ljava/lang/String;

    goto :goto_0

    .line 1551
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnr:Ljava/lang/String;

    goto :goto_0

    .line 1545
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfb:Ljava/lang/String;

    .line 1561
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-eqz v0, :cond_4

    .line 1562
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1563
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_video"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method protected getCfRuleSet()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    .locals 14

    .line 1007
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1010
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_11

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v8, v2, :cond_11

    if-eq v8, v4, :cond_11

    .line 1013
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object v1

    .line 1015
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v8, v7

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 1016
    check-cast v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    .line 1017
    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isSupportfwd(Lcom/sec/internal/constants/Mno;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1018
    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 1021
    :cond_1
    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v11, v10, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v13, v12, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v11, v13, :cond_4

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget v11, v12, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 1022
    invoke-static {v11}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCf:Z

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v11, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 1023
    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_2
    new-array v10, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v11, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v11, v10, v7

    sget-object v11, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    aput-object v11, v10, v6

    sget-object v11, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    aput-object v11, v10, v5

    .line 1024
    invoke-virtual {v0, v10}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    :goto_1
    move v10, v6

    goto :goto_2

    :cond_4
    move v10, v7

    :goto_2
    if-eqz v10, :cond_0

    .line 1027
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v10, v3, :cond_5

    .line 1028
    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v6, v10, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1029
    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v8, v10, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-ne v10, v6, :cond_6

    .line 1031
    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v6, v10, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1032
    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1033
    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v10, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_3

    .line 1036
    :cond_6
    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v7, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-ne v10, v4, :cond_7

    .line 1038
    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    const-string v10, ""

    iput-object v10, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1041
    :cond_7
    :goto_3
    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iput v10, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1043
    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v10, "sip:"

    .line 1044
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v10, "tel:"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v10, "voicemail:"

    .line 1045
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1046
    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v10, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1049
    :cond_8
    iget-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    if-eqz v8, :cond_9

    .line 1050
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->replaceRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    :cond_9
    move v8, v6

    goto/16 :goto_0

    .line 1057
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-nez v2, :cond_c

    if-eqz v8, :cond_c

    .line 1058
    sget-object v2, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_b

    return-object v1

    :cond_b
    new-array v2, v5, [Lcom/sec/internal/constants/Mno;

    .line 1061
    sget-object v3, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1062
    iput v7, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    return-object v1

    .line 1067
    :cond_c
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1068
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "CF rule is not present. Make new rule."

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1069
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    iget v8, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v8, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeCFRule(IIILjava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v2

    .line 1070
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1071
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    if-eqz v3, :cond_d

    .line 1072
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->replaceRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1076
    :cond_d
    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_e

    .line 1077
    iput v7, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_4

    .line 1078
    :cond_e
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v2, v5, :cond_f

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez p0, :cond_f

    .line 1079
    iput p0, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_4

    :cond_f
    new-array p0, v5, [Lcom/sec/internal/constants/Mno;

    .line 1080
    sget-object v2, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    aput-object v2, p0, v7

    sget-object v2, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    aput-object v2, p0, v6

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1081
    iput v7, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    :cond_10
    :goto_4
    return-object v1

    .line 1087
    :cond_11
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    .line 1088
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v9, v2, :cond_13

    if-ne v9, v4, :cond_12

    goto :goto_5

    .line 1164
    :cond_12
    iget v2, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v2

    invoke-virtual {p0, v9, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v2

    .line 1165
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    goto/16 :goto_b

    :cond_13
    :goto_5
    move v8, v7

    :goto_6
    if-gt v8, v3, :cond_1c

    .line 1090
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v9, v2, :cond_16

    if-nez v8, :cond_16

    new-array v9, v5, [Lcom/sec/internal/constants/Mno;

    .line 1091
    sget-object v10, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v7

    sget-object v10, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v6

    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v9, :cond_1b

    .line 1095
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v9, v8, v10}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1097
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v9, v8, v10}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 1098
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v6

    goto :goto_7

    :cond_14
    move v9, v7

    .line 1100
    :goto_7
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v11, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v10, v8, v11}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1102
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v9, v8, v11}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 1103
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v6

    :cond_15
    if-nez v9, :cond_1b

    .line 1105
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v10}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1106
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v10}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 1107
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_16
    new-array v9, v4, [Lcom/sec/internal/constants/Mno;

    .line 1112
    sget-object v10, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v7

    sget-object v10, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v6

    sget-object v10, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v5

    sget-object v10, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v3

    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v9, :cond_1a

    .line 1114
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v9, v8, v10}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1116
    invoke-virtual {p0, v8, v10}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 1117
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v6

    goto :goto_8

    :cond_17
    move v9, v7

    .line 1119
    :goto_8
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v11, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v10, v8, v11}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1120
    sget-object v9, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    if-ne v0, v9, :cond_18

    .line 1123
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v9, v8, v11}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 1124
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1128
    :cond_18
    invoke-virtual {p0, v8, v11}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 1129
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v6

    :cond_19
    if-nez v9, :cond_1b

    .line 1132
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 1133
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1136
    :cond_1a
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 1137
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 1141
    :cond_1c
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1d

    const/4 v2, 0x6

    .line 1142
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v2

    .line 1143
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    :cond_1d
    sget-object v2, Lcom/sec/internal/constants/Mno;->ZAIN_BAHRAIN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_1e

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1147
    :cond_1e
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v2, :cond_1f

    .line 1148
    iput v7, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1150
    :cond_1f
    iput v7, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1152
    :cond_20
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez v2, :cond_21

    .line 1153
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_a

    .line 1154
    :cond_21
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v2, :cond_22

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    if-lez v2, :cond_22

    .line 1155
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    :cond_22
    :goto_a
    new-array v2, v5, [Lcom/sec/internal/constants/Mno;

    .line 1157
    sget-object v3, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1158
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v2, :cond_23

    .line 1159
    iput v7, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1161
    :cond_23
    iput v7, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1168
    :cond_24
    :goto_b
    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_25

    .line 1169
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v0, :cond_26

    .line 1170
    iput v7, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_c

    .line 1172
    :cond_25
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v2, v5, :cond_26

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez v0, :cond_26

    .line 1173
    iput v0, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1175
    :cond_26
    :goto_c
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    return-object v1
.end method

.method protected getCfURL()Ljava/lang/String;
    .locals 6

    .line 1571
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1572
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    const-string p0, "/NoReplyTimer"

    return-object p0

    .line 1583
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    const-string v3, "%22%5D"

    const-string v4, "/cp:ruleset/cp:rule%5B@id=%22"

    if-eqz v2, :cond_4

    .line 1584
    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    .line 1585
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v2, v5, v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1586
    sget-object v5, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v5, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, v5, v1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1588
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    :cond_3
    if-eqz v2, :cond_4

    .line 1591
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1595
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleId(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1573
    :cond_5
    :goto_0
    sget-object p0, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_6

    const-string p0, "?xmlns(ss=http://uri.etsi.org/ngn/params/xml/simservs/xcap)"

    return-object p0

    :cond_6
    const-string p0, "?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    return-object p0
.end method

.method protected getConfig()Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    return-object p0
.end method

.method protected getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 659
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getPreferredUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    .line 665
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 668
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGcfTelUri(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 669
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    :cond_1
    const-string v3, "\\p{Z}|\\p{Space}"

    const-string v4, ""

    .line 672
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 674
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    .line 675
    invoke-direct {p0, v2, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeInternationalFormat(Lcom/sec/internal/constants/Mno;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz v1, :cond_3

    .line 678
    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, p0, :cond_3

    .line 679
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sip:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    const-string p1, "phone"

    .line 680
    invoke-virtual {p0, p1}, Lcom/sec/ims/util/ImsUri;->setUserParam(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    .line 685
    :goto_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferredUriType()Lcom/sec/ims/util/ImsUri$UriType;
    .locals 1

    .line 638
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfUriType:Ljava/lang/String;

    const-string v0, "TEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 639
    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0

    .line 641
    :cond_0
    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0
.end method

.method protected getUserSetToBoolean(ILjava/lang/String;)Z
    .locals 1

    .line 2195
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getUserSetToInt(ILjava/lang/String;I)I
    .locals 0

    .line 2200
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public handleEpdgAvailabilityChanged(Z)V
    .locals 4

    .line 867
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEpdgAvailabilityChanged: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 869
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConnection()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 870
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 871
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public handlePdnFail(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 6

    .line 781
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    if-eqz v0, :cond_5

    .line 782
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionFailCause()I

    move-result v0

    .line 783
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getApnSettingFromPdnType(I)I

    move-result v1

    .line 784
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 785
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_5

    .line 786
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryPdnFailCause(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 787
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XCAP PDN setup failed. failCause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPdnRetryCounter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 789
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 797
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x37

    if-eq v0, v2, :cond_4

    const/16 v2, 0x26

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 808
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    const/16 v4, 0x21

    if-ne v1, v2, :cond_2

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_2

    .line 809
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "Vodafone UK returns MISSING_UNKNOWN_APN for non VoLTE SIM."

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v4

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v4, :cond_3

    .line 815
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "This SIM is not subscribed for xcap"

    invoke-static {p1, v2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x193

    .line 816
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 818
    :cond_3
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "Disconnect xcap pdn"

    invoke-static {p1, v2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit16 p1, v0, 0x2726

    .line 819
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    .line 822
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PDN failCause : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    const v1, 0x31000007

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 825
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    .line 826
    invoke-virtual {p0, v3}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 827
    invoke-virtual {p0, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 828
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 799
    :cond_4
    :goto_1
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED or NETWORK_FAILURE need retry."

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 800
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    .line 801
    invoke-virtual {p0, v3}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const/16 p1, 0x64

    .line 802
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 803
    invoke-virtual {p0, v3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 804
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_5
    :goto_2
    return-void
.end method

.method public hasConditionOnCbCache()Z
    .locals 5

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v2, 0x0

    const/16 v3, 0x69

    if-ne v1, v3, :cond_0

    .line 424
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The network doesn\'t have OCB condition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The network doesn\'t have ICB condition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public hasConditionOnCfCache()Z
    .locals 6

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const-string v2, "The network doesn\'t have CF condition "

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 414
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 415
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_2
    :goto_0
    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    if-ge v0, v4, :cond_5

    .line 408
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 409
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method protected hasConnection()Z
    .locals 2

    .line 746
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 747
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getPdnType()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result p0

    return p0
.end method

.method public hasProfile()Z
    .locals 2

    .line 2213
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    if-nez v0, :cond_0

    .line 2214
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "mProfile is null. so ignore"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected init(I)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 130
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    .line 131
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 133
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 135
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 136
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->unlockProcessingRequest()Z

    const/16 p1, 0xe

    .line 138
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    return-void
.end method

.method public isForbidden()Z
    .locals 0

    .line 887
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mForce403Error:Z

    return p0
.end method

.method public isPutRequestBlocked()Z
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->insertNewRule:Z

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x65

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConditionOnCfCache()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_0
    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConditionOnCbCache()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_1
    const/16 v1, 0x67

    if-ne v0, v1, :cond_2

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConditionOnCbCache()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceDeactive()Z
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    .line 387
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    const/16 v3, 0x67

    if-ne v0, v3, :cond_3

    .line 389
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz p0, :cond_2

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x69

    if-ne v0, v3, :cond_5

    .line 391
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz p0, :cond_4

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method protected lockProcessingRequest()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 156
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    .line 157
    monitor-exit v0

    return v1

    :cond_0
    const/4 p0, 0x0

    .line 159
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected makeHeader()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1623
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1624
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getAcceptEncoding(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept"

    const-string v2, "*/*"

    .line 1626
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-3GPP-Intended-Identity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Content-Type"

    const-string v1, "application/xcap-el+xml"

    .line 1631
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected makeHttpParams()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 17

    move-object/from16 v0, p0

    .line 1784
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1785
    new-instance v13, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {v13}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    .line 1786
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeHeader()Ljava/util/HashMap;

    move-result-object v14

    .line 1788
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    if-eqz v2, :cond_0

    .line 1789
    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1792
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isReuseConnection:Z

    const/4 v15, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lcom/squareup/okhttp/Dns;

    if-eqz v3, :cond_1

    .line 1793
    invoke-virtual {v13, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto/16 :goto_1

    .line 1794
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_5

    .line 1795
    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    if-lez v2, :cond_4

    .line 1796
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1797
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    .line 1799
    sget-object v4, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    aput-object v4, v2, v3

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v15

    const/4 v3, 0x2

    sget-object v4, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1800
    new-instance v12, Lcom/sec/internal/helper/httpclient/DnsController;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget v7, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    const/4 v8, 0x1

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v10, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    iget-object v11, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    const/16 v16, 0x1

    move-object v2, v12

    move-object v9, v1

    move-object v15, v12

    move/from16 v12, v16

    invoke-direct/range {v2 .. v12}, Lcom/sec/internal/helper/httpclient/DnsController;-><init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v15, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lcom/squareup/okhttp/Dns;

    goto :goto_0

    .line 1804
    :cond_3
    new-instance v10, Lcom/sec/internal/helper/httpclient/DnsController;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget v7, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    const/4 v8, 0x1

    move-object v2, v10

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/helper/httpclient/DnsController;-><init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;)V

    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lcom/squareup/okhttp/Dns;

    goto :goto_0

    .line 1808
    :cond_4
    new-instance v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lcom/squareup/okhttp/Dns;

    .line 1819
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lcom/squareup/okhttp/Dns;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1822
    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isReuseConnection:Z

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReuseConnection(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1823
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1825
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1826
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1827
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateUtDetailInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>([B)V

    .line 1828
    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_2

    .line 1830
    :cond_6
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1833
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeUri()Ljava/lang/String;

    move-result-object v2

    .line 1834
    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setBsfUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1835
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1836
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUserName(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_3

    .line 1838
    :cond_7
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->username:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUserName(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1840
    :goto_3
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->passwd:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPassword(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_tls:Z

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1841
    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_8

    const-wide/16 v2, 0x7d0

    .line 1842
    invoke-virtual {v13, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_4

    .line 1843
    :cond_8
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_9

    const-wide/16 v2, 0x7d00

    .line 1844
    invoke-virtual {v13, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_4

    .line 1846
    :cond_9
    invoke-virtual {v13, v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1849
    :goto_4
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setIpVersion(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1851
    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_c

    const/4 v2, 0x0

    const/16 v3, 0x50

    .line 1854
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    if-eqz v4, :cond_a

    .line 1855
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v2

    .line 1856
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->getProxyPort()I

    move-result v3

    .line 1858
    :cond_a
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 1861
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    if-eqz v5, :cond_b

    .line 1862
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "proxyAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ProxyPort : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1863
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    .line 1864
    invoke-virtual {v0, v2}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v7}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1867
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 1870
    :cond_b
    :goto_5
    invoke-virtual {v13, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_6

    :cond_c
    const/4 v2, 0x1

    .line 1873
    :goto_6
    sget-object v0, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_d

    .line 1874
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 1875
    invoke-virtual {v13, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1878
    :cond_d
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_e

    .line 1879
    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseImei(Z)V

    :cond_e
    return-object v13
.end method

.method public makeUri()Ljava/lang/String;
    .locals 11

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1649
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_tls:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "http://"

    .line 1652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "https://"

    .line 1650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    const-string v1, ":"

    .line 1657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1660
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xcapRootUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1661
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xcapRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    :cond_3
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1665
    sget-object v2, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    const-string v2, "/rem/sentinel/xcap"

    .line 1666
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, "/simservs.ngn.etsi.org/users/"

    .line 1669
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/simservs.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x9

    const/16 v4, 0x8

    const-string v5, "/~~/simservs/communication-diversion"

    const-string v6, "/~~/simservs/ss:outgoing-communication-barring"

    const-string v7, "/~~/simservs/outgoing-communication-barring"

    const-string v8, "/~~/simservs/ss:incoming-communication-barring"

    const-string v9, "/~~/simservs/incoming-communication-barring"

    const-string v10, "/~~/simservs/ss:communication-diversion"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const-string v2, "/~~/simservs/communication-waiting"

    .line 1674
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_1
    const-string v2, "/~~/terminating-identity-presentation-restriction"

    .line 1747
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_2
    const-string v2, "/~~/terminating-identity-presentation"

    .line 1743
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_3
    const-string v2, "/~~/simservs/originating-identity-presentation-restriction"

    .line 1739
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_4
    const-string v2, "/~~/simservs/originating-identity-presentation"

    .line 1735
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1721
    :pswitch_5
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_5

    .line 1722
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1724
    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    :goto_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v2, v4, :cond_f

    if-ne v2, v3, :cond_6

    goto/16 :goto_7

    .line 1729
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    if-eqz v2, :cond_f

    .line 1730
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1701
    :pswitch_6
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_7

    .line 1702
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1704
    :cond_7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1708
    :pswitch_7
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_8

    .line 1709
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1711
    :cond_8
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    :goto_3
    sget-object v2, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_9

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v2, v4, :cond_f

    if-ne v2, v3, :cond_9

    goto :goto_7

    .line 1716
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    if-eqz v2, :cond_f

    .line 1717
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1694
    :pswitch_8
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_a

    .line 1695
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1697
    :cond_a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1684
    :pswitch_9
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_c

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_c

    sget-object v2, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_b

    goto :goto_4

    .line 1687
    :cond_b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1685
    :cond_c
    :goto_4
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    :goto_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    if-eqz v2, :cond_f

    .line 1690
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1677
    :pswitch_a
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_e

    sget-object v2, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_d

    goto :goto_6

    .line 1680
    :cond_d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1678
    :cond_e
    :goto_6
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_7
    const-string v2, "cp:"

    .line 1753
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "ss:"

    .line 1754
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v2, :cond_10

    if-lez v3, :cond_17

    .line 1757
    :cond_10
    sget-object v4, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    const/16 v5, 0x65

    const-string/jumbo v6, "xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    if-ne v1, v4, :cond_12

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v7, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_11

    const/4 v8, 0x4

    if-ne v7, v8, :cond_12

    :cond_11
    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v4, v5, :cond_12

    .line 1759
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_12
    const-string v4, "?"

    .line 1761
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    sget-object v4, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v7, "xmlns(ss=http://uri.etsi.org/ngn/params/xml/simservs/xcap)"

    if-ne v1, v4, :cond_14

    if-lez v3, :cond_13

    .line 1764
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-lez v2, :cond_17

    .line 1767
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_14
    if-lez v2, :cond_15

    .line 1771
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    if-gtz v3, :cond_16

    .line 1773
    sget-object v2, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_17

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne p0, v5, :cond_17

    .line 1774
    :cond_16
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    :cond_17
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onAirplaneModeChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 628
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 629
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    :cond_0
    const/4 p1, 0x2

    .line 631
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 633
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_1
    return-void
.end method

.method protected parseSIBtarget([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;",
            ">;"
        }
    .end annotation

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 1183
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "Empty password"

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 1186
    :cond_0
    array-length p0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    aget-object v3, p1, v2

    .line 1187
    new-instance v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    const-string v5, ","

    .line 1188
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1189
    aget-object v5, v3, v1

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1190
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/16 v6, 0xa

    iput v6, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 1192
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    const/4 v6, 0x1

    aget-object v7, v3, v6

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->cleanBarringNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    iput-boolean v1, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    .line 1194
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v7, 0x2

    aget-object v3, v3, v7

    const-string/jumbo v7, "true"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1195
    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v5, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    :goto_1
    iput v6, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1196
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected processTerminalRequest()V
    .locals 7

    .line 439
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process terminal request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x72

    const/16 v4, 0x64

    const-string v5, "enable_call_wait"

    if-eq v2, v3, :cond_5

    const/16 v3, 0x73

    if-eq v2, v3, :cond_2

    const-string/jumbo v3, "ss_clir_pref"

    const-string/jumbo v4, "ss_clip_pref"

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    .line 554
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no matched type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 557
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 558
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->failUtRequest(Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 538
    :pswitch_0
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 539
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    .line 540
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto/16 :goto_3

    :pswitch_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 482
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v2, v3, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v2

    aput v2, v1, v6

    const/4 v2, 0x4

    aput v2, v1, v5

    .line 485
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "queryClir"

    .line 486
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 487
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminal CLIR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v6

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 489
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 544
    :pswitch_2
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {p0, v0, v4, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    .line 545
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto/16 :goto_3

    .line 494
    :pswitch_3
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v1

    .line 496
    new-instance v2, Landroid/telephony/ims/ImsSsInfo;

    const-string v3, ""

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsSsInfo;-><init>(ILjava/lang/String;)V

    .line 497
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "imsSsInfo"

    .line 498
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 499
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminal CLIP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 501
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 525
    :pswitch_4
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertCbTypeToBitMask(I)I

    move-result v0

    .line 528
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    .line 530
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-direct {p0, v1, v5, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setCbUserConfig(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;ZI)V

    .line 531
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-direct {p0, v1, v5, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setCbUserConfig(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;ZI)V

    .line 533
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto/16 :goto_3

    .line 459
    :pswitch_5
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v2, "ss_volte_cb_pref"

    invoke-virtual {p0, v1, v2, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v1

    .line 460
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v3, "ss_video_cb_pref"

    invoke-virtual {p0, v2, v3, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v2

    and-int/2addr v1, v2

    .line 464
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertCbTypeToBitMask(I)I

    move-result v2

    new-array v3, v5, [Landroid/os/Bundle;

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .line 468
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "status"

    .line 469
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v4, "condition"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const-string v4, "serviceClass"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    aput-object v1, v3, v6

    .line 474
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminal CallBarring "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    goto :goto_3

    .line 509
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-nez v1, :cond_3

    .line 510
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 511
    :goto_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    if-eqz v1, :cond_4

    .line 512
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "Telstra needs to connect xcap pdn for call waiting to check non VoLTE SIM."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 513
    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    .line 518
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v5, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;Z)V

    .line 519
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto :goto_3

    .line 443
    :cond_5
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 444
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    if-eqz v1, :cond_6

    .line 445
    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 449
    :cond_6
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToBoolean(ILjava/lang/String;)Z

    move-result v1

    .line 451
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminal CallWaiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 453
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Z)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processUtRequest()V
    .locals 6

    const/16 v0, 0xf

    .line 185
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const/16 v1, 0x3f9

    const-wide/16 v2, 0x7ef4

    .line 186
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    .line 188
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->dequeueProfile()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v0, 0x2

    .line 189
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const/16 v0, 0x64

    .line 190
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 191
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->initializeUtParameters()V

    .line 193
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->checkUtInternalError()I

    move-result v1

    const/16 v2, 0xc

    const-wide/16 v3, 0x64

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequestBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v5, "Insertion of new rule is prohibited."

    invoke-static {v0, v1, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x3f4

    .line 201
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    if-eqz v1, :cond_2

    .line 206
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v1, v2, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    .line 211
    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    :goto_0
    return-void
.end method

.method protected query(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 1

    .line 176
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->enqueueProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 177
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->lockProcessingRequest()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processUtRequest()V

    goto :goto_0

    .line 180
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v0, "Other request is processing now"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setForce403Error(Z)V
    .locals 0

    .line 891
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mForce403Error:Z

    return-void
.end method

.method protected setUserSet(ILjava/lang/String;I)V
    .locals 0

    .line 2205
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method

.method protected setUserSet(ILjava/lang/String;Z)V
    .locals 0

    .line 2209
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 5

    .line 1887
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1889
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 1904
    :cond_0
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 1905
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    .line 1906
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->unregisterCwdbObserver(I)V

    .line 1907
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    .line 1908
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_3

    .line 1893
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    .line 1894
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1895
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    :cond_2
    const/4 v0, 0x2

    .line 1897
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 1899
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1900
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 1901
    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->requestFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected unlockProcessingRequest()Z
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 167
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    const/4 p0, 0x1

    .line 168
    monitor-exit v0

    return p0

    .line 170
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected updateConfig(Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;)V
    .locals 5

    .line 585
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    .line 586
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    .line 587
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mFeature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    .line 588
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ssDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v3, "ss_domain_setting"

    const-string v4, "CS"

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ussdDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v3, "ussd_domain_setting"

    .line 589
    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 590
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    const/4 p1, 0x0

    .line 591
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    const/4 p2, -0x1

    .line 594
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->clearCachedSsData(I)V

    .line 596
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    const/16 p1, 0xe

    .line 597
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    return-void
.end method

.method protected updateUtDetailInfo()Ljava/lang/String;
    .locals 5

    .line 937
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 939
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x65

    if-eq v2, v3, :cond_d

    const/16 v3, 0x67

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x69

    if-eq v2, v3, :cond_5

    const/16 v3, 0x6b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x6d

    if-eq v2, v3, :cond_1

    const/16 v0, 0x73

    if-eq v2, v0, :cond_0

    const-string v0, ""

    goto/16 :goto_3

    .line 972
    :cond_0
    iget-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    const-string v2, "communication-waiting"

    .line 973
    invoke-static {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;ZZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 972
    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 981
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    const-string v3, "originating-identity-presentation-restriction"

    if-ne v0, v2, :cond_3

    .line 982
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;ZZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 985
    :cond_3
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v3, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 976
    :cond_4
    iget-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    const-string v2, "originating-identity-presentation"

    .line 977
    invoke-static {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;ZZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 976
    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 945
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-eqz v3, :cond_7

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->noMediaForCB:Z

    if-eqz v2, :cond_6

    goto :goto_1

    .line 947
    :cond_6
    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_8

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v1, v2, :cond_8

    .line 948
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    goto :goto_2

    :cond_7
    :goto_1
    const/16 v2, 0xff

    .line 946
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 951
    :cond_8
    :goto_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    if-ne v3, v2, :cond_9

    .line 952
    iput v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 955
    :cond_9
    sget-object v1, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_b

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v1, v2, :cond_a

    const/16 v2, 0x9

    if-ne v1, v2, :cond_b

    .line 956
    :cond_a
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "3hk mo mt"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 958
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleSetForAll(I)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;ILcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 957
    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 962
    :cond_b
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    if-nez v1, :cond_c

    .line 963
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 964
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleSet(I)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;ILcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 963
    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 966
    :cond_c
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 968
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    .line 967
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 966
    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 941
    :cond_d
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateCallforwardingInfo(Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v0

    .line 993
    :goto_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Print PUT Body : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method
