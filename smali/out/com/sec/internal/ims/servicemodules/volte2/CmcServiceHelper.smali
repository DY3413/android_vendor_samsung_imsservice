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
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCmcDialogEvent(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)[Lcom/sec/ims/DialogEvent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedToNotifyAfterP2pDiscovery(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsP2pDiscoveryDone(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCmcEndCallReason(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedToNotifyAfterP2pDiscovery(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mprintP2pList(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->printP2pList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 5

    .line 114
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 79
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    .line 83
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 84
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    .line 85
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    const/16 v0, 0xc8

    .line 87
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    .line 89
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 90
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 106
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 107
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 115
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;I)V
    .registers 12
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

    .line 121
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    const/16 v1, 0xc8

    .line 87
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 93
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v1, 0x0

    .line 105
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 106
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 107
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 123
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    .line 124
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 125
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 126
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 127
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 129
    new-array p2, p8, [Lcom/sec/ims/DialogEvent;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    .line 130
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    :try_start_51
    const-string p1, "SHA-1"

    .line 132
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_59} :catch_5a

    goto :goto_64

    :catch_5a
    move-exception p0

    .line 134
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_64
    return-void
.end method

.method private checkIgnorePublishDialogCase(IZZ)Z
    .registers 4

    if-nez p1, :cond_b

    .line 1118
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "CallType is unknown"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private checkPdAvailability(ILandroid/os/Bundle;)V
    .registers 11

    const-string/jumbo v0, "uri"

    .line 1494
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "reg_id"

    .line 1495
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "is_first_check"

    .line 1496
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 1498
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPdAvailability(), isFirstCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1500
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_68

    if-eqz p2, :cond_4b

    goto :goto_68

    :cond_4b
    const-string p2, "no 200 OK(OPTION) response from PD, remove pulling UI"

    .line 1505
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1507
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    aget-object p1, p2, p1

    if-eqz p1, :cond_63

    .line 1509
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1510
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    :cond_63
    const/16 p1, 0xc8

    .line 1512
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    goto :goto_80

    .line 1501
    :cond_68
    :goto_68
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {p2, p1, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->requestSendCmcCheckMsg(IILjava/lang/String;)V

    const-wide/16 v3, 0x4e20

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    .line 1502
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    .line 1503
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    :goto_80
    return-void
.end method

.method private clearAllCallsForCmcHandover(I)V
    .registers 5

    .line 232
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllCallsForCmcHandover cmcType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSessionByCmcType(I)V

    .line 234
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->clearAllCallInternal(I)V

    return-void
.end method

.method private getActiveCmcCallEstablishTime()J
    .registers 5

    .line 893
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 894
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveCmcCallEstablishTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_31
    const-wide/16 v0, 0x0

    :goto_33
    return-wide v0
.end method

.method private getCallstateForPublishDialog(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .registers 3

    .line 1126
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_f

    if-eqz p2, :cond_f

    .line 1128
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "forced InCall state change for fast establishment [delayed ACK case]"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    :cond_f
    return-object p1
.end method

.method private getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;
    .registers 4

    const/4 v0, 0x0

    .line 1566
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method private getDialogCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)I
    .registers 5

    .line 1143
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "session.mRemoteHeld : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isHoldCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result p0

    if-nez p0, :cond_2e

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_24

    if-eqz p2, :cond_24

    goto :goto_2e

    .line 1148
    :cond_24
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isActiveCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2c
    const/4 p0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 p0, 0x2

    :goto_2f
    return p0
.end method

.method private getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I
    .registers 2

    .line 1136
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x3

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private handlePublishDialog(Lcom/sec/ims/ImsRegistration;)V
    .registers 5

    .line 417
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 418
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    .line 420
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveCmcCallsession(I)Z

    move-result v2

    if-nez v2, :cond_5c

    const/4 v2, 0x0

    .line 423
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveCmcCallsession(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 424
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Send Publish for external VoLTE Call."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 426
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 427
    :cond_2d
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 428
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Send Publish for external CS call."

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    goto :goto_63

    .line 431
    :cond_50
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDummyPublishDialog because do not have external call."

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    goto :goto_63

    .line 435
    :cond_5c
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "exist Active PD callsession. do not send PUBLISH msg."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    return-void
.end method

.method private isDuplicatedPublishDialog(Ljava/lang/String;)Z
    .registers 8

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    const/4 v1, 0x0

    if-eqz v0, :cond_7a

    .line 917
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 919
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 921
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 923
    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v4, v2

    if-gez v2, :cond_76

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishHashedXml:[B

    .line 924
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 925
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    and-int/lit8 v1, v0, 0x3f

    if-nez v1, :cond_4d

    .line 926
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[%d] sendPublishDialog duplicated."

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_4d
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    const/16 p0, 0x32

    if-le v0, p0, :cond_75

    .line 930
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p0

    if-eqz p0, :cond_5e

    goto :goto_75

    .line 931
    :cond_5e
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

    :cond_75
    :goto_75
    return v1

    .line 935
    :cond_76
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 936
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishHashedXml:[B

    :cond_7a
    return v1
.end method

.method private makeReplaceProfile(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;
    .registers 3

    .line 1620
    new-instance p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;-><init>()V

    .line 1623
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->builder()Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setReplaceSipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1624
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCallType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1625
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setPhoneId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1626
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setAlertInfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1627
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setEmergencyRat(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1628
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setUrn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1629
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCLI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1630
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setConferenceCall(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1631
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1632
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setLineMsisdn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1633
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1634
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcBoundSessionId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1635
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1636
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setForceCSFB(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1637
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDialingNumber(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1638
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setNetworkType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1639
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isSamsungMdmnCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setSamsungMdmnCall(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1640
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->build()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    .line 1644
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    if-nez v0, :cond_a3

    .line 1645
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    goto :goto_aa

    .line 1647
    :cond_a3
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    :goto_aa
    return-object p0
.end method

.method private onCmcHandoverTimerExpired(Lcom/sec/ims/ImsRegistration;)V
    .registers 5

    .line 1614
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

    .line 1615
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1616
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    return-void
.end method

.method private printP2pList()V
    .registers 7

    .line 440
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz p0, :cond_92

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_92

    .line 443
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

    .line 444
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

    .line 446
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 447
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "PD"

    goto :goto_5d

    :cond_5b
    const-string v2, "SD"

    .line 448
    :goto_5d
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

    .line 449
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_42

    :cond_92
    return-void
.end method


# virtual methods
.method filterOngoingDialogFromDialogEvent(Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;
    .registers 7

    .line 1411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1412
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/Dialog;

    if-eqz v2, :cond_d

    .line 1414
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasSipCallId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1415
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1419
    :cond_2b
    new-instance p0, Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1420
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    .line 1421
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    return-object p0
.end method

.method public forwardCmcRecordingEventToSD(IIII)V
    .registers 8

    .line 1518
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

    .line 1520
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->convertRecordEventForCmcInfo(I)I

    move-result p2

    .line 1521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordInfoMsgEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result p1

    if-eqz p1, :cond_8f

    if-lez p2, :cond_8f

    .line 1525
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 1527
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8f

    .line 1528
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result p1

    .line 1529
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_8f

    const-string/jumbo v1, "send CmcRecordingEvent to SD during cmc call relay"

    .line 1532
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object p1

    .line 1535
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "record_event"

    .line 1536
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "extra"

    .line 1537
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "sip_call_id"

    .line 1538
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p4, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendCmcInfo(ILandroid/os/Bundle;)I

    :cond_8f
    return-void
.end method

.method getCallCountForSendPublishDialog(ILcom/sec/ims/ImsRegistration;Ljava/util/List;Z)[I
    .registers 35
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

    .line 1013
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_204

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v4, :cond_1fe

    const/4 v5, -0x1

    if-eq v1, v5, :cond_37

    .line 1014
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    if-eq v5, v1, :cond_37

    .line 1015
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_15

    .line 1019
    :cond_37
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 1021
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    .line 1024
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v7

    const/4 v14, 0x1

    const/16 v27, 0x0

    if-eqz v7, :cond_54

    .line 1025
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Emergency call, ignore to send PUBLISH msg"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_54
    if-eqz v5, :cond_64

    .line 1027
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    if-eqz v5, :cond_64

    .line 1028
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-nez v5, :cond_64

    move v5, v14

    goto :goto_66

    :cond_64
    :goto_64
    move/from16 v5, v27

    .line 1033
    :goto_66
    sget-object v13, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canSendPublish: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1fe

    .line 1035
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    .line 1036
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

    .line 1037
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1038
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

    const-string/jumbo v11, "test_local_tag"

    const-string/jumbo v12, "test_remote_tag"

    .line 1041
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    .line 1045
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    iget-boolean v10, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    invoke-direct {v0, v8, v10}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCallstateForPublishDialog(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    .line 1049
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v10

    xor-int/lit8 v20, v10, 0x1

    .line 1053
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isEmergencyAudioCall(I)Z

    move-result v10

    .line 1054
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isEmergencyVideoCall(I)Z

    move-result v15

    .line 1056
    invoke-direct {v0, v6, v10, v15}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkIgnorePublishDialogCase(IZZ)Z

    move-result v10

    if-eqz v10, :cond_104

    goto/16 :goto_15

    .line 1062
    :cond_104
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v10

    if-eqz v10, :cond_119

    .line 1064
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v10

    .line 1065
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v15

    move/from16 v23, v10

    move/from16 v24, v15

    move/from16 v10, v27

    goto :goto_13c

    .line 1066
    :cond_119
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v10

    if-nez v10, :cond_130

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v10

    if-eqz v10, :cond_126

    goto :goto_130

    .line 1071
    :cond_126
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v10

    move/from16 v23, v10

    move v10, v14

    move/from16 v24, v27

    goto :goto_13c

    :cond_130
    :goto_130
    const-string/jumbo v10, "pullable false for RTT/TTY call"

    .line 1067
    invoke-static {v13, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, v27

    move/from16 v23, v10

    move/from16 v24, v23

    .line 1074
    :goto_13c
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v15

    if-eqz v15, :cond_14d

    const-string v7, "Conference call"

    move-object/from16 v21, v7

    move/from16 v10, v27

    goto :goto_14f

    :cond_14d
    move-object/from16 v21, v7

    .line 1080
    :goto_14f
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isRemoteHeld()Z

    move-result v7

    invoke-direct {v0, v8, v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)I

    move-result v15

    if-eq v15, v14, :cond_15b

    move/from16 v10, v27

    :cond_15b
    if-eqz v10, :cond_163

    if-nez p4, :cond_160

    goto :goto_163

    :cond_160
    move/from16 v7, v27

    goto :goto_164

    :cond_163
    :goto_163
    move v7, v14

    .line 1086
    :goto_164
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v10

    if-eqz v10, :cond_17c

    .line 1087
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result v10

    const/4 v14, 0x4

    if-eq v10, v14, :cond_17c

    const/16 v28, 0x1

    goto :goto_17e

    :cond_17c
    move/from16 v28, v7

    .line 1091
    :goto_17e
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v7

    if-eqz v7, :cond_18b

    const/4 v14, 0x1

    aget v7, v2, v14

    add-int/2addr v7, v14

    aput v7, v2, v14

    goto :goto_19c

    :cond_18b
    const/4 v14, 0x1

    .line 1094
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v8, v7, :cond_196

    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v7

    if-eqz v7, :cond_19c

    :cond_196
    const/4 v7, 0x2

    aget v10, v2, v7

    add-int/2addr v10, v14

    aput v10, v2, v7

    .line 1098
    :cond_19c
    :goto_19c
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->convertImsCallStateToDialogState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v18

    .line 1100
    new-instance v10, Lcom/sec/ims/Dialog;

    move-object v7, v10

    const-string v8, ""

    move/from16 v25, v15

    move-object v15, v8

    const-string v16, ""

    .line 1102
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v22

    const/16 v26, 0x0

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

    move/from16 v21, v25

    move/from16 v25, v28

    invoke-direct/range {v7 .. v26}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 1103
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

    .line 1105
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f5

    move-object/from16 v0, p3

    .line 1106
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f7

    :cond_1f5
    move-object/from16 v0, p3

    :goto_1f7
    aget v4, v2, v27

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v27

    goto :goto_200

    :cond_1fe
    move-object/from16 v0, p3

    :goto_200
    move-object/from16 v0, p0

    goto/16 :goto_15

    :cond_204
    return-object v2
.end method

.method public getCmcCallEstablishTime(Ljava/lang/String;)J
    .registers 6

    if-nez p1, :cond_e

    .line 874
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "callid is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getActiveCmcCallEstablishTime()J

    move-result-wide p0

    return-wide p0

    .line 877
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 879
    :try_start_16
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
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2a} :catch_2b

    goto :goto_50

    :catch_2b
    move-exception v0

    .line 881
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callId is not integer type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getActiveCmcCallEstablishTime()J

    move-result-wide p0

    return-wide p0

    .line 885
    :cond_47
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mCmcCallEstablishTimeMap is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    :goto_50
    return-wide p0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .registers 10

    .line 1655
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCmcCallInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineSlotIndex()I

    move-result v0

    .line 1659
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1661
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1662
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    if-lez v5, :cond_25

    .line 1663
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_46

    move v2, v5

    goto :goto_47

    :cond_46
    move v2, v6

    .line 1664
    :goto_47
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v7, v8, :cond_51

    move v4, v5

    goto :goto_99

    .line 1666
    :cond_51
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_96

    .line 1667
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v7, :cond_62

    goto :goto_96

    .line 1669
    :cond_62
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_84

    .line 1670
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_84

    .line 1671
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_84

    .line 1672
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_84

    const/4 v4, 0x3

    goto :goto_99

    .line 1674
    :cond_84
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v7, :cond_99

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v3

    if-eqz v3, :cond_99

    :cond_96
    :goto_96
    move v4, v6

    goto :goto_99

    :cond_98
    move v2, v4

    :cond_99
    :goto_99
    if-nez v4, :cond_a2

    .line 1681
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    const/16 v3, 0x1777

    if-ne p0, v3, :cond_a2

    const/4 v4, 0x4

    .line 1685
    :cond_a2
    new-instance p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    invoke-direct {p0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;-><init>()V

    .line 1686
    invoke-virtual {p0, v0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setLineSlotId(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1687
    invoke-virtual {p0, v2}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setCmcType(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1688
    invoke-virtual {p0, v4}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setCallState(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1689
    invoke-virtual {p0, v1}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setPdDeviceId(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1690
    invoke-virtual {p0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->build()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCmcPdRegPhoneId()I
    .registers 4

    .line 1580
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v0, :cond_6

    .line 1581
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1582
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 1583
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    return p0

    :cond_36
    const/4 p0, -0x1

    return p0
.end method

.method public getCmcRegistration(I)Lcom/sec/ims/ImsRegistration;
    .registers 4

    .line 1570
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 1571
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 1572
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

    .line 1573
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;
    .registers 6

    .line 1554
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v0, :cond_6

    .line 1555
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_28

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1556
    :cond_28
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-ne v1, p2, :cond_6

    .line 1557
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-ne v1, p3, :cond_6

    .line 1558
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_49
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCsCallPhoneIdByState(I)I
    .registers 7

    .line 541
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCsCallPhoneIdByState state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6d

    .line 543
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 544
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 545
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PublishDialog;

    .line 547
    invoke-virtual {v0}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v2

    .line 548
    invoke-virtual {v0}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v0

    const/4 v3, 0x0

    :goto_4d
    if-ge v3, v2, :cond_28

    .line 550
    aget v4, v0, v3

    if-ne v4, p1, :cond_6a

    .line 551
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

    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 557
    :cond_6d
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "external CS call is not found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .registers 5

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 261
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_f

    move-object v0, v1

    goto :goto_f

    :cond_23
    return-object v0
.end method

.method public getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .registers 6

    .line 272
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 273
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_f

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-ne v2, p2, :cond_f

    move-object v0, v1

    goto :goto_f

    :cond_29
    return-object v0
.end method

.method public getSessionCountByCmcType(II)I
    .registers 6

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 321
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 323
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 324
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_f

    .line 325
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-ne v1, p2, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_34
    return v0
.end method

.method getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I
    .registers 6

    if-eqz p2, :cond_25

    .line 904
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    .line 905
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    .line 906
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curCmcType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result p0

    return p0

    .line 909
    :cond_25
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "curReg null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1697
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_130

    goto/16 :goto_12f

    .line 1741
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1742
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;

    .line 1743
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Received EVT_CMC_INFO_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcRecordingInfo(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V

    goto/16 :goto_12f

    .line 1737
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcHandoverTimerExpired(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_12f

    .line 1699
    :pswitch_24
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkPdAvailability(ILandroid/os/Bundle;)V

    goto/16 :goto_12f

    .line 1703
    :pswitch_2f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1704
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 1705
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

    .line 1707
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 1710
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    .line 1712
    :goto_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optionEvent regi handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cmcType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 1715
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    goto/16 :goto_12f

    .line 1716
    :cond_94
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 1717
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 1718
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 1719
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12f

    .line 1721
    :cond_c0
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

    .line 1722
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1723
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_f3

    .line 1725
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1726
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    :cond_f3
    const/16 p1, 0xc8

    .line 1728
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    goto :goto_12f

    :cond_f8
    const-string p0, "CmcPdCheckTimer is not running"

    .line 1731
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    .line 1748
    :pswitch_fe
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1749
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 1750
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

    .line 1752
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    aget-object p0, p0, p1

    .line 1754
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/internal/google/SecImsNotifier;->onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V

    :cond_12f
    :goto_12f
    return-void

    :pswitch_data_130
    .packed-switch 0x1f
        :pswitch_fe
        :pswitch_2f
        :pswitch_24
        :pswitch_1b
        :pswitch_7
    .end packed-switch
.end method

.method public hasActiveCmcCallsession(I)Z
    .registers 5

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 294
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_40

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 p0, 0x1

    return p0

    :cond_5e
    const/4 p0, 0x0

    return p0
.end method

.method hasDialingOrIncomingCall()Z
    .registers 3

    .line 1269
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1270
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1271
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_1a

    :cond_19
    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method hasInternalCallToIgnorePublishDialog(I)Z
    .registers 6

    .line 1157
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_f

    const/4 v2, -0x1

    if-eq p1, v2, :cond_27

    .line 1158
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_27

    goto :goto_f

    .line 1162
    :cond_27
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1164
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1165
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1166
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_5c

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_5c

    .line 1167
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_f

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_f

    :cond_5c
    const/4 v0, 0x1

    goto :goto_f

    :cond_5e
    return v0
.end method

.method public init()V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v1, 0x23

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public isCallServiceAvailableOnSecondary(ILjava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x2

    :goto_1
    const/16 v1, 0x8

    if-gt v0, v1, :cond_33

    .line 1229
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz p3, :cond_30

    if-eqz v1, :cond_30

    .line 1231
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

    .line 1232
    invoke-virtual {v1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_30
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1235
    :cond_33
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "disallow Call Service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isCmcRegExist(I)Z
    .registers 5

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v1, :cond_7

    .line 306
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_29

    .line 307
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 308
    :cond_29
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 309
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_3b
    return v0
.end method

.method isInP2pArea(Lcom/sec/ims/ImsRegistration;)Z
    .registers 7

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_95

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_95

    .line 518
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_86

    .line 519
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

    .line 520
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PD deviceId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_95

    .line 523
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 524
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 525
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2p deviceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string p0, "PD and SD are in P2P area"

    .line 527
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 532
    :cond_86
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p0

    if-eqz p0, :cond_95

    return v2

    :cond_95
    const/4 p0, 0x0

    return p0
.end method

.method isNeedDelayToSendPublishDialog(I)Z
    .registers 6

    .line 1179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_f

    const/4 v2, -0x1

    if-eq p1, v2, :cond_27

    .line 1180
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_27

    goto :goto_f

    .line 1184
    :cond_27
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1186
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1187
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 1188
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_f

    move v0, v3

    goto :goto_f

    :cond_44
    return v0
.end method

.method isP2pDiscoveryDone()Z
    .registers 1

    .line 509
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    return p0
.end method

.method onCallEndedWithSendPublish(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .registers 13

    .line 1346
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1350
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x7

    goto :goto_13

    :cond_12
    const/4 v0, 0x5

    :goto_13
    const/4 v1, 0x1

    move v2, v1

    :goto_15
    if-gt v2, v0, :cond_b8

    const/4 v3, 0x0

    .line 1356
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    .line 1358
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1359
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    if-eqz v5, :cond_2c

    move v5, v1

    goto :goto_2d

    :cond_2c
    move v5, v3

    :goto_2d
    if-eqz v6, :cond_31

    add-int/lit8 v5, v5, 0x1

    :cond_31
    if-eqz v4, :cond_82

    if-eqz p2, :cond_82

    .line 1363
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    if-nez v6, :cond_82

    .line 1364
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v3

    .line 1365
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_51
    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1366
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v8

    if-ne v8, v2, :cond_51

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v8

    if-eq v8, v3, :cond_51

    .line 1367
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v8, v9, :cond_79

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v7, v8, :cond_51

    :cond_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_7c
    if-nez v5, :cond_b4

    .line 1372
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_b4

    :cond_82
    if-eqz v4, :cond_b4

    if-eqz p2, :cond_b4

    .line 1374
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    if-ne v6, v2, :cond_b4

    .line 1375
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveExtCallCount()I

    move-result v6

    if-lez v6, :cond_a5

    if-nez v5, :cond_a5

    .line 1376
    iget-boolean v5, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    if-eqz v5, :cond_a2

    .line 1378
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v5

    const/16 v6, 0x1777

    if-ne v5, v6, :cond_a5

    .line 1379
    :cond_a2
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 1382
    :cond_a5
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    if-ne v4, v1, :cond_b4

    .line 1383
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    const-string v5, "99991111222"

    invoke-virtual {p0, v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendCmcCallStateForRcs(ILjava/lang/String;Z)V

    :cond_b4
    :goto_b4
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_15

    :cond_b8
    if-eqz p2, :cond_ca

    .line 1388
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 1389
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    :cond_ca
    return-void
.end method

.method public onCmcDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V
    .registers 6

    .line 335
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCmcDtmfInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x7

    goto :goto_14

    :cond_13
    const/4 v0, 0x5

    :goto_14
    const/4 v1, 0x1

    :goto_15
    if-gt v1, v0, :cond_27

    .line 346
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 348
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCmcDtmfEvent(I)V

    :cond_24
    add-int/lit8 v1, v1, 0x2

    goto :goto_15

    :cond_27
    return-void
.end method

.method onCmcImsDialogEvent(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;
    .registers 12

    .line 1426
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_c6

    .line 1428
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->filterOngoingDialogFromDialogEvent(Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1430
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Filter DialogEvent"

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v1

    .line 1434
    :cond_14
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/Dialog;

    if-eqz v2, :cond_1c

    .line 1435
    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    goto :goto_34

    :cond_33
    move v4, v3

    .line 1441
    :goto_34
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_68

    .line 1442
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1443
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isP2pDiscoveryDone()Z

    move-result v1

    if-nez v1, :cond_57

    .line 1444
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Do not send OPTIONS until P2P discovery done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 1446
    :cond_57
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isInP2pArea(Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 1447
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "PD and SD are not in P2P area"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    goto :goto_69

    :cond_68
    move v3, v4

    :goto_69
    if-eqz v3, :cond_ac

    .line 1454
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

    .line 1455
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    goto :goto_be

    .line 1458
    :cond_ac
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No cofirmed Dilaog in nofity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    const/16 p1, 0xc8

    .line 1460
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    .line 1462
    :goto_be
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    aput-object p2, p0, p1

    :cond_c6
    return-object p2
.end method

.method public onCmcRecordingInfo(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V
    .registers 4

    .line 1546
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCmcRecordingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 1547
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1549
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCmcInfoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V

    :cond_13
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .registers 5

    .line 182
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

    .line 183
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-lez v0, :cond_4d

    .line 184
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v1, :cond_4d

    const-string/jumbo v1, "stop Nsd when deregistered"

    .line 185
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p2}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->stop()V

    .line 187
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->setP2pRegiInfo(Lcom/sec/ims/ImsRegistration;)V

    const/4 p2, 0x0

    .line 188
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 189
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 190
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 191
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    aget-object p2, p2, v1

    if-eqz p2, :cond_4d

    .line 193
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    :cond_4d
    const/4 p2, 0x2

    if-ne v0, p2, :cond_5b

    .line 197
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p1

    const/16 p2, 0x16

    if-ne p1, p2, :cond_5b

    .line 198
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_5b
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .registers 6

    .line 203
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

    .line 204
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    .line 205
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_43

    .line 206
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    if-eq v2, v3, :cond_43

    const-string v2, "onDeregistering: Send dummy publish dialog before deregistered"

    .line 207
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    :cond_43
    if-ne v1, v3, :cond_50

    .line 211
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p1

    const/16 v0, 0x16

    if-ne p1, v0, :cond_50

    .line 212
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_50
    return-void
.end method

.method onImsCallEventWhenEstablished(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .registers 11

    .line 1279
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x7

    goto :goto_d

    :cond_c
    const/4 v0, 0x5

    :goto_d
    const/4 v1, 0x1

    move v2, v1

    :goto_f
    if-gt v2, v0, :cond_6c

    const/4 v3, 0x0

    .line 1286
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_69

    .line 1287
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    if-nez v5, :cond_69

    .line 1289
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 1291
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1292
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_37

    move v3, v1

    :cond_37
    if-nez v3, :cond_69

    .line 1296
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_69

    .line 1300
    :cond_3d
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1301
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_69

    .line 1303
    :cond_4b
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I

    move-result v3

    .line 1304
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_66

    .line 1305
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    if-eq v5, v1, :cond_66

    if-le v3, v1, :cond_69

    .line 1307
    :cond_66
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x2

    goto :goto_f

    :cond_6c
    return-void
.end method

.method onImsCallEventWithHeldBoth(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .registers 10

    if-eqz p2, :cond_3b

    .line 1317
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    .line 1321
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x7

    goto :goto_13

    :cond_12
    const/4 v0, 0x5

    :goto_13
    const/4 v1, 0x1

    move v2, v1

    :goto_15
    if-gt v2, v0, :cond_3b

    const/4 v3, 0x0

    .line 1328
    invoke-virtual {p0, p2, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 1329
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    if-nez v5, :cond_38

    .line 1331
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 1333
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_33

    move v3, v1

    :cond_33
    if-nez v3, :cond_38

    .line 1338
    invoke-virtual {p0, p2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_38
    add-int/lit8 v2, v2, 0x2

    goto :goto_15

    :cond_3b
    return-void
.end method

.method onImsIncomingCallEvent(II)V
    .registers 10

    .line 1244
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x7

    goto :goto_d

    :cond_c
    const/4 v0, 0x5

    :goto_d
    const/4 v1, 0x1

    move v2, v1

    :goto_f
    if-gt v2, v0, :cond_35

    const/4 v3, 0x0

    .line 1250
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_32

    if-nez p2, :cond_32

    .line 1253
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1254
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    if-eqz v5, :cond_29

    move v3, v1

    :cond_29
    if-eqz v6, :cond_2d

    add-int/lit8 v3, v3, 0x1

    :cond_2d
    if-nez v3, :cond_32

    .line 1259
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_32
    add-int/lit8 v2, v2, 0x2

    goto :goto_f

    :cond_35
    if-lez p2, :cond_42

    .line 1264
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getRegiEventNotifyHostInfo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    :cond_42
    return-void
.end method

.method public onRegEventContactUriNotification(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 218
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 219
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 220
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

    .line 222
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    .line 224
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_42

    .line 225
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    if-lez v2, :cond_42

    if-eq v2, v0, :cond_42

    const-string/jumbo v0, "send Publish when registered"

    .line 226
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->handlePublishDialog(Lcom/sec/ims/ImsRegistration;)V

    :cond_42
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 7

    .line 145
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    .line 146
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 147
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_28

    .line 148
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->setP2pRegiInfo(Lcom/sec/ims/ImsRegistration;)V

    :cond_28
    const/4 p1, 0x0

    .line 151
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    goto/16 :goto_a4

    .line 152
    :cond_2d
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v1, :cond_a4

    .line 155
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "do cmc handover"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 159
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 161
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 162
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->makeReplaceProfile(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 164
    :try_start_5a
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    .line 165
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 166
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->replaceRegistrationInfo(Lcom/sec/ims/ImsRegistration;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_6c} :catch_6d

    goto :goto_a4

    :catch_6d
    move-exception p1

    .line 168
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    .line 169
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a4

    .line 174
    :cond_75
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

    .line 175
    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a4
    :goto_a4
    return-void
.end method

.method sendCmcCallStateForRcs(ILjava/lang/String;Z)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1395
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 1397
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendCmcCallStateForRcs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.samsung.rcs.CALL_STATE_CHANGED"

    .line 1399
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_IS_INCOMING"

    .line 1400
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "EXTRA_TEL_NUMBER"

    .line 1401
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXTRA_PHONE_ID"

    .line 1402
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_31

    const/4 p1, 0x2

    goto :goto_32

    :cond_31
    move p1, v1

    :goto_32
    const-string p2, "EXTRA_CALL_EVENT"

    .line 1403
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_IS_CMC_CALL"

    .line 1404
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "EXTRA_IS_CMC_CONNECTED"

    .line 1405
    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1406
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_46
    return-void
.end method

.method public sendDummyPublishDialog(II)V
    .registers 7

    .line 239
    new-instance v0, Lcom/android/internal/telephony/PublishDialog;

    invoke-direct {v0}, Lcom/android/internal/telephony/PublishDialog;-><init>()V

    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->setCallCount(I)V

    const/16 v2, 0x270f

    .line 241
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallId(I)V

    const/16 v2, 0x9

    .line 242
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallDomain(I)V

    const/4 v2, 0x0

    .line 243
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallStatus(I)V

    .line 244
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    .line 245
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallDirection(I)V

    const-string v3, ""

    .line 246
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->addCallPullable(Z)V

    .line 248
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallNumberPresentation(I)V

    .line 249
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapNamePresentation(I)V

    .line 250
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallMpty(Z)V

    const-wide/16 v1, 0x0

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PublishDialog;->addConnectedTime(J)V

    .line 253
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    return-void
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V
    .registers 58

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p3

    .line 563
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v13

    .line 564
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallId()[I

    move-result-object v12

    .line 565
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallDomain()[I

    move-result-object v11

    .line 566
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v21

    .line 567
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallType()[I

    move-result-object v22

    .line 568
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallDirection()[I

    move-result-object v23

    .line 569
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallRemoteUri()[Ljava/lang/String;

    move-result-object v24

    .line 570
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallPullable()[Z

    move-result-object v1

    .line 571
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallNumberPresentation()[I

    move-result-object v25

    .line 572
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getConnectedTime()[J

    move-result-object v2

    .line 573
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallMpty()[Z

    move-result-object v26

    .line 575
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_60f

    .line 580
    array-length v3, v12

    const/4 v7, 0x1

    if-lt v3, v7, :cond_60f

    if-eqz v11, :cond_60f

    array-length v3, v11

    if-ge v3, v7, :cond_44

    goto/16 :goto_60f

    :cond_44
    const/4 v6, 0x0

    .line 585
    aget v3, v11, v6

    const/4 v5, 0x3

    const/4 v4, 0x2

    if-ne v3, v7, :cond_d8

    .line 587
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 588
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v3

    .line 589
    aget v9, v21, v6

    if-ne v9, v5, :cond_76

    aget v3, v3, v6

    if-eq v9, v3, :cond_76

    goto :goto_74

    .line 594
    :cond_70
    aget v3, v21, v6

    if-ne v3, v5, :cond_76

    :goto_74
    move v3, v7

    goto :goto_77

    :cond_76
    move v3, v6

    :goto_77
    if-eqz v3, :cond_91

    .line 600
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v0, v14, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_91

    .line 602
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Send 180 Ringing msg for CMC CS call."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-interface {v9, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->handleCmcCsfb(I)I

    .line 607
    :cond_91
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v6

    move v9, v3

    :goto_9e
    if-ge v3, v13, :cond_ad

    .line 611
    aget v10, v21, v3

    invoke-static {v10}, Lcom/sec/internal/helper/ImsCallUtil;->convertCsCallStateToDialogState(I)I

    move-result v10

    if-ne v10, v4, :cond_aa

    add-int/lit8 v9, v9, 0x1

    :cond_aa
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 615
    :cond_ad
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mExtConfirmedCsCallCnt: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", extConfirmedCsCallCnt: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    if-eq v3, v9, :cond_d6

    .line 617
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {v3, v15, v9}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->updateCmcExtCallCount(II)I

    .line 619
    :cond_d6
    iput v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    .line 623
    :cond_d8
    invoke-virtual {v0, v15, v6, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v27

    if-nez v27, :cond_df

    return-void

    .line 628
    :cond_df
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    move v3, v6

    :goto_e5
    const-string v5, ","

    if-ge v3, v13, :cond_161

    .line 630
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v12, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v11, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v21, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v22, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v23, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v25, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v10, v26, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v2, v3

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x70000001

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 633
    aget v4, v21, v3

    if-ne v4, v7, :cond_15d

    .line 634
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    aget v5, v12, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-wide v9, v2, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15d
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    goto :goto_e5

    .line 638
    :cond_161
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasInternalCallToIgnorePublishDialog(I)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 639
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ignore sendPublishDialog : PD has internal call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 643
    :cond_16f
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isNeedDelayToSendPublishDialog(I)Z

    move-result v28

    .line 645
    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v29

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 648
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 649
    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-eqz v1, :cond_1a1

    move v9, v6

    .line 651
    :goto_194
    array-length v10, v1

    if-ge v9, v10, :cond_1a1

    .line 652
    aget-boolean v10, v1, v9

    if-nez v10, :cond_19e

    .line 653
    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    goto :goto_1a1

    :cond_19e
    add-int/lit8 v9, v9, 0x1

    goto :goto_194

    :cond_1a1
    :goto_1a1
    move v1, v6

    move v9, v1

    move v10, v9

    move/from16 v31, v10

    move/from16 v30, v7

    :goto_1a8
    const-string v6, ";gr="

    if-ge v10, v13, :cond_461

    const-string/jumbo v19, "test_local_tag"

    const-string/jumbo v32, "test_remote_tag"

    .line 684
    sget-object v7, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    move-object/from16 p2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v5

    const-string v5, "[CallInfo #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] callId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v12, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", domain: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v11, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callState: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v21, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v22, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callDirections: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v23, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", remoteUris: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v24, v10

    .line 685
    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cmcType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", phoneId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    aget v3, v11, v10

    const/4 v5, 0x2

    if-ne v3, v5, :cond_24f

    .line 690
    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-eq v2, v3, :cond_24c

    .line 691
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Trying call sendPublishDialogInternal(). CmcTotalMnoPullable changed : %s ==> %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v0, v15, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(II)V

    move-object/from16 v49, p2

    move-object/from16 v48, v4

    move-object v15, v8

    move-object/from16 v32, v11

    move/from16 v53, v13

    move-object/from16 v50, v34

    goto/16 :goto_46c

    :cond_24c
    move/from16 v35, v2

    goto :goto_2bf

    :cond_24f
    if-eq v3, v5, :cond_3b4

    .line 699
    aget v3, v12, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v35, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 704
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v2

    aget-object v2, v24, v10

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 706
    aget v6, v25, v10

    move-object/from16 v36, v2

    const/4 v2, 0x2

    if-ne v6, v2, :cond_2a6

    const-string v2, "anonymous"

    goto :goto_2a8

    .line 709
    :cond_2a6
    aget-object v2, v24, v10

    .line 712
    :goto_2a8
    aget v6, v23, v10

    .line 713
    aget v37, v21, v10

    invoke-static/range {v37 .. v37}, Lcom/sec/internal/helper/ImsCallUtil;->convertCsCallStateToDialogState(I)I

    move-result v37

    move-object/from16 v38, v2

    .line 715
    aget v2, v22, v10

    move-object/from16 v39, v3

    const/16 v3, 0x38f

    if-ne v2, v3, :cond_2d1

    const-string v2, "ignore publish dialog when call type is 911 (Emergency)"

    .line 716
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2bf
    move-object/from16 v49, p2

    move-object/from16 v48, v4

    move-object v15, v8

    move v0, v10

    move-object/from16 v32, v11

    move-object/from16 v36, v12

    move/from16 v53, v13

    move-object/from16 v50, v34

    :goto_2cd
    const/16 v34, 0x0

    goto/16 :goto_447

    .line 718
    :cond_2d1
    aget-boolean v3, v26, v10

    move-object/from16 v41, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_31a

    .line 720
    aget v2, v21, v10

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f0

    move-object/from16 v49, p2

    move-object v15, v8

    move v0, v10

    move-object/from16 v32, v11

    move-object/from16 v36, v12

    move/from16 v53, v13

    move-object/from16 v50, v34

    move-object/from16 v48, v41

    const/16 v30, 0x2

    :goto_2ed
    const/16 v31, 0x1

    goto :goto_2cd

    :cond_2f0
    if-eqz v2, :cond_309

    const/4 v3, 0x7

    if-eq v2, v3, :cond_309

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2fa

    goto :goto_309

    :cond_2fa
    move-object/from16 v49, p2

    move-object v15, v8

    move v0, v10

    move-object/from16 v32, v11

    move-object/from16 v36, v12

    move/from16 v53, v13

    move-object/from16 v50, v34

    move-object/from16 v48, v41

    goto :goto_2ed

    :cond_309
    :goto_309
    move-object/from16 v49, p2

    move-object v15, v8

    move v0, v10

    move-object/from16 v32, v11

    move-object/from16 v36, v12

    move/from16 v53, v13

    move-object/from16 v50, v34

    move-object/from16 v48, v41

    const/16 v30, 0x0

    goto :goto_2ed

    :cond_31a
    if-eqz v2, :cond_357

    const/16 v3, 0x38f

    if-ne v2, v3, :cond_326

    move v4, v3

    move-object/from16 v16, v5

    const/4 v3, 0x3

    const/4 v5, 0x1

    goto :goto_35d

    :cond_326
    const/4 v4, 0x1

    if-eq v2, v4, :cond_339

    const/4 v3, 0x2

    if-eq v2, v3, :cond_339

    const/4 v3, 0x3

    if-ne v2, v3, :cond_330

    goto :goto_33a

    :cond_330
    move-object/from16 v16, v5

    const/4 v2, 0x0

    const/16 v33, 0x0

    const/16 v40, 0x0

    move v5, v4

    goto :goto_371

    :cond_339
    const/4 v3, 0x3

    :goto_33a
    if-eq v2, v4, :cond_347

    const/4 v4, 0x2

    if-eq v2, v4, :cond_345

    if-eq v2, v3, :cond_343

    const/4 v2, 0x0

    goto :goto_348

    :cond_343
    const/4 v2, 0x2

    goto :goto_348

    :cond_345
    const/4 v2, 0x4

    goto :goto_348

    :cond_347
    move v2, v3

    .line 754
    :goto_348
    aget v4, v21, v10

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_355

    move/from16 v33, v3

    move/from16 v40, v33

    const/4 v4, 0x0

    goto :goto_371

    :cond_355
    const/4 v4, 0x0

    goto :goto_36d

    :cond_357
    move-object/from16 v16, v5

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x38f

    :goto_35d
    if-ne v2, v4, :cond_361

    const/4 v4, 0x7

    goto :goto_362

    :cond_361
    move v4, v5

    .line 733
    :goto_362
    aget v2, v21, v10

    if-ne v2, v5, :cond_36b

    move/from16 v33, v3

    move v2, v4

    move v4, v5

    goto :goto_36f

    :cond_36b
    move v2, v4

    move v4, v5

    :goto_36d
    const/16 v33, 0x0

    :goto_36f
    const/16 v40, 0x0

    .line 766
    :goto_371
    aget v3, v21, v10

    if-ne v3, v5, :cond_37b

    move/from16 v17, v4

    move/from16 v45, v5

    const/4 v4, 0x2

    goto :goto_387

    :cond_37b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_383

    move/from16 v45, v4

    const/16 v17, 0x0

    goto :goto_387

    :cond_383
    const/16 v17, 0x0

    const/16 v45, 0x0

    :goto_387
    if-eqz v17, :cond_390

    .line 775
    iget-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-nez v4, :cond_38e

    goto :goto_390

    :cond_38e
    const/4 v4, 0x0

    goto :goto_391

    :cond_390
    :goto_390
    move v4, v5

    :goto_391
    if-eqz v3, :cond_39a

    const/4 v5, 0x7

    if-eq v3, v5, :cond_39a

    const/16 v5, 0x8

    if-ne v3, v5, :cond_39c

    :cond_39a
    add-int/lit8 v9, v9, 0x1

    :cond_39c
    add-int/lit8 v1, v1, 0x1

    move/from16 v42, v2

    move/from16 v47, v4

    move-object/from16 v3, v20

    move/from16 v43, v33

    move-object/from16 v2, v39

    move-object v4, v2

    move/from16 v46, v40

    move/from16 v33, v1

    move/from16 v40, v6

    move/from16 v39, v37

    move/from16 v37, v9

    goto :goto_3d8

    :cond_3b4
    move/from16 v35, v2

    move-object/from16 v41, v4

    const-string v2, ""

    const-string v3, "primary_device_dialog_id"

    move/from16 v33, v1

    move-object v4, v2

    move-object/from16 v16, v4

    move-object/from16 v36, v16

    move-object/from16 v38, v36

    move/from16 v37, v9

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object v2, v3

    move-object/from16 v3, v38

    .line 785
    :goto_3d8
    new-instance v6, Lcom/sec/ims/Dialog;

    move-object v1, v6

    const-string v9, ""

    const-string v5, ""

    move v0, v10

    move-object v10, v5

    const/16 v20, 0x0

    move-object/from16 v5, p2

    const/16 v44, 0x3

    move-object/from16 v48, v41

    const/16 v17, 0x1

    move-object/from16 v49, v5

    move-object/from16 v50, v34

    move-object/from16 v5, v19

    move-object/from16 p2, v6

    const/16 v34, 0x0

    move-object/from16 v6, v32

    move-object/from16 v51, v7

    move-object/from16 v7, v16

    move-object/from16 v52, v8

    move-object/from16 v8, v36

    move-object/from16 v32, v11

    move-object/from16 v11, v38

    move-object/from16 v36, v12

    move/from16 v12, v39

    move/from16 v53, v13

    move/from16 v13, v40

    move/from16 v14, v42

    move/from16 v15, v45

    move/from16 v16, p1

    move/from16 v17, v43

    move/from16 v18, v46

    move/from16 v19, v47

    invoke-direct/range {v1 .. v20}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v51

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    move-object/from16 v15, v52

    .line 789
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v33

    move/from16 v9, v37

    :goto_447
    add-int/lit8 v10, v0, 0x1

    move-object/from16 v0, p0

    move/from16 v14, p3

    move-object v8, v15

    move-object/from16 v11, v32

    move/from16 v2, v35

    move-object/from16 v12, v36

    move-object/from16 v4, v48

    move-object/from16 v3, v49

    move-object/from16 v5, v50

    move/from16 v13, v53

    const/4 v7, 0x1

    move/from16 v15, p1

    goto/16 :goto_1a8

    :cond_461
    move-object/from16 v49, v3

    move-object/from16 v48, v4

    move-object/from16 v50, v5

    move-object v15, v8

    move-object/from16 v32, v11

    move/from16 v53, v13

    :goto_46c
    const/16 v34, 0x0

    .line 792
    aget v0, v32, v34

    const/4 v2, 0x2

    if-eq v0, v2, :cond_519

    move/from16 v0, v53

    if-lt v0, v2, :cond_519

    if-eqz v31, :cond_519

    const-string/jumbo v5, "test_local_tag"

    const-string/jumbo v0, "test_remote_tag"

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v48

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 800
    aget v4, v22, v34

    const/4 v14, 0x1

    if-eq v4, v14, :cond_4af

    if-eq v4, v2, :cond_4af

    const/4 v2, 0x3

    if-ne v4, v2, :cond_4a9

    goto :goto_4b0

    :cond_4a9
    const/4 v2, 0x5

    move/from16 v16, v2

    move/from16 v18, v34

    goto :goto_4b5

    :cond_4af
    const/4 v2, 0x3

    :goto_4b0
    const/4 v4, 0x6

    move/from16 v18, v2

    move/from16 v16, v4

    :goto_4b5
    const/16 v17, 0x3

    if-nez v30, :cond_4bb

    add-int/lit8 v9, v9, 0x1

    :cond_4bb
    move/from16 v21, v9

    add-int/lit8 v22, v1, 0x1

    .line 814
    new-instance v6, Lcom/sec/ims/Dialog;

    move-object v1, v6

    const-string v2, "999"

    const-string v4, "999"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Conference call"

    const-string v9, ""

    const-string v10, ""

    const-string v11, "Conference call"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 p2, v6

    move-object v6, v0

    move v0, v14

    move/from16 v14, v16

    move-object v0, v15

    move/from16 v15, v30

    move/from16 v16, p1

    invoke-direct/range {v1 .. v20}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 818
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

    .line 819
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v9, v21

    move/from16 v1, v22

    goto :goto_51a

    :cond_519
    move-object v0, v15

    .line 825
    :goto_51a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v49

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_536
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/Dialog;

    sub-int v6, v1, v9

    const/4 v7, 0x1

    if-le v6, v7, :cond_54a

    .line 830
    invoke-virtual {v5, v7}, Lcom/sec/ims/Dialog;->setIsExclusive(Z)V

    .line 832
    :cond_54a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_536

    :cond_55e
    const/4 v7, 0x1

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</dialog-info>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 838
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-object/from16 v3, p0

    move/from16 v5, p3

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_57d

    goto :goto_57f

    :cond_57d
    move/from16 v7, v34

    .line 842
    :goto_57f
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cmcPdCallCnt: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", extCsCallCount: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endedCallCnt: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-direct {v3, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isDuplicatedPublishDialog(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b2

    aget v1, v32, v34

    const/16 v2, 0x9

    if-eq v1, v2, :cond_5b2

    return-void

    :cond_5b2
    if-nez v7, :cond_60e

    .line 848
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_60e

    .line 849
    iget-object v2, v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const-string v5, "displayName"

    const/16 v7, 0x1770

    move/from16 v3, v29

    move/from16 v8, v28

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 850
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5cb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/Dialog;

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v50

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x70000002

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_5cb

    :cond_60e
    return-void

    .line 581
    :cond_60f
    :goto_60f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ignore sendPublishDialog : Array parameters are empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendPublishDialogInternal(II)V
    .registers 3

    .line 859
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 861
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_9
    return-void
.end method

.method sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V
    .registers 4

    const/4 v0, 0x0

    .line 942
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;Z)V

    return-void
.end method

.method sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;Z)V
    .registers 15

    .line 946
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPublishDialogInternal()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_15

    const-string p0, "Ignore sendPublishDialogInternal : PD is not registered"

    .line 954
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const/4 v2, 0x0

    .line 958
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_74

    .line 960
    sget-object v5, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    if-ne v5, v3, :cond_74

    .line 961
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 963
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 964
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    const-string v6, "*77"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 965
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

    if-nez v3, :cond_6e

    if-eqz v5, :cond_74

    :cond_6e
    const-string p0, "Ignore sendPublishDialogInternal in two phone mode"

    .line 967
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 974
    :cond_74
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 977
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCallCountForSendPublishDialog(ILcom/sec/ims/ImsRegistration;Ljava/util/List;Z)[I

    move-result-object p1

    .line 978
    aget p2, p1, v2

    .line 979
    aget v2, p1, v4

    const/4 v5, 0x2

    .line 980
    aget p1, p1, v5

    .line 984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\">\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 987
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_108

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/Dialog;

    sub-int v8, p2, p1

    if-le v8, v4, :cond_c8

    .line 989
    invoke-virtual {v7, v4}, Lcom/sec/ims/Dialog;->setIsExclusive(Z)V

    .line 991
    :cond_c8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 992
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x70000003

    invoke-static {v8, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_b5

    .line 994
    :cond_108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</dialog-info>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 996
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

    .line 998
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_150

    .line 999
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const-string v4, "displayName"

    const/16 v6, 0x1770

    move v2, v0

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    :cond_150
    return-void
.end method

.method public setCallEstablishTimeExtra(J)V
    .registers 4

    .line 867
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
    .registers 2

    .line 513
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    return-void
.end method

.method public setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 477
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set lineId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_3a

    .line 480
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->setServiceInfo(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    :cond_3a
    return-void
.end method

.method startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V
    .registers 5

    .line 1590
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v0, :cond_c

    .line 1591
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "already start cmc handover timer"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1594
    :cond_c
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cmc handover timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x22

    .line 1596
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1597
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
    .registers 10

    .line 1468
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1470
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCmcPdCheckTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "reg_id"

    .line 1472
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p4, "uri"

    .line 1473
    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "is_first_check"

    .line 1474
    invoke-virtual {v0, p4, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1475
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p4

    const/16 p5, 0x21

    const/4 p6, -0x1

    .line 1476
    invoke-virtual {p0, p5, p1, p6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p5

    .line 1477
    iget-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p6, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0, p5, p2, p3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method public startP2p(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 465
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-nez v0, :cond_42

    .line 466
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p lineId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p deviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 469
    new-instance p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    .line 471
    :cond_42
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "start Nsd"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->start()V

    return-void
.end method

.method public startP2pDiscovery(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_39

    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startDiscovery(Landroid/os/Handler;ILjava/util/ArrayList;)I

    move-result p0

    .line 459
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

    :cond_39
    return-void
.end method

.method public stopCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V
    .registers 5

    .line 1601
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v0, :cond_3e

    if-nez p1, :cond_a

    .line 1603
    iget-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    .line 1605
    :cond_a
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

    .line 1606
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 1607
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1608
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1609
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_3e
    return-void
.end method

.method protected stopCmcPdCheckTimer(I)V
    .registers 5

    .line 1483
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 1486
    :cond_d
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

    .line 1488
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 1489
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;

    .line 1490
    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method updateAudioInterfaceByCmc(II)Lcom/sec/ims/ImsRegistration;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_26

    .line 1202
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_10

    const/4 v2, 0x7

    :cond_10
    const/4 p2, 0x1

    :goto_11
    if-gt p2, v2, :cond_37

    .line 1208
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1210
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    return-object v1

    :cond_23
    add-int/lit8 p2, p2, 0x2

    goto :goto_11

    :cond_26
    const/16 v2, 0x8

    if-ne p2, v2, :cond_37

    .line 1215
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAudioInterface for CMC SD call."

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    .line 1216
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    :cond_37
    return-object v1
.end method

.method updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .registers 8

    .line 486
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

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v1, :cond_94

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_94

    .line 488
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->printP2pList()V

    .line 489
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_89

    if-eqz p2, :cond_89

    .line 491
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4b

    .line 492
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4b

    const-string p1, "Do not set p2p list in case of CMC handover"

    .line 493
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 495
    :cond_4b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 497
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 499
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

    goto :goto_54

    .line 501
    :cond_86
    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setP2p(Ljava/util/List;)V

    .line 504
    :cond_89
    :goto_89
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getRegiEventNotifyHostInfo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    :cond_94
    return-void
.end method
