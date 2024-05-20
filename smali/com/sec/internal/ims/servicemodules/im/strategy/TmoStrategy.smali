.class public final Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;
.source "TmoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy$TMOFtCancelReasonResumableOptionCodeMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TmoStrategy"


# instance fields
.field private final MAX_RETRY_COUNT:I

.field private final RETRY_AFTER_MAX:I

.field private final mFtResumeRetryMOTimerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFtResumeRetryMTTimerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsPhaseVersion:Ljava/lang/String;

.field private final mTmoForceRefreshRemoteCapa:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmoRetryNeededErrorsForGroupIm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmoRetryNeededErrors_AfterRegi:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmoRetryNeededFT_changecontact:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmoRetryNeededFT_retryafter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmoRetryNeededIM_changecontact:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmoRetryNeededIM_retryafter:Ljava/util/HashSet;
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

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 69
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->MAX_RETRY_COUNT:I

    const/4 p1, 0x5

    .line 70
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->RETRY_AFTER_MAX:I

    .line 72
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    .line 73
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForGroupIm:Ljava/util/HashSet;

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_retryafter:Ljava/util/HashSet;

    .line 75
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_changecontact:Ljava/util/HashSet;

    .line 76
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoForceRefreshRemoteCapa:Ljava/util/HashSet;

    .line 77
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_retryafter:Ljava/util/HashSet;

    .line 78
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_changecontact:Ljava/util/HashSet;

    .line 79
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    .line 80
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrors_AfterRegi:Ljava/util/HashSet;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mFtResumeRetryMTTimerList:Ljava/util/ArrayList;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mFtResumeRetryMOTimerList:Ljava/util/ArrayList;

    const-string p1, ""

    .line 85
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mRcsPhaseVersion:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->initTmoMaps()V

    return-void
.end method

.method private buildFTHTTPUserAgentForTMOUS()Ljava/lang/String;
    .locals 3

    .line 507
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UP1"

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 512
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "Android"

    .line 517
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResumableOptionGroupFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 3

    .line 351
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResumableOptionGroupFt, cancelreason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " transferMech:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, p0, :cond_0

    if-eqz p3, :cond_5

    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, p0, :cond_5

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_NOTIFICATION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, p0, :cond_1

    goto :goto_1

    .line 356
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, p0, :cond_2

    .line 357
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object p0

    .line 358
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, p0, :cond_4

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, p0, :cond_3

    goto :goto_0

    .line 363
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object p0

    .line 359
    :cond_4
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_AUTOMATICALLY_RESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object p0

    .line 355
    :cond_5
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object p0
.end method

.method private getResumableOptionSingleFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 3

    .line 341
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResumableOptionSingleFt, cancelreason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy$TMOFtCancelReasonResumableOptionCodeMap;->translateCancelReason(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    move-result-object p0

    if-nez p0, :cond_0

    .line 344
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    :cond_0
    return-object p0
.end method

.method private getStrategyResponse(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 0

    .line 169
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0
.end method

.method private initTmoMaps()V
    .locals 12

    .line 93
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v1, "rcs_phase_version"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mRcsPhaseVersion:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_URI_SCHEME:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BAD_GATEWAY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->LOOP_DETECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TOO_MANY_HOPS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForGroupIm:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForGroupIm:Ljava/util/HashSet;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INTERNAL_SERVER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_retryafter:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_retryafter:Ljava/util/HashSet;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_changecontact:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MULTIPLE_CHOICES:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_changecontact:Ljava/util/HashSet;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_PERMANENTLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_changecontact:Ljava/util/HashSet;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_TEMPORARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_changecontact:Ljava/util/HashSet;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->USE_PROXY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_changecontact:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_changecontact:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_changecontact:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_changecontact:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoForceRefreshRemoteCapa:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoForceRefreshRemoteCapa:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoForceRefreshRemoteCapa:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrors_AfterRegi:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mFtResumeRetryMTTimerList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mFtResumeRetryMOTimerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isCapCacheExpired(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 424
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p2, "isCapCacheExpired: Capability is null"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 431
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 432
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->resetFeatures()V

    .line 437
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCapCacheExpired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " current "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " timestamp "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " diff "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr p2, v4

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return v0
.end method


# virtual methods
.method public checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 226
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    if-nez v0, :cond_0

    .line 228
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    const-string p2, "checkCapability: capDiscModule is null"

    invoke-static {p1, v1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0

    .line 232
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 233
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 234
    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->hasOneOfFeaturesAvailable(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 235
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCapability: No capabilities for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_4

    const-string v3, ""

    goto :goto_1

    .line 237
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": isAvailable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/high16 p1, 0x120b0000

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",NOCAP,"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    const-string/jumbo p2, "xx"

    :goto_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0

    .line 243
    :cond_6
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Z)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCapability->features:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isBroadcastMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    invoke-static {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0

    .line 216
    :cond_0
    invoke-static {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 218
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 220
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0
.end method

.method protected checkFtHttpCapability(Ljava/util/Set;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)Z"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 468
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 470
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    const-string p1, "checkCapability: capDiscModule is null"

    invoke-static {p0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 475
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 476
    sget-object v4, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    .line 477
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFTViaHttp, uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", capx = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v4, :cond_2

    .line 478
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v4, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public checkSlmFileType(Ljava/lang/String;)Z
    .locals 0

    .line 634
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "image"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "video"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "audio"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "text/x-vCard"

    .line 635
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "text/vcard"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "text/x-vCalendar"

    .line 636
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "text/x-vNote"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "text/x-vtodo"

    .line 637
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "application/ogg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public convertToImDirection(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 1

    .line 458
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const-string v0, "Out"

    .line 459
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 460
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    :cond_0
    return-object p0
.end method

.method public forceRefreshCapability(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 5
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

    .line 310
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 311
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    if-nez v0, :cond_0

    .line 313
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    const-string p1, "forceRefreshCapability: capDiscModule is null"

    invoke-static {p0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 317
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRefreshCapability: uris "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_2

    .line 319
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/ImsUri;

    .line 320
    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    sget p3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    or-int/2addr p2, p3

    int-to-long p2, p2

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;JI)Lcom/sec/ims/options/Capabilities;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 324
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoForceRefreshRemoteCapa:Ljava/util/HashSet;

    invoke-virtual {p0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 325
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/ImsUri;

    .line 326
    sget-object p2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getFtHttpUserAgent(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;
    .locals 0

    .line 503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->buildFTHTTPUserAgentForTMOUS()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 3gpp-gba"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p3, :cond_0

    const/4 p0, 0x5

    if-gt p3, p0, :cond_0

    .line 284
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 286
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    :cond_1
    const/4 p3, 0x1

    if-ge p1, p3, :cond_3

    .line 290
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 291
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 292
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededFT_changecontact:Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 293
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 296
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0
.end method

.method public getNextFileTransferAutoResumeTimer(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)I
    .locals 1

    .line 449
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mFtResumeRetryMTTimerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_0

    .line 450
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mFtResumeRetryMTTimerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrors_AfterRegi:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 249
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_REGI:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 252
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_retryafter:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-lez p3, :cond_2

    const/4 p0, 0x5

    if-gt p3, p0, :cond_2

    .line 260
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 262
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 266
    :cond_3
    invoke-static {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForGroupIm:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 267
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 268
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededErrorsForIm:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 269
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 270
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mTmoRetryNeededIM_changecontact:Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 271
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 273
    :cond_6
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0
.end method

.method protected getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 1

    .line 165
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getStrategyResponse(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0
.end method

.method public getThrottledDelay(J)J
    .locals 2

    const-wide/16 v0, 0x3

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getUploadedFileFallbackSLMTech()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->isSlmEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM_FILE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    :goto_0
    return-object p0
.end method

.method public getftResumableOption(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;ZLcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 0

    if-nez p1, :cond_0

    .line 334
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 337
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getResumableOptionGroupFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getResumableOptionSingleFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public handleAttachFileFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 0

    .line 619
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->isSlmEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 620
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 622
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 566
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    :cond_0
    new-array v0, v3, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 568
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 569
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 571
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 572
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 574
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0
.end method

.method public handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 1

    .line 202
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public handleFtMsrpInterruption(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 603
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 605
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0
.end method

.method public handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 551
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->OUTOFSERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    :cond_0
    new-array v0, v3, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 554
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GROUPCHAT_DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 555
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 557
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 558
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0

    .line 560
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0
.end method

.method public handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .locals 6

    const/4 p0, 0x4

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    new-array p2, v1, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 582
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v5, p2, v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v5, p2, v3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v5, p2, v2

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 583
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RE_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0

    :cond_0
    new-array p2, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 584
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v5, p2, v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v5, p2, v3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v5, p2, v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->UNSUPPORTED_MEDIA_TYPE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v5, p2, v1

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BAD_EVENT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v5, p2, p0

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 585
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0

    :cond_1
    const/16 p2, 0x8

    new-array p2, p2, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 586
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v5, p2, v4

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->ENTITY_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v4, p2, v3

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v3, p2, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, p2, v1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVER_INTERNAL_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v1, p2, p0

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object p0, p2, v0

    const/4 p0, 0x6

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v0, p2, p0

    const/4 p0, 0x7

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v0, p2, p0

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 588
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0

    .line 590
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_RETRY_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0

    :cond_3
    new-array p2, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 593
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v0, p2, v4

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v0, p2, v3

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v0, p2, v2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v0, p2, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v0, p2, p0

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 594
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_SUBSCRIBE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0

    .line 596
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->NONE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0
.end method

.method public handleSendingFtMsrpMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 0

    .line 193
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    .line 194
    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p2, p3, :cond_0

    .line 195
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0

    .line 197
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 0

    if-eqz p5, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;->handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0

    .line 181
    :cond_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    .line 183
    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p2, p3, :cond_1

    .line 184
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0

    .line 186
    :cond_1
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public handleSessionFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;
    .locals 0

    if-eqz p2, :cond_0

    .line 690
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, p0, :cond_0

    .line 691
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    return-object p0

    .line 693
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    return-object p0
.end method

.method public isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1

    .line 302
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-static {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->isCapabilityValidUriForUS(Lcom/sec/ims/util/ImsUri;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCloseSessionNeeded(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 2

    const/4 p0, 0x5

    new-array p0, p0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 542
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p0

    return p0
.end method

.method public isCustomizedFeature(J)Z
    .locals 2

    .line 527
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v0, p0

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeleteSessionSupported(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;I)Z
    .locals 0

    .line 628
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisplayBotError()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDisplayWarnText()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFTHTTPAutoResumeAndCancelPerConnectionChange()Z
    .locals 1

    .line 537
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->mRcsPhaseVersion:Ljava/lang/String;

    const-string v0, "RCS_TMB_PHASE2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFTViaHttp(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ")Z"
        }
    .end annotation

    .line 488
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUri()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 489
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->isFtHttpRegistered()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p3, p1, :cond_1

    .line 495
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->checkFtHttpCapability(Ljava/util/Set;)Z

    move-result p0

    return p0

    .line 498
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p3, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public isResendFTResume(Z)Z
    .locals 0

    return p1
.end method

.method public needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
    .locals 0

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 404
    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, p4, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, p4, :cond_1

    .line 410
    invoke-direct {p0, p2, p5, p6}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->isCapCacheExpired(Lcom/sec/ims/options/Capabilities;J)Z

    move-result p0

    return p0

    :cond_1
    return p3

    .line 405
    :cond_2
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p2, "needCapabilitiesUpdate: Capability is null"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p3
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z
    .locals 2

    .line 369
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 374
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p2, "needRefresh: Capability is null"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 376
    :cond_1
    invoke-direct {p0, p1, p5, p6}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->isCapCacheExpired(Lcom/sec/ims/options/Capabilities;J)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 377
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p2, "needRefresh: Capability cache is expired"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 380
    :cond_2
    sget p5, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {p1, p5}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 381
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p2, "needRefresh: fetch failed capabilities"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 385
    :cond_3
    sget-object p5, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, p5, :cond_4

    return v0

    .line 387
    :cond_4
    sget-object p5, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, p5, :cond_6

    .line 388
    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 389
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p5, "needRefresh: non capabilitydisovery capable user"

    invoke-static {p2, p0, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 390
    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result p0

    return p0

    :cond_5
    return v0

    .line 393
    :cond_6
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, p0, :cond_7

    return v0

    .line 395
    :cond_7
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, p0, :cond_8

    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result p0

    if-eqz p0, :cond_8

    return v0

    .line 398
    :cond_8
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, p0, :cond_9

    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result p0

    if-eqz p0, :cond_9

    move v1, v0

    :cond_9
    return v1
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p7

    .line 419
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z

    move-result v0

    return v0
.end method
