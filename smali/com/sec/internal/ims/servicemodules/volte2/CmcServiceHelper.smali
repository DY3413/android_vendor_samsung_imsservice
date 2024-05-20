.class public Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
.super Landroid/os/Handler;
.source "CmcServiceHelper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;
.implements Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;
    }
.end annotation


# static fields
.field private static final CMC_HANDOVER_TIMER_VALUE:I = 0x1770

.field private static final CMC_PD_CHECK_TIMER_VALUE:I = 0x14

.field private static final DIVIDABLE64:I = 0x3f

.field private static final DUMMY_CALL_DOMAIN:I = 0x9

.field private static final DUPLICATED_PUBLISH_DENY_TIME_IN_MILLI:J = 0x1f4L

.field private static final EVENT_OPTIONS_EVENT:I = 0x20

.field private static final EVENT_P2P_OPTIONS_EVENT:I = 0x1f

.field private static final EVT_CMC_HANDOVER_TIMER:I = 0x22

.field private static final EVT_CMC_INFO_EVENT:I = 0x23

.field private static final EVT_CMC_PD_CHECK_TIMER:I = 0x21

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCmcCallEstablishTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcHandoverTimer:Landroid/os/Message;

.field private final mCmcPdCheckTimeOut:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcTotalMnoPullable:Z

.field private final mContext:Landroid/content/Context;

.field private final mCsPublishDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/PublishDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mExtConfirmedCsCallCnt:I

.field private mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field private final mIsCmcPdCheckRespReceived:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsP2pDiscoveryDone:Z

.field private mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

.field private mLastCmcEndCallReason:I

.field private mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field private mNeedToNotifyAfterP2pDiscovery:Z

.field private mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

.field private mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

.field private mNumOfActiveSDs:I

.field private mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

.field private mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

.field private mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/constants/ims/servicemodules/Registration;",
            ">;"
        }
    .end annotation
.end field

.field private mSendPublishDigest:Ljava/security/MessageDigest;

.field private mSendPublishHashedXml:[B

.field private mSendPublishInvokeCount:I

.field private mSendPublishInvokeTime:J

.field private mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsCmcPdCheckRespReceived(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCmcDialogEvent(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)[Lcom/sec/ims/DialogEvent;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedToNotifyAfterP2pDiscovery(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsP2pDiscoveryDone(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCmcEndCallReason(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedToNotifyAfterP2pDiscovery(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mprintP2pList(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->printP2pList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    .line 110
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 75
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    .line 79
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 80
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    .line 81
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    const/16 v0, 0xc8

    .line 83
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    .line 85
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 86
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 89
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 102
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 103
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 111
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/constants/ims/servicemodules/Registration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;",
            "Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;",
            "I)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 75
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    .line 79
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 80
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    .line 81
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    const/16 v0, 0xc8

    .line 83
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    .line 85
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 86
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 89
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 102
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 103
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 119
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    .line 120
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 121
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 122
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 123
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 125
    new-array p1, p8, [Lcom/sec/ims/DialogEvent;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    .line 126
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    :try_start_0
    const-string p1, "SHA-1"

    .line 128
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private checkIgnorePublishDialogCase(IZZ)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1102
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "CallType is unknown"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkPdAvailability(ILandroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v0, "uri"

    .line 1465
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "reg_id"

    .line 1466
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "is_first_check"

    .line 1467
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 1469
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPdAvailability(), isFirstCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1471
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "no 200 OK(OPTION) response from PD, remove pulling UI"

    .line 1476
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1478
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    aget-object p1, p2, p1

    if-eqz p1, :cond_1

    .line 1480
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1481
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    :cond_1
    const/16 p1, 0xc8

    .line 1483
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    goto :goto_1

    .line 1472
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {p2, p1, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->requestSendCmcCheckMsg(IILjava/lang/String;)V

    const-wide/16 v3, 0x4e20

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    .line 1473
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    .line 1474
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method private clearAllCallsForCmcHandover(I)V
    .locals 3

    .line 228
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllCallsForCmcHandover cmcType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSessionByCmcType(I)V

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->clearAllCallInternal(I)V

    return-void
.end method

.method private getActiveCmcCallEstablishTime()J
    .locals 4

    .line 881
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 882
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveCmcCallEstablishTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getCallstateForPublishDialog(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 0

    .line 1110
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 1112
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "forced InCall state change for fast establishment [delayed ACK case]"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    :cond_0
    return-object p1
.end method

.method private getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;
    .locals 1

    const/4 v0, 0x0

    .line 1537
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method private getDialogCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)I
    .locals 2

    .line 1127
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session.mRemoteHeld : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isHoldCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1132
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isActiveCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method private getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I
    .locals 0

    .line 1120
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handlePublishDialog(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 405
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 406
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    .line 408
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveCmcCallsession(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 411
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveCmcCallsession(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Send Publish for external VoLTE Call."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 416
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Send Publish for external CS call."

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    goto :goto_0

    .line 419
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "sendDummyPublishDialog because do not have external call."

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    goto :goto_0

    .line 423
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "exist Active PD callsession. do not send PUBLISH msg."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isDuplicatedPublishDialog(Ljava/lang/String;)Z
    .locals 6

    .line 904
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 905
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 907
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 908
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 909
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 911
    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v4, v2

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishHashedXml:[B

    .line 912
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 913
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    and-int/lit8 v2, v0, 0x3f

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 914
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "[%d] sendPublishDialog duplicated."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    const/16 p0, 0x32

    if-le v0, p0, :cond_2

    .line 918
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 919
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many sendPublishDialog is called in very short time!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return v3

    .line 923
    :cond_3
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 924
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishHashedXml:[B

    :cond_4
    return v1
.end method

.method private makeReplaceProfile(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 1

    .line 1591
    new-instance p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;-><init>()V

    .line 1594
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->builder()Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setReplaceSipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1595
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCallType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1596
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setPhoneId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1597
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setAlertInfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1598
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setEmergencyRat(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1599
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setUrn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1600
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCLI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1601
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setConferenceCall(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1602
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1603
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setLineMsisdn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1604
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1605
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcBoundSessionId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1606
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1607
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setForceCSFB(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1608
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDialingNumber(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1609
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setNetworkType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1610
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isSamsungMdmnCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setSamsungMdmnCall(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1611
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->build()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    .line 1615
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 1616
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    goto :goto_0

    .line 1618
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private onCmcHandoverTimerExpired(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1585
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCmcHandoverTimerExpired handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1586
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1587
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    return-void
.end method

.method private printP2pList()V
    .locals 6

    .line 428
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz p0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 431
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2P list size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:duid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 435
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PD"

    goto :goto_1

    :cond_0
    const-string v2, "SD"

    .line 436
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "line id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", device id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7000000b

    .line 437
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method filterOngoingDialogFromDialogEvent(Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;
    .locals 5

    .line 1382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/Dialog;

    if-eqz v2, :cond_0

    .line 1385
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasSipCallId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1386
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1390
    :cond_1
    new-instance p0, Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1391
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    .line 1392
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    return-object p0
.end method

.method public forwardCmcRecordingEventToSD(IIII)V
    .locals 3

    .line 1489
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forwardCmcRecordingEventToSD, recordEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->convertRecordEventForCmcInfo(I)I

    move-result p2

    .line 1492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordInfoMsgEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result p1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1496
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1498
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1499
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result p1

    .line 1500
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "send CmcRecordingEvent to SD during cmc call relay"

    .line 1503
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object p1

    .line 1506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "record_event"

    .line 1507
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "extra"

    .line 1508
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "sip_call_id"

    .line 1509
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p4, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendCmcInfo(ILandroid/os/Bundle;)I

    :cond_0
    return-void
.end method

.method getCallCountForSendPublishDialog(ILcom/sec/ims/ImsRegistration;Ljava/util/List;Z)[I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/ims/ImsRegistration;",
            "Ljava/util/List<",
            "Lcom/sec/ims/Dialog;",
            ">;Z)[I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 1001
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v4, :cond_f

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 1002
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 1003
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 1007
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 1009
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    .line 1012
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v7

    const/4 v14, 0x1

    const/16 v27, 0x0

    if-eqz v7, :cond_1

    .line 1013
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Emergency call, ignore to send PUBLISH msg"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 1015
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1016
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v14

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v5, v27

    .line 1021
    :goto_2
    sget-object v13, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canSendPublish: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_f

    .line 1023
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    .line 1024
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";gr="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1025
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1026
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1029
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    .line 1033
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    iget-boolean v10, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    invoke-direct {v0, v8, v10}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCallstateForPublishDialog(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    .line 1037
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v10

    xor-int/lit8 v20, v10, 0x1

    .line 1041
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isEmergencyAudioCall(I)Z

    move-result v10

    .line 1042
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isEmergencyVideoCall(I)Z

    move-result v11

    .line 1044
    invoke-direct {v0, v6, v10, v11}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkIgnorePublishDialogCase(IZZ)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_0

    .line 1050
    :cond_3
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1052
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v10

    .line 1053
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v11

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v10, v27

    goto :goto_4

    .line 1054
    :cond_4
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    .line 1059
    :cond_5
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v10

    move/from16 v23, v10

    move v10, v14

    move/from16 v24, v27

    goto :goto_4

    :cond_6
    :goto_3
    const-string v10, "pullable false for RTT/TTY call"

    .line 1055
    invoke-static {v13, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, v27

    move/from16 v23, v10

    move/from16 v24, v23

    .line 1062
    :goto_4
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v7, "Conference call"

    move-object/from16 v21, v7

    move/from16 v10, v27

    goto :goto_5

    :cond_7
    move-object/from16 v21, v7

    .line 1068
    :goto_5
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isRemoteHeld()Z

    move-result v7

    invoke-direct {v0, v8, v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)I

    move-result v15

    if-eq v15, v14, :cond_8

    move/from16 v10, v27

    :cond_8
    if-eqz v10, :cond_a

    if-nez p4, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v25, v27

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v25, v14

    .line 1075
    :goto_7
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v7

    if-eqz v7, :cond_b

    aget v7, v2, v14

    add-int/2addr v7, v14

    aput v7, v2, v14

    goto :goto_8

    .line 1078
    :cond_b
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v8, v7, :cond_c

    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    const/4 v7, 0x2

    aget v10, v2, v7

    add-int/2addr v10, v14

    aput v10, v2, v7

    .line 1082
    :cond_d
    :goto_8
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->convertImsCallStateToDialogState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v18

    .line 1084
    new-instance v10, Lcom/sec/ims/Dialog;

    move-object v7, v10

    .line 1086
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v22

    const/16 v26, 0x0

    const-string/jumbo v11, "test_local_tag"

    const-string/jumbo v12, "test_remote_tag"

    const-string v4, ""

    move/from16 v28, v15

    move-object v15, v4

    const-string v16, ""

    move-object v8, v5

    move-object v4, v10

    move-object v10, v5

    move-object v0, v13

    move-object/from16 v13, v17

    move/from16 v29, v14

    move-object/from16 v14, v19

    move-object/from16 v17, v21

    move/from16 v19, v20

    move/from16 v20, v6

    move/from16 v21, v28

    invoke-direct/range {v7 .. v26}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 1087
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    move-object/from16 v0, p3

    .line 1090
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    move-object/from16 v0, p3

    :goto_9
    aget v4, v2, v27

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v27

    goto :goto_a

    :cond_f
    move-object/from16 v0, p3

    :goto_a
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_10
    return-object v2
.end method

.method public getCmcCallEstablishTime(Ljava/lang/String;)J
    .locals 4

    if-nez p1, :cond_0

    .line 862
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "callid is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getActiveCmcCallEstablishTime()J

    move-result-wide p0

    return-wide p0

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 869
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callId is not integer type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getActiveCmcCallEstablishTime()J

    move-result-wide p0

    return-wide p0

    .line 873
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mCmcCallEstablishTimeMap is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 9

    .line 1626
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCmcCallInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineSlotIndex()I

    move-result v0

    .line 1630
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1632
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1633
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v7

    if-lez v7, :cond_0

    .line 1634
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v6

    .line 1635
    :goto_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v7, v8, :cond_2

    :goto_1
    move v5, v2

    goto :goto_3

    .line 1637
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v7, :cond_6

    .line 1638
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v4, v7, :cond_3

    goto :goto_2

    .line 1640
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v7, :cond_4

    .line 1641
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v7, :cond_4

    .line 1642
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v7, :cond_4

    .line 1643
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v7, :cond_4

    const/4 v4, 0x3

    goto :goto_1

    .line 1645
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v4, v7, :cond_5

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    :goto_2
    move v5, v2

    move v4, v6

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    if-nez v4, :cond_8

    .line 1652
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    const/16 v2, 0x1777

    if-ne p0, v2, :cond_8

    const/4 v4, 0x4

    .line 1656
    :cond_8
    new-instance p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    invoke-direct {p0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;-><init>()V

    .line 1657
    invoke-virtual {p0, v0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setLineSlotId(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1658
    invoke-virtual {p0, v5}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setCmcType(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1659
    invoke-virtual {p0, v4}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setCallState(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1660
    invoke-virtual {p0, v1}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setPdDeviceId(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1661
    invoke-virtual {p0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->build()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCmcPdRegPhoneId()I
    .locals 3

    .line 1551
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v0, :cond_0

    .line 1552
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1553
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1554
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getCmcRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1541
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 1542
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1543
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcRegistration: found regId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1525
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v0, :cond_0

    .line 1526
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1528
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 1529
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCsCallPhoneIdByState(I)I
    .locals 5

    .line 529
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCsCallPhoneIdByState state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 531
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 532
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 533
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PublishDialog;

    .line 535
    invoke-virtual {v0}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v2

    .line 536
    invoke-virtual {v0}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 538
    aget v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 539
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phone id for cs call : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 545
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "external CS call is not found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 257
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 269
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-ne v2, p2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSessionCountByCmcType(II)I
    .locals 3

    .line 316
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 317
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 320
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 321
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I
    .locals 3

    if-eqz p2, :cond_0

    .line 892
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    .line 893
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    .line 894
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curCmcType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result p0

    return p0

    .line 897
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "curReg null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1668
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1712
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1713
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;

    .line 1714
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Received EVT_CMC_INFO_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcRecordingInfo(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V

    goto/16 :goto_0

    .line 1708
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcHandoverTimerExpired(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_0

    .line 1670
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkPdAvailability(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1674
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1675
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 1676
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EVENT_OPTIONS_EVENT, isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1681
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    .line 1683
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optionEvent regi handle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cmcType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1686
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    goto/16 :goto_0

    .line 1687
    :cond_1
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1688
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1689
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1690
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1692
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR Resopnse, remove pulling UI, optionFailReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getReason()Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1694
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_3

    .line 1696
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1697
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    :cond_3
    const/16 p1, 0xc8

    .line 1699
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    goto :goto_0

    :cond_4
    const-string p0, "CmcPdCheckTimer is not running"

    .line 1702
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1719
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1720
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 1721
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EVENT_P2P_OPTIONS_EVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    aget-object p0, p0, p1

    .line 1724
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasActiveCmcCallsession(I)Z
    .locals 3

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 290
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method hasDialingOrIncomingCall()Z
    .locals 2

    .line 1249
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1250
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1251
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method hasInternalCallToIgnorePublishDialog(I)Z
    .locals 4

    .line 1141
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 1142
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 1146
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1148
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1149
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1150
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_2

    .line 1151
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public init()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v1, 0x23

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public isCallServiceAvailableOnSecondary(ILjava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 1211
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    .line 1213
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCallServiceAvailableOnSecondary phoneId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", service="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual {v1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1217
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "disallow Call Service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isCmcRegExist(I)Z
    .locals 3

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 303
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method isInP2pArea(Lcom/sec/ims/ImsRegistration;)Z
    .locals 5

    .line 505
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 506
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "urn:duid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 508
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PD deviceId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 511
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 512
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 513
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2p deviceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PD and SD are in P2P area"

    .line 515
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 520
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method isNeedDelayToSendPublishDialog(I)Z
    .locals 4

    .line 1163
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 1164
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 1168
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1170
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1171
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1172
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_2
    return v0
.end method

.method isP2pDiscoveryDone()Z
    .locals 0

    .line 497
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    return p0
.end method

.method onCallEndedWithSendPublish(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 10

    .line 1320
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    .line 1324
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_a

    const/4 v3, 0x0

    .line 1328
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    .line 1330
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1331
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    if-eqz v4, :cond_6

    if-eqz p2, :cond_6

    .line 1335
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    if-nez v6, :cond_6

    .line 1336
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v3

    .line 1337
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1338
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v8

    if-ne v8, v2, :cond_3

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v8

    if-eq v8, v3, :cond_3

    .line 1339
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v8, v9, :cond_4

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v7, v8, :cond_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-nez v5, :cond_9

    .line 1344
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_9

    if-eqz p2, :cond_9

    .line 1346
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    if-ne v6, v2, :cond_9

    .line 1347
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveExtCallCount()I

    move-result v6

    if-lez v6, :cond_8

    if-nez v5, :cond_8

    .line 1348
    iget-boolean v5, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    if-eqz v5, :cond_7

    .line 1350
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v5

    const/16 v6, 0x1777

    if-ne v5, v6, :cond_8

    .line 1351
    :cond_7
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 1354
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    if-ne v4, v1, :cond_9

    .line 1355
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    const-string v5, "99991111222"

    invoke-virtual {p0, v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendCmcCallStateForRcs(ILjava/lang/String;Z)V

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_a
    if-eqz p2, :cond_b

    .line 1360
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1361
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    :cond_b
    return-void
.end method

.method public onCmcDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V
    .locals 4

    .line 331
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCmcDtmfInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-gt v1, v0, :cond_2

    .line 338
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 340
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCmcDtmfEvent(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    return-void
.end method

.method onCmcImsDialogEvent(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;
    .locals 9

    .line 1397
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1399
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->filterOngoingDialogFromDialogEvent(Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1401
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Filter DialogEvent"

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v1

    .line 1405
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/Dialog;

    if-eqz v2, :cond_1

    .line 1406
    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getState()I

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1412
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1413
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1414
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isP2pDiscoveryDone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1415
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Do not send OPTIONS until P2P discovery done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1417
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isInP2pArea(Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1418
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "PD and SD are not in P2P area"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-eqz v4, :cond_5

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@samsungims.com;gr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPriDeviceIdWithURN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1426
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    goto :goto_2

    .line 1429
    :cond_5
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No cofirmed Dilaog in nofity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    const/16 p1, 0xc8

    .line 1431
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    .line 1433
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    aput-object p2, p0, p1

    :cond_6
    return-object p2
.end method

.method public onCmcRecordingInfo(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V
    .locals 2

    .line 1517
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCmcRecordingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1520
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCmcInfoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V

    :cond_0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2

    .line 178
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistered reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stop Nsd when deregistered"

    .line 181
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p2}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->stop()V

    .line 183
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->setP2pRegiInfo(Lcom/sec/ims/ImsRegistration;)V

    const/4 p2, 0x0

    .line 184
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 185
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 186
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 187
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    aget-object p2, p2, v1

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    :cond_0
    const/4 p2, 0x2

    if-ne v0, p2, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p1

    const/16 p2, 0x16

    if-ne p1, p2, :cond_1

    .line 194
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_1
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 199
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistering reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    .line 201
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "onDeregistering: Send dummy publish dialog before deregistered"

    .line 203
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    :cond_0
    if-ne v1, v3, :cond_1

    .line 207
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p1

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 208
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_1
    return-void
.end method

.method onImsCallEventWhenEstablished(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .locals 7

    .line 1259
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_6

    const/4 v3, 0x0

    .line 1263
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1264
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    if-nez v5, :cond_5

    .line 1266
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1268
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1269
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_1

    move v3, v1

    :cond_1
    if-nez v3, :cond_5

    .line 1273
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_2

    .line 1277
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1278
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_2

    .line 1280
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I

    move-result v3

    .line 1281
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 1282
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    if-eq v5, v1, :cond_4

    if-le v3, v1, :cond_5

    .line 1284
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_6
    return-void
.end method

.method onImsCallEventWithHeldBoth(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .locals 7

    if-eqz p2, :cond_3

    .line 1294
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    const/4 v0, 0x5

    .line 1298
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_3

    const/4 v3, 0x0

    .line 1302
    invoke-virtual {p0, p2, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1303
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    if-nez v5, :cond_2

    .line 1305
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1307
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_1

    move v3, v1

    :cond_1
    if-nez v3, :cond_2

    .line 1312
    invoke-virtual {p0, p2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method onImsIncomingCallEvent(II)V
    .locals 7

    .line 1226
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_4

    const/4 v3, 0x0

    .line 1230
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez p2, :cond_3

    .line 1233
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1234
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    if-eqz v5, :cond_1

    move v3, v1

    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    .line 1239
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    if-lez p2, :cond_5

    .line 1244
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getRegiEventNotifyHostInfo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public onRegEventContactUriNotification(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 215
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 216
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRegEventContactUriNotification prevNumOfActiveSDs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mNumOfActiveSDs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    .line 220
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 221
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    if-lez v2, :cond_0

    if-eq v2, v0, :cond_0

    const-string v0, "send Publish when registered"

    .line 222
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->handlePublishDialog(Lcom/sec/ims/ImsRegistration;)V

    :cond_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 141
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    .line 142
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 144
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->setP2pRegiInfo(Lcom/sec/ims/ImsRegistration;)V

    :cond_0
    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    goto/16 :goto_0

    .line 148
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 151
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "do cmc handover"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v1, 0x0

    .line 154
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 155
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 157
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 158
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->makeReplaceProfile(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 160
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    .line 161
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 162
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->replaceRegistrationInfo(Lcom/sec/ims/ImsRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    .line 165
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 170
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mmtel Registered ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mmtel"

    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method sendCmcCallStateForRcs(ILjava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1367
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1369
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "sendCmcCallStateForRcs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "EXTRA_IS_INCOMING"

    .line 1371
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "EXTRA_TEL_NUMBER"

    .line 1372
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXTRA_PHONE_ID"

    .line 1373
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-string p2, "EXTRA_CALL_EVENT"

    .line 1374
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_IS_CMC_CALL"

    .line 1375
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "EXTRA_IS_CMC_CONNECTED"

    .line 1376
    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1377
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public sendDummyPublishDialog(II)V
    .locals 4

    .line 235
    new-instance v0, Lcom/android/internal/telephony/PublishDialog;

    invoke-direct {v0}, Lcom/android/internal/telephony/PublishDialog;-><init>()V

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->setCallCount(I)V

    const/16 v2, 0x270f

    .line 237
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallId(I)V

    const/16 v2, 0x9

    .line 238
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallDomain(I)V

    const/4 v2, 0x0

    .line 239
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallStatus(I)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    .line 241
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallDirection(I)V

    const-string v3, ""

    .line 242
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->addCallPullable(Z)V

    .line 244
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallNumberPresentation(I)V

    .line 245
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapNamePresentation(I)V

    .line 246
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallMpty(Z)V

    const-wide/16 v1, 0x0

    .line 248
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PublishDialog;->addConnectedTime(J)V

    .line 249
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    return-void
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V
    .locals 52

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p3

    .line 551
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v13

    .line 552
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallId()[I

    move-result-object v12

    .line 553
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallDomain()[I

    move-result-object v11

    .line 554
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v21

    .line 555
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallType()[I

    move-result-object v22

    .line 556
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallDirection()[I

    move-result-object v23

    .line 557
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallRemoteUri()[Ljava/lang/String;

    move-result-object v24

    .line 558
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallPullable()[Z

    move-result-object v1

    .line 559
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallNumberPresentation()[I

    move-result-object v25

    .line 560
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getConnectedTime()[J

    move-result-object v2

    .line 561
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallMpty()[Z

    move-result-object v26

    .line 563
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_31

    .line 568
    array-length v3, v12

    const/4 v7, 0x1

    if-lt v3, v7, :cond_31

    if-eqz v11, :cond_31

    array-length v3, v11

    if-ge v3, v7, :cond_0

    goto/16 :goto_1f

    :cond_0
    const/4 v4, 0x0

    .line 573
    aget v3, v11, v4

    const/4 v10, 0x3

    const/4 v9, 0x2

    if-ne v3, v7, :cond_7

    .line 575
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v3

    .line 577
    aget v5, v21, v4

    if-ne v5, v10, :cond_2

    aget v3, v3, v4

    if-eq v5, v3, :cond_2

    goto :goto_0

    .line 582
    :cond_1
    aget v3, v21, v4

    if-ne v3, v10, :cond_2

    :goto_0
    move v3, v7

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 588
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v0, v14, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 590
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Send 180 Ringing msg for CMC CS call."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-interface {v5, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->handleCmcCsfb(I)I

    .line 595
    :cond_3
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    move v5, v3

    :goto_2
    if-ge v3, v13, :cond_5

    .line 599
    aget v6, v21, v3

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->convertCsCallStateToDialogState(I)I

    move-result v6

    if-ne v6, v9, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 603
    :cond_5
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mExtConfirmedCsCallCnt: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", extConfirmedCsCallCnt: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    if-eq v3, v5, :cond_6

    .line 605
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {v3, v15, v5}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->updateCmcExtCallCount(II)I

    .line 607
    :cond_6
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    .line 611
    :cond_7
    invoke-virtual {v0, v15, v4, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v27

    if-nez v27, :cond_8

    return-void

    .line 616
    :cond_8
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    move v3, v4

    :goto_3
    const-string v10, ","

    if-ge v3, v13, :cond_a

    const v5, 0x70000001

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v12, v3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v11, v3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v21, v3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v22, v3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v23, v3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v9, v1, v3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v25, v3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v9, v26, v3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v2, v3

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 621
    aget v5, v21, v3

    if-ne v5, v7, :cond_9

    .line 622
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    aget v6, v12, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-wide v9, v2, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x2

    goto :goto_3

    .line 626
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasInternalCallToIgnorePublishDialog(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 627
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ignore sendPublishDialog : PD has internal call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 631
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isNeedDelayToSendPublishDialog(I)Z

    move-result v28

    .line 633
    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v29

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    iget-boolean v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 637
    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-eqz v1, :cond_d

    move v5, v4

    .line 639
    :goto_4
    array-length v6, v1

    if-ge v5, v6, :cond_d

    .line 640
    aget-boolean v6, v1, v5

    if-nez v6, :cond_c

    .line 641
    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    goto :goto_5

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    move v1, v4

    move v5, v1

    move v6, v5

    move/from16 v31, v6

    move/from16 v30, v7

    :goto_6
    const-string v7, ";gr="

    if-ge v6, v13, :cond_27

    .line 672
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    move-object/from16 p2, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v8

    const-string v8, "[CallInfo #"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] callId: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v12, v6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", domain: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v11, v6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", callState: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v21, v6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", callType: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v22, v6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", callDirections: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v23, v6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remoteUris: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v24, v6

    .line 673
    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", cmcType: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", phoneId: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    aget v2, v11, v6

    const/4 v8, 0x2

    if-ne v2, v8, :cond_f

    .line 678
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-eq v9, v2, :cond_e

    new-array v2, v8, [Ljava/lang/Object;

    .line 679
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v2, v8

    iget-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v2, v9

    const-string v6, "Trying call sendPublishDialogInternal(). CmcTotalMnoPullable changed : %s ==> %s"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {v0, v15, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(II)V

    move-object/from16 v47, p2

    move-object/from16 v48, v3

    move/from16 v33, v8

    move-object/from16 v46, v10

    move/from16 v51, v13

    move-object/from16 v15, v32

    move-object/from16 v32, v11

    goto/16 :goto_18

    :cond_e
    move-object/from16 v37, v3

    goto/16 :goto_8

    :cond_f
    const/4 v8, 0x0

    const-string v19, ""

    const/4 v8, 0x2

    if-eq v2, v8, :cond_26

    .line 687
    aget v2, v12, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 690
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 691
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 692
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v2

    aget-object v2, v24, v6

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 694
    aget v8, v25, v6

    move-object/from16 v34, v2

    const/4 v2, 0x2

    if-ne v8, v2, :cond_10

    const-string v2, "anonymous"

    goto :goto_7

    .line 697
    :cond_10
    aget-object v2, v24, v6

    .line 700
    :goto_7
    aget v8, v23, v6

    .line 701
    aget v35, v21, v6

    invoke-static/range {v35 .. v35}, Lcom/sec/internal/helper/ImsCallUtil;->convertCsCallStateToDialogState(I)I

    move-result v35

    move-object/from16 v36, v2

    .line 703
    aget v2, v22, v6

    move-object/from16 v37, v3

    const/16 v3, 0x38f

    if-ne v2, v3, :cond_11

    const-string v2, "ignore publish dialog when call type is 911 (Emergency)"

    .line 704
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move-object/from16 v47, p2

    move v0, v6

    move/from16 v45, v9

    move-object/from16 v46, v10

    move/from16 v51, v13

    move-object/from16 v15, v32

    move-object/from16 v48, v37

    :goto_9
    const/16 v33, 0x0

    move-object/from16 v32, v11

    move-object/from16 v37, v12

    goto/16 :goto_17

    .line 706
    :cond_11
    aget-boolean v3, v26, v6

    move-object/from16 v39, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 708
    aget v2, v21, v6

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    move-object/from16 v47, p2

    move v0, v6

    move/from16 v45, v9

    move-object/from16 v46, v10

    move/from16 v51, v13

    move-object/from16 v15, v32

    move-object/from16 v48, v37

    const/16 v30, 0x2

    :goto_a
    const/16 v31, 0x1

    goto :goto_9

    :cond_12
    if-eqz v2, :cond_14

    const/4 v3, 0x7

    if-eq v2, v3, :cond_14

    const/16 v3, 0x8

    if-ne v2, v3, :cond_13

    goto :goto_b

    :cond_13
    move-object/from16 v47, p2

    move v0, v6

    move/from16 v45, v9

    move-object/from16 v46, v10

    move/from16 v51, v13

    move-object/from16 v15, v32

    move-object/from16 v48, v37

    goto :goto_a

    :cond_14
    :goto_b
    move-object/from16 v47, p2

    move v0, v6

    move/from16 v45, v9

    move-object/from16 v46, v10

    move/from16 v51, v13

    move-object/from16 v15, v32

    move-object/from16 v48, v37

    const/16 v30, 0x0

    goto :goto_a

    :cond_15
    if-eqz v2, :cond_1d

    const/16 v3, 0x38f

    if-ne v2, v3, :cond_16

    move v4, v3

    move-object/from16 v16, v7

    const/4 v3, 0x3

    const/4 v7, 0x1

    goto :goto_e

    :cond_16
    const/4 v4, 0x1

    if-eq v2, v4, :cond_18

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    const/4 v3, 0x3

    if-ne v2, v3, :cond_17

    goto :goto_c

    :cond_17
    move-object/from16 v16, v7

    const/4 v2, 0x0

    const/16 v18, 0x0

    const/16 v38, 0x0

    move v7, v4

    goto :goto_12

    :cond_18
    const/4 v3, 0x3

    :goto_c
    if-eq v2, v4, :cond_1b

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1a

    if-eq v2, v3, :cond_19

    const/4 v2, 0x0

    goto :goto_d

    :cond_19
    const/4 v2, 0x2

    goto :goto_d

    :cond_1a
    const/4 v2, 0x4

    goto :goto_d

    :cond_1b
    move v2, v3

    .line 742
    :goto_d
    aget v4, v21, v6

    move-object/from16 v16, v7

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1c

    move/from16 v18, v3

    move/from16 v38, v18

    const/4 v4, 0x0

    goto :goto_12

    :cond_1c
    const/4 v4, 0x0

    goto :goto_10

    :cond_1d
    move-object/from16 v16, v7

    const/4 v3, 0x3

    const/4 v7, 0x1

    const/16 v4, 0x38f

    :goto_e
    if-ne v2, v4, :cond_1e

    const/4 v2, 0x7

    goto :goto_f

    :cond_1e
    move v2, v7

    .line 721
    :goto_f
    aget v4, v21, v6

    if-ne v4, v7, :cond_1f

    move/from16 v18, v3

    move v4, v7

    goto :goto_11

    :cond_1f
    move v4, v7

    :goto_10
    const/16 v18, 0x0

    :goto_11
    const/16 v38, 0x0

    .line 754
    :goto_12
    aget v3, v21, v6

    if-ne v3, v7, :cond_20

    move/from16 v17, v4

    move/from16 v42, v7

    const/4 v4, 0x2

    goto :goto_13

    :cond_20
    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    move/from16 v42, v4

    const/16 v17, 0x0

    goto :goto_13

    :cond_21
    const/16 v17, 0x0

    const/16 v42, 0x0

    :goto_13
    if-eqz v17, :cond_23

    .line 763
    iget-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-nez v4, :cond_22

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    goto :goto_15

    :cond_23
    :goto_14
    move v4, v7

    :goto_15
    if-eqz v3, :cond_24

    const/4 v7, 0x7

    if-eq v3, v7, :cond_24

    const/16 v7, 0x8

    if-ne v3, v7, :cond_25

    :cond_24
    add-int/lit8 v5, v5, 0x1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    move/from16 v41, v4

    move-object/from16 v7, v16

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    move/from16 v16, v35

    move/from16 v40, v38

    move/from16 v35, v5

    move/from16 v38, v18

    move/from16 v18, v8

    move-object/from16 v8, v34

    move/from16 v34, v1

    move-object/from16 v19, v36

    move/from16 v36, v2

    move-object v2, v4

    goto :goto_16

    :cond_26
    move-object/from16 v37, v3

    move-object/from16 v39, v4

    const-string v2, "primary_device_dialog_id"

    move/from16 v34, v1

    move/from16 v35, v5

    move-object/from16 v3, v19

    move-object v4, v3

    move-object v7, v4

    move-object v8, v7

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    .line 773
    :goto_16
    new-instance v5, Lcom/sec/ims/Dialog;

    move-object v1, v5

    const/16 v20, 0x0

    const-string/jumbo v43, "test_local_tag"

    move-object/from16 v44, v5

    move-object/from16 v5, v43

    const-string/jumbo v43, "test_remote_tag"

    move v0, v6

    move-object/from16 v6, v43

    const-string v43, ""

    move/from16 v45, v9

    move-object/from16 v9, v43

    const-string v17, ""

    move-object/from16 v46, v10

    move-object/from16 v10, v17

    move-object/from16 v47, p2

    move-object/from16 v48, v37

    move-object/from16 v49, v39

    const/16 v17, 0x1

    const/16 v33, 0x0

    move-object/from16 v50, v32

    move-object/from16 v32, v11

    move-object/from16 v11, v19

    move-object/from16 v37, v12

    move/from16 v12, v16

    move/from16 v51, v13

    move/from16 v13, v18

    move/from16 v14, v36

    move/from16 v15, v42

    move/from16 v16, p1

    move/from16 v17, v38

    move/from16 v18, v40

    move/from16 v19, v41

    invoke-direct/range {v1 .. v20}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v49

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v44

    move-object/from16 v15, v50

    .line 777
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v34

    move/from16 v5, v35

    :goto_17
    add-int/lit8 v6, v0, 0x1

    move-object/from16 v0, p0

    move/from16 v14, p3

    move-object v8, v15

    move-object/from16 v11, v32

    move/from16 v4, v33

    move-object/from16 v12, v37

    move/from16 v9, v45

    move-object/from16 v10, v46

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    move/from16 v13, v51

    move/from16 v15, p1

    goto/16 :goto_6

    :cond_27
    move-object/from16 v47, v2

    move-object/from16 v48, v3

    move/from16 v33, v4

    move-object v15, v8

    move-object/from16 v46, v10

    move-object/from16 v32, v11

    move/from16 v51, v13

    .line 780
    :goto_18
    aget v0, v32, v33

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    move/from16 v0, v51

    if-lt v0, v2, :cond_2b

    if-eqz v31, :cond_2b

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    aget v4, v22, v33

    const/4 v14, 0x1

    if-eq v4, v14, :cond_29

    if-eq v4, v2, :cond_29

    const/4 v2, 0x3

    if-ne v4, v2, :cond_28

    goto :goto_19

    :cond_28
    const/4 v2, 0x5

    move/from16 v16, v2

    move/from16 v18, v33

    goto :goto_1a

    :cond_29
    const/4 v2, 0x3

    :goto_19
    const/4 v4, 0x6

    move/from16 v18, v2

    move/from16 v16, v4

    :goto_1a
    const/16 v17, 0x3

    if-nez v30, :cond_2a

    add-int/lit8 v5, v5, 0x1

    :cond_2a
    move/from16 v21, v5

    add-int/lit8 v22, v1, 0x1

    .line 802
    new-instance v11, Lcom/sec/ims/Dialog;

    move-object v1, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v2, "999"

    const-string v4, "999"

    const-string/jumbo v5, "test_local_tag"

    const-string/jumbo v6, "test_remote_tag"

    const-string v8, "Conference call"

    const-string v9, ""

    const-string v10, ""

    const-string v3, "Conference call"

    move-object/from16 p2, v11

    move-object v11, v3

    move-object v3, v0

    move v0, v14

    move/from16 v14, v16

    move-object v0, v15

    move/from16 v15, v30

    move/from16 v16, p1

    invoke-direct/range {v1 .. v20}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 806
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    .line 807
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v5, v21

    move/from16 v1, v22

    goto :goto_1b

    :cond_2b
    move-object v0, v15

    .line 813
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v47

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 816
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/Dialog;

    sub-int v7, v1, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_2c

    .line 818
    invoke-virtual {v6, v8}, Lcom/sec/ims/Dialog;->setIsExclusive(Z)V

    .line 820
    :cond_2c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_2d
    const/4 v8, 0x1

    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</dialog-info>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 826
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-object/from16 v3, p0

    move/from16 v7, p3

    invoke-virtual {v3, v7, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_2e

    move v7, v8

    goto :goto_1d

    :cond_2e
    move/from16 v7, v33

    .line 830
    :goto_1d
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cmcPdCallCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", extCsCallCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endedCallCnt: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-direct {v3, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isDuplicatedPublishDialog(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    aget v1, v32, v33

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2f

    return-void

    :cond_2f
    if-nez v7, :cond_30

    .line 836
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 837
    iget-object v2, v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v7, 0x1770

    const-string v5, "displayName"

    move/from16 v3, v29

    move/from16 v8, v28

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 838
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/Dialog;

    const v2, 0x70000002

    .line 839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v46

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_1e

    :cond_30
    return-void

    .line 569
    :cond_31
    :goto_1f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ignore sendPublishDialog : Array parameters are empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendPublishDialogInternal(II)V
    .locals 0

    .line 847
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 849
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_0
    return-void
.end method

.method sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V
    .locals 1

    const/4 v0, 0x0

    .line 930
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;Z)V

    return-void
.end method

.method sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;Z)V
    .locals 12

    .line 934
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "sendPublishDialogInternal()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    const-string p0, "Ignore sendPublishDialogInternal : PD is not registered"

    .line 942
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 946
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 948
    sget-object v5, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    if-ne v5, v3, :cond_2

    .line 949
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 951
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 952
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    const-string v6, "*77"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 953
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasTwoPhonePrefix="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasNumberPlus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    const-string p0, "Ignore sendPublishDialogInternal in two phone mode"

    .line 955
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 962
    :cond_2
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 963
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 965
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCallCountForSendPublishDialog(ILcom/sec/ims/ImsRegistration;Ljava/util/List;Z)[I

    move-result-object p1

    .line 966
    aget p2, p1, v2

    .line 967
    aget v2, p1, v4

    const/4 v5, 0x2

    .line 968
    aget p1, p1, v5

    .line 972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\">\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 975
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/Dialog;

    sub-int v8, p2, p1

    if-le v8, v4, :cond_3

    .line 977
    invoke-virtual {v7, v4}, Lcom/sec/ims/Dialog;->setIsExclusive(Z)V

    .line 979
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v8, 0x70000003

    .line 980
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 982
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</dialog-info>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 984
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extPsCallCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", validCallCnt: "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", endedCallCnt: "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 987
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v6, 0x1770

    const-string v4, "displayName"

    move v2, v0

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    :cond_5
    return-void
.end method

.method public setCallEstablishTimeExtra(J)V
    .locals 1

    .line 855
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setNeedToNotifyAfterP2pDiscovery(Z)V
    .locals 0

    .line 501
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    return-void
.end method

.method public setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 465
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set lineId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->setServiceInfo(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    :cond_0
    return-void
.end method

.method startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1561
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1562
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "already start cmc handover timer"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1565
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cmc handover timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x22

    .line 1567
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1568
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method protected startCmcPdCheckTimer(IJILjava/lang/String;Z)V
    .locals 3

    .line 1439
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1441
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCmcPdCheckTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "reg_id"

    .line 1443
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p4, "uri"

    .line 1444
    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "is_first_check"

    .line 1445
    invoke-virtual {v0, p4, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1446
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p4

    const/16 p5, 0x21

    const/4 p6, -0x1

    .line 1447
    invoke-virtual {p0, p5, p1, p6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p5

    .line 1448
    iget-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p6, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0, p5, p2, p3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method public startP2p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-nez v0, :cond_0

    .line 454
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p lineId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p deviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 457
    new-instance p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    .line 459
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "start Nsd"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->start()V

    return-void
.end method

.method public startP2pDiscovery(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startDiscovery(Landroid/os/Handler;ILjava/util/ArrayList;)I

    move-result p0

    .line 447
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDiscovery result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " hostlist "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public stopCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1572
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1574
    iget-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    .line 1576
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop cmc handover timer handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 1578
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1579
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1580
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_1
    return-void
.end method

.method protected stopCmcPdCheckTimer(I)V
    .locals 3

    .line 1454
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1457
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCmcPdCheckTimer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 1460
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;

    .line 1461
    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method updateAudioInterfaceByCmc(II)Lcom/sec/ims/ImsRegistration;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne p2, v1, :cond_2

    .line 1186
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x7

    :cond_0
    const/4 p2, 0x1

    :goto_0
    if-gt p2, v1, :cond_3

    .line 1190
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1192
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    return-object v2

    :cond_1
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3

    .line 1197
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAudioInterface for CMC SD call."

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    .line 1198
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 5

    .line 474
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcP2pList currentRat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 476
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->printP2pList()V

    .line 477
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 479
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 480
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "Do not set p2p list in case of CMC handover"

    .line 481
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 483
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 485
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@samsungims.com;gr="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setP2p(Ljava/util/List;)V

    .line 492
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getRegiEventNotifyHostInfo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    :cond_3
    return-void
.end method
