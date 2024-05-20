.class public Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;
.source "JibeUPStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JibeUPStrategy"


# instance fields
.field private final MAX_RETRY_COUNT:I

.field private final RETRY_AFTER_MAX:I

.field private final mForceRefreshRemoteCapa:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryNeededErrorsForFt:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryNeededErrorsForIm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryNeededFT_retryafter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryNeededIM_retryafter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->MAX_RETRY_COUNT:I

    const/4 p1, 0x4

    .line 49
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->RETRY_AFTER_MAX:I

    .line 50
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    .line 51
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    .line 52
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    .line 54
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mForceRefreshRemoteCapa:Ljava/util/HashSet;

    .line 58
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->init()V

    return-void
.end method

.method private init()V
    .locals 13

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mForceRefreshRemoteCapa:Ljava/util/HashSet;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public forceRefreshCapability(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRefreshCapability: uris "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_0

    .line 101
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget p1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    or-int/2addr p1, p2

    int-to-long v3, p1

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 103
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mForceRefreshRemoteCapa:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget p1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    or-int/2addr p1, p2

    int-to-long v3, p1

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p2, "forceRefreshCapability: capDiscModule is null"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 151
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-lez p3, :cond_1

    const/4 p0, 0x4

    if-gt p3, p0, :cond_1

    .line 155
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    :cond_1
    if-gtz p3, :cond_2

    .line 157
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_SESSION:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 161
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0
.end method

.method public getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 0

    const/4 p4, 0x1

    if-ge p1, p4, :cond_2

    .line 126
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-gtz p3, :cond_1

    .line 130
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_SESSION:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    :cond_1
    const/4 p0, 0x4

    if-gt p3, p0, :cond_2

    .line 132
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 136
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0
.end method

.method public handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 228
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v0, 0x1

    aput-object p2, p0, v0

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 229
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 231
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 3

    const/16 p0, 0x10

    new-array p0, p0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 213
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x1

    aput-object p2, p0, v1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x2

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x3

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x4

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x5

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x6

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x7

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v2, 0x8

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v2, 0x9

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v2, 0xa

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_MEDIA_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v2, 0xb

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v2, 0xc

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INTERNAL_SERVER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v2, 0xd

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v2, 0xe

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NO_DNS_RESULTS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v2, 0xf

    aput-object p2, p0, v2

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 218
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    :cond_0
    new-array p0, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 219
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object p2, p0, v0

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 220
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->SUCCESS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 222
    :cond_1
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .locals 5

    const/4 p0, 0x5

    new-array p0, p0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 237
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v1, 0x1

    aput-object p2, p0, v1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v2, 0x2

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v3, 0x3

    aput-object p2, p0, v3

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v4, 0x4

    aput-object p2, p0, v4

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 238
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_SUBSCRIBE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0

    :cond_0
    new-array p0, v4, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 239
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object p2, p0, v0

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object p2, p0, v1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT_RETRY:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object p2, p0, v2

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object p2, p0, v3

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 240
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0

    .line 242
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_RETRY_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0
.end method

.method public handleSendingFtMsrpMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 0

    .line 184
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    .line 185
    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p2, p3, :cond_1

    .line 186
    invoke-static {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 187
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 189
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0

    .line 191
    :cond_1
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 0

    if-eqz p5, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    .line 172
    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p2, p3, :cond_2

    .line 173
    invoke-static {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 174
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 176
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0

    .line 178
    :cond_2
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1

    .line 142
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 145
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-static {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->isCapabilityValidUriForUS(Lcom/sec/ims/util/ImsUri;I)Z

    move-result p0

    return p0
.end method

.method public isCloseSessionNeeded(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 208
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p0

    return p0
.end method

.method public isCustomizedFeature(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needStopAutoRejoin(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 2

    const/16 p0, 0xa

    new-array p0, p0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 201
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x5

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x6

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x7

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v1, 0x8

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ADDRESS_INCOMPLETE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v1, 0x9

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p0

    return p0
.end method

.method public updateFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
    .locals 1

    .line 115
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p4, v0, :cond_0

    if-eqz p1, :cond_0

    .line 116
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateFeatures: keep old caps "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p0, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method
