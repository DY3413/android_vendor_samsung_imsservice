.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;
.super Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
.source "NSDSModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$AirplaneModeObserver;
    }
.end annotation


# static fields
.field protected static final ACTION_CHECK_REG_STATE:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.CHECK_REG_STATE"

.field protected static final ACTION_E911_AID_EXP_CHECK_TIMEOUT:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.E911_AID_EXP_CHECK_TIMEOUT"

.field protected static final ACTION_REFRESH_DEVICE_INFO:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.ACTION_REFRESH_DEVICE_INFO"

.field protected static final ACTION_REFRESH_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.ACTION_REFRESH_ENTITLEMENT_CHECK"

.field protected static final ACTION_REFRESH_TOKEN:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.REFRESH_TOKEN"

.field private static final ACTION_RETRY_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.ACTION_RETRY_ENTITLEMENT_CHECK"

.field protected static final ACTION_SIM_DEVICE_ACTIVATION:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.ACTION_SIM_DEVICE_ACTIVATION"

.field protected static final ACTION_SVC_PROVISION_CHECK_RETRY_TIMEOUT:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.ACTION_SVC_PROVISION_CHECK_RETRY_TIMEOUT"

.field protected static final ACTION_SVC_PROVISION_CHECK_TIMEOUT:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.SVC_PROVISION_CHECK_TIMEOUT"

.field private static final INVALID_FINGERPRINT_EXPIRATION_TIME:J = 0x36ee80L

.field private static final MAX_LENGTH_MSISDN:I = 0xb

.field private static final REFRESH_TOKEN_WAIT_TIME:J = 0x1d4c0L

.field private static final RETRY_INTERVAL:J = 0x7530L

.field private static final RETRY_INTERVAL_AUTO_ON:J = 0x445c0L

.field private static sServiceLooper:Landroid/os/Looper;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected mAirplaneModeObserver:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$AirplaneModeObserver;

.field private mAkaTokenRetrievalFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/IAkaTokenRetrievalFlow;

.field private mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

.field protected mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field protected mEntitlementCheckFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mHandleSimSwapAfterDeviceIsReady:Z

.field protected mImsRegistratinListner:Lcom/sec/ims/IImsRegistrationListener$Stub;

.field protected mImsService:Lcom/sec/ims/IImsService;

.field private mInvalidFingerPrintDate:Ljava/util/Date;

.field private mIsAfterApm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mIsSimSupported:Z

.field protected mNSDSAppFlowReceiver:Landroid/content/BroadcastReceiver;

.field protected mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

.field protected mNSDSEventRequestReceiver:Landroid/content/BroadcastReceiver;

.field protected mNSDSSharedPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field protected mOnSimSwapEvt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPendindMsgsForSimSwapCompletion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mPushTokenUpdateFlow:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;

.field protected final mRegistrationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private mSIMDeviceActivationFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceImplicitActivation;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mSimSwapFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISimSwapFlow;

.field private mSvcProvCheckRetryCount:I

.field private mWfcAutoOnRetryCount:I


# direct methods
.method public static synthetic $r8$lambda$w5rGugTNjoczl9BZYDOfw_O0ols(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->lambda$scheduleGetGcmRegistrationTokenIfTokenNotSent$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBaseFlowImpl(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimManager(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSvcProvCheckRetryCount(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSvcProvCheckRetryCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcAutoOnRetryCount(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mWfcAutoOnRetryCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmInvalidFingerPrintDate(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mInvalidFingerPrintDate:Ljava/util/Date;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWfcAutoOnRetryCount(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mWfcAutoOnRetryCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastLinesReadyStatusUpdated(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->broadcastLinesReadyStatusUpdated(Ljava/util/ArrayList;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$meditRegiListOnRegistered(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->editRegiListOnRegistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableOrDisableNSDSService(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->enableOrDisableNSDSService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResultAfterConfigRetrieval(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->handleResultAfterConfigRetrieval(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResultAfterEntitlementCheck(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->handleResultAfterEntitlementCheck(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSimSwapEvent(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->handleSimSwapEvent(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDeviceReady(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->isDeviceReady()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mperformOnDeviceReadyIf(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performOnDeviceReadyIf()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformProceduresOnConfigRefreshComplete(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performProceduresOnConfigRefreshComplete()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueuePushTokenUpdateIf(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queuePushTokenUpdateIf()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueueSimDeviceActivation(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueSimDeviceActivation(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueueUpdateDeviceName(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueUpdateDeviceName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshEntitlementAndE911Info(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->refreshEntitlementAndE911Info(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveFromRegiListOnDeregistered(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->removeFromRegiListOnDeregistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleE911CheckTimer(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleE911CheckTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleNsdsAppFlowRetryIf(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleNsdsAppFlowRetryIf(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleRetryWFCAutoOnTimer(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleRetryWFCAutoOnTimer(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleServiceProvisionCheckTimer(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleServiceProvisionCheckTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateGcmPushTokenInDb(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->updateGcmPushTokenInDb()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsServiceLooper()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sServiceLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsUriMatcher()Landroid/content/UriMatcher;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 222
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.ims.nsds.provider"

    const-string v2, "nsds_configs"

    const/16 v3, 0x28

    .line 225
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "sim_swap_nsds_configs"

    const/16 v3, 0x47

    .line 226
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "settings"

    const-string v2, "global/device_name"

    const/16 v3, 0x4e

    .line 228
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "global/device_provisioned"

    const/16 v3, 0x4f

    .line 229
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 2

    .line 274
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;-><init>(Landroid/os/Looper;)V

    .line 88
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mOnSimSwapEvt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mIsAfterApm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mIsSimSupported:Z

    .line 130
    iput v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSvcProvCheckRetryCount:I

    .line 131
    iput v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mWfcAutoOnRetryCount:I

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mPendindMsgsForSimSwapCompletion:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mRegistrationList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSAppFlowReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSEventRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mInvalidFingerPrintDate:Ljava/util/Date;

    .line 145
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSSharedPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 207
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$2;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mImsRegistratinListner:Lcom/sec/ims/IImsRegistrationListener$Stub;

    .line 232
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContentObserver:Landroid/database/ContentObserver;

    .line 275
    sput-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sServiceLooper:Landroid/os/Looper;

    .line 276
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    .line 277
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 278
    new-instance p1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 280
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    invoke-direct {p1, p2, p3, v0}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Create "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    .line 285
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->initialize()V

    return-void
.end method

.method private broadcastLinesReadyStatusUpdated(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.LINES_READY_STATUS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "from_reg_status"

    .line 1442
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p2, "to_reg_status"

    .line 1443
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "msisdn_list"

    .line 1444
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1445
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private checkEntitlementReadyStatus()Z
    .locals 5

    .line 1146
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1148
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkEntitlementReadyStatus: mnoStrategy null"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1151
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->supportEntitlementCheck()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEntitlementReadyStatus: entitlement not required for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1155
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1156
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkEntitlementReadyStatus: entitlement in progress"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1159
    :cond_2
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isSIMDeviceActivationRequired()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 1160
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkEntitlementReadyStatus: device activation not required"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1164
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 1165
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v0, v2, v4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsUIAppSwitchOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1166
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkEntitlementReadyStatus: device cannot be inactive !!"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInActivationProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xb

    .line 1168
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueSimDeviceActivation(II)V

    :cond_4
    return v3
.end method

.method private checkSimReady()Z
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSimReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mIsSimSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-boolean p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mIsSimSupported:Z

    return p0
.end method

.method private clearActivationProgressState()V
    .locals 4

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInActivationProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clearActivationProgressState: SIM device"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_state"

    const-string v3, "deactivated"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clearActivationProgressState: Entitlement"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "entitlement_state"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private clearEntitlementServerUrl()V
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private connectImsService()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectImsService"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_0

    return-void

    .line 342
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.ImsService"

    .line 343
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$4;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$4;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    const/4 p0, 0x1

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, p0, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private deactivateDeviceIfNsdsServiceDisabled()V
    .locals 2

    .line 706
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 708
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Deactivating device since nsds service is disabled"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 710
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueSimDeviceDeactivation(I)V

    :cond_0
    return-void
.end method

.method private editRegiListOnRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 1350
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mRegistrationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    .line 1351
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1352
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mRegistrationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_3

    .line 1359
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mRegistrationList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1361
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mRegistrationList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private enableOrDisableNSDSService()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mOnSimSwapEvt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "add EVT_ENABLE_OR_DISABLE_SERVICE for sim swap complete:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mPendindMsgsForSimSwapCompletion:Ljava/util/List;

    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "enableOrDisableNSDSService: activate SIM device"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 380
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueSimDeviceActivation(II)V

    goto :goto_0

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->deactivateDeviceIfNsdsServiceDisabled()V

    :cond_2
    :goto_0
    return-void
.end method

.method private getGcmTokenFromServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 866
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getGcmRegistrationToken()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gcm_sender_id"

    .line 870
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "gcm_protocol_to_server"

    .line 871
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "device_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1340
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mRegistrationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMsisdnsFromImsRegistration(Lcom/sec/ims/ImsRegistration;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/ImsRegistration;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1423
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    .line 1424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 1426
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "+"

    .line 1428
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 1429
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1431
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-gt v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1432
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1436
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMsisdnsFromImsRegistration:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private handleResultAfterConfigRetrieval(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "request_status"

    const/4 v1, 0x0

    .line 467
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "device_event_type"

    .line 468
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "error_codes"

    .line 469
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 471
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResultAfterConfigRetrieval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " deviceEventType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCodes "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x516

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 475
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performProceduresOnConfigRefreshComplete()V

    :cond_0
    return-void
.end method

.method private handleResultAfterEntitlementCheck(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "device_event_type"

    const/4 v1, -0x1

    .line 1219
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "request_status"

    const/4 v2, 0x0

    .line 1220
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "error_codes"

    .line 1221
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1222
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResultAfterEntitlementCheck: eventType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " success "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " errors "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    if-ne v0, p1, :cond_5

    .line 1228
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleServiceProvisionCheckTimer()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    .line 1246
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleResultAfterEntitlementCheck: no retry"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1237
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleResultAfterEntitlementCheck: init retry count"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    iput v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSvcProvCheckRetryCount:I

    :cond_3
    if-eqz p1, :cond_5

    const/16 v0, 0x8fc

    .line 1241
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1242
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleServiceProvisionCheckRetryTimer()V

    goto :goto_0

    .line 1233
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleResultAfterEntitlementCheck: init e911AID check timer"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleE911CheckTimer()V

    :cond_5
    :goto_0
    return-void
.end method

.method private handleSimNotSupported()V
    .locals 2

    .line 1253
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearSimSwapPending(Landroid/content/Context;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mOnSimSwapEvt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1255
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->deleteNsdsConfigs(Ljava/lang/String;)V

    .line 1256
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->clear()V

    return-void
.end method

.method private handleSimSwapEvent(Ljava/lang/String;)V
    .locals 3

    .line 725
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimSwapEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 726
    iput-boolean p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mHandleSimSwapAfterDeviceIsReady:Z

    .line 727
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->stopForcedSimSwap()V

    .line 728
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performSimSwapFlow()V

    return-void
.end method

.method private initMnoBasedAppFlows()V
    .locals 7

    .line 773
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 775
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMnoBasedAppFlows: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->clearDeferredMessages()V

    .line 777
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-interface {v6}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getSimAuthenticationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->setSimAuthAppType(Ljava/lang/String;)V

    .line 778
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sServiceLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    move-object v0, v6

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getEntitlementCheckImpl(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;Landroid/os/Handler;)Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEntitlementCheckFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;

    .line 779
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sServiceLooper:Landroid/os/Looper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-interface {v6, v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getSimDeviceActivationImpl(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceImplicitActivation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSIMDeviceActivationFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceImplicitActivation;

    .line 780
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;

    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sServiceLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mAkaTokenRetrievalFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/IAkaTokenRetrievalFlow;

    goto :goto_0

    .line 782
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "initMnoBasedAppFlows: mnoStrategy is null"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initNsdsAppFlows()V
    .locals 5

    .line 308
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sServiceLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 309
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;

    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sServiceLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mPushTokenUpdateFlow:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;

    return-void
.end method

.method private initNsdsSharePref()V
    .locals 3

    .line 545
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    const-string v1, "ericsson.nsds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getSharedPref(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSSharedPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 551
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->clearActivationProgressState()V

    return-void
.end method

.method private initSimSwapFlow()V
    .locals 5

    .line 300
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "initSimSwapFlow()"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sServiceLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getSimSwapFlow(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISimSwapFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimSwapFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISimSwapFlow;

    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->initNsdsAppFlows()V

    .line 291
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->registerNsdsContentObserver()V

    .line 292
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->registerAirplaneModeObserver()V

    .line 293
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->registerNsdsEventQueueReceiver()V

    .line 294
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->registerNsdsAppFlowReceiver()V

    .line 296
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->connectImsService()V

    return-void
.end method

.method private isDeviceReady()Z
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$scheduleGetGcmRegistrationTokenIfTokenNotSent$0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "managePushToken"

    .line 677
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getGcmTokenFromServer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private markLineDeregisteredIfRemovedInRereg(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1409
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1410
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markLineDeregisteredIfRemovedInRereg: add to deleted list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1415
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1416
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    const/4 p2, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p2, v1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateRegistationStatusForLines(Ljava/util/List;III)V

    .line 1418
    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->broadcastLinesReadyStatusUpdated(Ljava/util/ArrayList;II)V

    :cond_2
    return-void
.end method

.method private notifySimErrorForDeviceActivation()V
    .locals 4

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x961

    .line 1054
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8ff

    .line 1055
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1059
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "request_status"

    const/4 v3, 0x0

    .line 1060
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "error_codes"

    .line 1061
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1062
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, v1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private notifySimErrorForEntitlementAndLocTc()V
    .locals 4

    .line 1066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x961

    .line 1067
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8ff

    .line 1068
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.nsds.action.ENTITLEMENT_AND_LOCTC_CHECK_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "request_status"

    const/4 v3, 0x0

    .line 1073
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "error_codes"

    .line 1074
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1075
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, v1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private onDeregistration(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 1449
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1450
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mRegistrationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 1458
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1459
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1460
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onDeregistration: abnormal deregistration, skip"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1466
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    const-string v3, "com.sec.vsim.ericssonnsds.CHECK_REG_STATE"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    .line 1468
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMsisdnsFromImsRegistration(Lcom/sec/ims/ImsRegistration;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1469
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistration: updated Msisdn list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateRegistationStatusForLines(II)V

    .line 1473
    invoke-direct {p0, p1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->broadcastLinesReadyStatusUpdated(Ljava/util/ArrayList;II)V

    return-void

    .line 1451
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onDeregistration: emergency deregistration, skip"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onFlightMode(I)V
    .locals 5

    .line 576
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFlightMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v3, :cond_1

    .line 579
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mIsAfterApm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 580
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->isDeviceReady()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    .line 581
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->refreshEntitlementAndE911Info(II)V

    .line 582
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mIsAfterApm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method private onRegistration(Lcom/sec/ims/ImsRegistration;)V
    .locals 9

    .line 1375
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1376
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const-string v2, "com.sec.vsim.ericssonnsds.CHECK_REG_STATE"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    .line 1385
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMsisdnsFromImsRegistration(Lcom/sec/ims/ImsRegistration;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1386
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getReadyForUseMsisdns(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1387
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistration: prevReadyForUseMsisdns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateRegistationStatusForLines(Ljava/util/List;III)V

    .line 1391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1393
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1394
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRegistration: add to added list:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1398
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1399
    invoke-direct {p0, v1, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->broadcastLinesReadyStatusUpdated(Ljava/util/ArrayList;II)V

    goto :goto_1

    .line 1401
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->markLineDeregisteredIfRemovedInRereg(Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void

    .line 1377
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onRegistration: emergency registration, skip"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private performAkaTokenRetrievalFlow(II)V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "performAkaTokenRetrievalFlow:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1099
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "NSDS is disabled, vail."

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Device was not activated, retrieve only aka token"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mAkaTokenRetrievalFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/IAkaTokenRetrievalFlow;

    if-eqz v0, :cond_1

    .line 1105
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/entitlement/nsds/IAkaTokenRetrievalFlow;->performAkaTokenRetrieval(II)V

    goto :goto_0

    .line 1107
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "performAkaTokenRetrievalFlow: flow not initiated, invalid request"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private performBootupProcedures()V
    .locals 3

    .line 1327
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 1330
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 1329
    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getOperationsForBootupInit(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1332
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1335
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "performBootupProcedures: mnoStrategy cannot be null !!!"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private performE911AddressUpdate(I)V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEntitlementCheckFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;

    if-eqz v0, :cond_0

    .line 1114
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;->performE911AddressUpdate(I)V

    goto :goto_0

    .line 1116
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "performE911AddressUpdate: flow not initiated, invalid request"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private performEntitlementCheck(II)V
    .locals 1

    .line 1136
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->checkEntitlementReadyStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEntitlementCheckFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;

    if-eqz v0, :cond_0

    .line 1138
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;->performEntitlementCheck(II)V

    goto :goto_0

    .line 1140
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "performEntitlementCheck: flow not initiated, invalid request"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private performOnDeviceReadyIf()V
    .locals 2

    .line 1290
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->checkSimReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SIM not supported..."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->handleSimNotSupported()V

    return-void

    .line 1295
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1297
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "MNO Strategy has failed to be initiated..."

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1300
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1301
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Waiting for OOBE setup complete..."

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1304
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->isDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1305
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mHandleSimSwapAfterDeviceIsReady:Z

    if-eqz v0, :cond_3

    .line 1306
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling case when simswap cache was ready but device was not ready at that time"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Device is Ready"

    .line 1307
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->handleSimSwapEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queuePerformBootupProcedures()V

    goto :goto_0

    .line 1312
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Device is still waiting to be ready..."

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private performProceduresOnConfigRefreshComplete()V
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mOnSimSwapEvt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "performProceduresOnConfigRefreshComplete: pending due to SIM swap"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mPendindMsgsForSimSwapCompletion:Ljava/util/List;

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "performProceduresOnConfigRefreshComplete"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 696
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 695
    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsUIAppSwitchOn(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "performProceduresOnConfigRefreshComplete: NSDS switch off"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 702
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleGetGcmRegistrationTokenIfTokenNotSent()V

    return-void
.end method

.method private performProcsOnSimSwapCompleted()V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mOnSimSwapEvt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 816
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "performProcsOnSimSwapCompleted()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->shouldIgnoreDeviceConfigValidity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleGetGcmRegistrationTokenIfTokenNotSent()V

    .line 822
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->checkSimReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mPendindMsgsForSimSwapCompletion:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mPendindMsgsForSimSwapCompletion:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 825
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "performProcsOnSimSwapCompleted: SIM not supported"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->handleSimNotSupported()V

    :cond_2
    return-void
.end method

.method private performSimDeviceDeactivationFlow(I)V
    .locals 4

    .line 1121
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sServiceLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getSimDeviceDeactivationImpl(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceDeactivation;

    move-result-object p0

    .line 1125
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceDeactivation;->deactivateDevice(I)V

    goto :goto_0

    .line 1127
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "performSimDeviceDeactivationFlow: mnoStrategy not initiated, invalid request"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private performSimDeviceImplicitActivation(II)V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "performSimDeviceImplicitActivation:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1082
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "NSDS is disabled, vail."

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1085
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Device was not activated, activate it."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleGetGcmRegistrationTokenIfTokenNotSent()V

    .line 1087
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSIMDeviceActivationFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceImplicitActivation;

    if-eqz v0, :cond_1

    .line 1088
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceImplicitActivation;->performSimDeviceImplicitActivation(II)V

    goto :goto_0

    .line 1090
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "performSimDeviceImplicitActivation: flow not initiated, invalid request"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private performSimSwapFlow()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimSwapFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISimSwapFlow;

    if-eqz v0, :cond_0

    .line 788
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISimSwapFlow;->handleSimSwap(Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;)V

    goto :goto_0

    .line 810
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleSimSwapEvent: flow not initiated, invalid request"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private queuePerformBootupProcedures()V
    .locals 3

    const/16 v0, 0x2d

    .line 951
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0xc8

    .line 954
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private queuePushTokenUpdateIf()V
    .locals 3

    .line 1005
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    .line 1006
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 1007
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isGcmTokenSentToServer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1008
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->supportEntitlementCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queuePushTokenUpdateInEntitlementServer()V

    :cond_0
    return-void
.end method

.method private queueRetrieveAkaToken(II)V
    .locals 1

    const/16 v0, 0x31

    .line 989
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private queueSimDeviceActivation(II)V
    .locals 1

    const/4 v0, 0x3

    .line 985
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private queueSimDeviceDeactivation(I)V
    .locals 2

    .line 998
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private queueUpdateDeviceName()V
    .locals 2

    .line 1019
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private refreshDeviceConfigIf(I)V
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->isDeviceConfigAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe

    .line 889
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->requestDeviceConfigRetrieval(II)V

    goto :goto_0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 891
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 892
    invoke-interface {p1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 893
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "refreshDeviceConfig: getConfigRefreshOnPowerUp"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 899
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->requestDeviceConfigRetrieval(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshEntitlementAndE911Info(II)V
    .locals 3

    .line 1023
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1024
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 1025
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 1024
    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsUIAppSwitchOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 1026
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineE911AidExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/E911AidValidator;->validate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleE911CheckTimer()V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1032
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "refreshEntitlementAndE911Info: still valid, no refresh"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1036
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueEntitlementCheck(II)V

    goto :goto_0

    .line 1038
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "refreshEntitlementAndE911Info: not ready to refresh"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private refreshEntitlementAndE911InfoAutoOn(II)V
    .locals 3

    .line 1043
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 1045
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 1044
    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsUIAppSwitchOn(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->supportEntitlementCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueEntitlementCheck(II)V

    goto :goto_0

    .line 1048
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "refreshEntitlementAndE911Info: not ready to refresh"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private registerAirplaneModeObserver()V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mAirplaneModeObserver:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$AirplaneModeObserver;

    if-eqz v0, :cond_0

    return-void

    .line 592
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$AirplaneModeObserver;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$AirplaneModeObserver;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mAirplaneModeObserver:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$AirplaneModeObserver;

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 595
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mAirplaneModeObserver:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$AirplaneModeObserver;

    .line 594
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerNsdsAppFlowReceiver()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSAppFlowReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.nsds.action.SIM_DEVICE_DEACTIVATED"

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.nsds.action.E911_AID_INFO_RECEIVED"

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.nsds.action.ENTITLEMENT_AND_LOCTC_CHECK_COMPLETED"

    .line 399
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.nsds.action.RECEIVED_GCM_EVENT_NOTIFICATION"

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.nsds.action.DEVICE_PUSH_TOKEN_READY"

    .line 401
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSAppFlowReceiver:Landroid/content/BroadcastReceiver;

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerNsdsContentObserver()V
    .locals 4

    .line 555
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 557
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 562
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$SimSwapNsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    .line 563
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 564
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/extensions/Extensions$Settings$Global;->DEVICE_NAME:Ljava/lang/String;

    .line 565
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContentObserver:Landroid/database/ContentObserver;

    .line 564
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 566
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/extensions/Extensions$Settings$Global;->DEVICE_PROVISIONED:Ljava/lang/String;

    .line 567
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContentObserver:Landroid/database/ContentObserver;

    .line 566
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerNsdsEventQueueReceiver()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSEventRequestReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.vsim.ericssonnsds.REFRESH_TOKEN"

    .line 487
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.vsim.ericssonnsds.ACTION_REFRESH_DEVICE_INFO"

    .line 488
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.vsim.ericssonnsds.ACTION_SIM_DEVICE_ACTIVATION"

    .line 489
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.vsim.ericssonnsds.CHECK_REG_STATE"

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.vsim.ericssonnsds.E911_AID_EXP_CHECK_TIMEOUT"

    .line 491
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.vsim.ericssonnsds.SVC_PROVISION_CHECK_TIMEOUT"

    .line 492
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.vsim.ericssonnsds.ACTION_SVC_PROVISION_CHECK_RETRY_TIMEOUT"

    .line 493
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.vsim.ericssonnsds.ACTION_RETRY_ENTITLEMENT_CHECK"

    .line 494
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSEventRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private removeFromRegiListOnDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 1366
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mRegistrationList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1367
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    .line 1368
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1369
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mRegistrationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestDeviceConfigRetrieval(II)V
    .locals 3

    .line 1212
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDeviceConfigRetrieval: eventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " retryCount "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

    .line 1214
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private scheduleE911CheckTimer()V
    .locals 8

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "schedule E911 aid expiration check timer"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 601
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getEntitlementCheckExpirationTime()J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    .line 603
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const/4 v5, 0x0

    const-string v4, "com.sec.vsim.ericssonnsds.E911_AID_EXP_CHECK_TIMEOUT"

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;J)V

    :cond_1
    return-void
.end method

.method private scheduleForForcedSimSwapIf()V
    .locals 3

    .line 835
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "scheduleForForcedSimSwapIfCacheNotReady"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getWaitTimeForForcedSimSwap()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x28

    .line 841
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleGetGcmRegistrationTokenIfTokenNotSent()V
    .locals 4

    .line 671
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isGcmTokenSentToServer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 672
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleGetGcmRegistrationTokenIfTokenNotSent: isTokenSent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 675
    invoke-interface {v1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isGcmTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getGcmSenderId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p0

    const-wide/32 v1, 0x1d4c0

    const-string v3, "com.sec.vsim.ericssonnsds.REFRESH_TOKEN"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private scheduleNsdsAppFlowRetryIf(Landroid/content/Intent;)V
    .locals 13

    const-string v0, "retry_count"

    const/4 v1, -0x1

    .line 1477
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "device_event_type"

    const/4 v4, 0x0

    .line 1478
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "orig_error_code"

    .line 1479
    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "request_status"

    .line 1480
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1482
    invoke-direct {p0, v1, v2, v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->shouldRetry(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1483
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x1

    add-int/2addr v2, v6

    .line 1484
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1485
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1487
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string p1, "error_codes"

    .line 1491
    invoke-virtual {v10, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x578

    .line 1493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1492
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    .line 1497
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry sim device implicit activation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 1499
    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v8

    const-wide/16 v11, 0x7530

    const-string v9, "com.sec.vsim.ericssonnsds.ACTION_SIM_DEVICE_ACTIVATION"

    invoke-static/range {v7 .. v12}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;J)V

    :cond_1
    return-void
.end method

.method private scheduleRetryWFCAutoOnTimer(I)V
    .locals 9

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    return-void

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[ATT_AutoOn] scheduleRetryWFCAutoOnTimer start in about 5 minutes"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v1, "retry_count"

    .line 636
    invoke-virtual {v6, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "device_event_type"

    .line 637
    invoke-virtual {v6, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    const-wide/32 v7, 0x445c0

    const-string v5, "com.sec.vsim.ericssonnsds.ACTION_RETRY_ENTITLEMENT_CHECK"

    invoke-static/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method private scheduleServiceProvisionCheckRetryTimer()V
    .locals 8

    .line 619
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "schedule service provision check retry timer"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 621
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSvcProvCheckRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSvcProvCheckRetryCount:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->calEntitlementCheckExpRetryTime(I)J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    .line 623
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const/4 v5, 0x0

    const-string v4, "com.sec.vsim.ericssonnsds.ACTION_SVC_PROVISION_CHECK_RETRY_TIMEOUT"

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 626
    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSvcProvCheckRetryCount:I

    :goto_1
    return-void
.end method

.method private scheduleServiceProvisionCheckTimer()V
    .locals 8

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "schedule service provision check timer"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 611
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getEntitlementCheckExpirationTime()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    :goto_0
    move-wide v6, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    .line 613
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const/4 v5, 0x0

    const-string v4, "com.sec.vsim.ericssonnsds.SVC_PROVISION_CHECK_TIMEOUT"

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;J)V

    :cond_1
    return-void
.end method

.method private shouldRetry(III)Z
    .locals 3

    .line 1507
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldRetry: errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retryCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 1510
    invoke-interface {p3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->requireRetryBootupProcedure()Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x4

    if-le p2, p3, :cond_0

    .line 1512
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "shouldRetry: exceeded max retry "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p3, -0x1

    const/4 v1, 0x1

    if-eq p1, p3, :cond_3

    const/16 p3, 0x3e9

    if-lt p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/16 p3, 0x1e6

    if-eq p1, p3, :cond_2

    const/16 p3, 0x198

    if-eq p1, p3, :cond_2

    const/16 p3, 0x1f4

    if-eq p1, p3, :cond_2

    const/16 p3, 0x1f7

    if-eq p1, p3, :cond_2

    const/16 p3, 0x1e0

    if-ne p1, p3, :cond_4

    .line 1525
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "shouldRetry: HTTP error, retry "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1517
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "shouldRetry: NSDS error, retry "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return v0
.end method

.method private stopForcedSimSwap()V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopped forced SimSwap handling"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x28

    .line 846
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private unregisterLoginReceiversAndStopTimers()V
    .locals 0

    .line 1286
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopAllTimers(Landroid/content/Context;)V

    return-void
.end method

.method private updateDeviceName()V
    .locals 3

    .line 1263
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getDeviceId(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->buildUpdateDeviceNameUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1264
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/util/DeviceNameHelper;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceName"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1265
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateGcmPushTokenInDb()V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateGcmPushTokenInDb()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getGcmSenderId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/PushTokenHelper;->getPushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GCM Token ready: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 191
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const-string v3, "managePushToken"

    .line 190
    invoke-virtual {v2, v0, v1, v3, p0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertOrUpdateGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePushTokenInEntitlementServer()V
    .locals 0

    .line 1132
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mPushTokenUpdateFlow:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->updatePushToken()V

    return-void
.end method


# virtual methods
.method public activateSimDevice(II)V
    .locals 6

    .line 904
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->checkSimReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->notifySimErrorForDeviceActivation()V

    return-void

    :cond_0
    const-wide/32 v0, 0x36ee80

    .line 909
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mInvalidFingerPrintDate:Ljava/util/Date;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 910
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mInvalidFingerPrintDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 911
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "do not try it"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInActivationProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "activateSimDevice: activate SIM device"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueSimDeviceActivation(II)V

    :cond_2
    return-void
.end method

.method public deactivateSimDevice(I)V
    .locals 0

    .line 933
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueSimDeviceDeactivation(I)V

    return-void
.end method

.method public dump()V
    .locals 3

    .line 1533
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1536
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->getResponseHandler()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->dump()V

    .line 1537
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method protected getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    .locals 3

    .line 1269
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 1270
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1272
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->getMnoStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1274
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMnoNsdsStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object v1

    .line 1280
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getMnoNsdsStrategy: mnoStrategyCreator is null"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1542
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMesasge: event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/16 v2, 0x31

    if-eq v0, v2, :cond_3

    const/16 v2, 0x33

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1594
    :pswitch_0
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->refreshEntitlementAndE911Info(II)V

    goto/16 :goto_0

    .line 1591
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleGetGcmRegistrationTokenIfTokenNotSent()V

    goto/16 :goto_0

    .line 1588
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->enableOrDisableNSDSService()V

    goto/16 :goto_0

    .line 1585
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performProceduresOnConfigRefreshComplete()V

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "Forced"

    .line 1582
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->handleSimSwapEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1579
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->updatePushTokenInEntitlementServer()V

    goto/16 :goto_0

    .line 1546
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performBootupProcedures()V

    goto/16 :goto_0

    .line 1576
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performE911AddressUpdate(I)V

    goto :goto_0

    .line 1573
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->onFlightMode(I)V

    goto :goto_0

    .line 1570
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performRemovePushToken(I)V

    goto :goto_0

    .line 1567
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performEntitlementCheck(II)V

    goto :goto_0

    .line 1564
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->refreshDeviceConfigIf(I)V

    goto :goto_0

    .line 1597
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->refreshEntitlementAndE911InfoAutoOn(II)V

    goto :goto_0

    .line 1600
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performAkaTokenRetrievalFlow(II)V

    goto :goto_0

    .line 1561
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->updateDeviceName()V

    goto :goto_0

    .line 1558
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performSimDeviceDeactivationFlow(I)V

    goto :goto_0

    .line 1555
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performSimDeviceImplicitActivation(II)V

    goto :goto_0

    .line 1552
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->onDeregistration(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 1549
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->onRegistration(Lcom/sec/ims/ImsRegistration;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public handleVoWifToggleOffEvent()V
    .locals 2

    .line 1207
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleVoWifToggleOffEvent()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1208
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueRemovePushToken(I)V

    return-void
.end method

.method public handleVoWifToggleOnEvent()V
    .locals 2

    .line 1197
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleVoWifToggleOnEvent()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->checkSimReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->notifySimErrorForEntitlementAndLocTc()V

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1202
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueEntitlementCheck(II)V

    return-void
.end method

.method public initForDeviceReady()V
    .locals 0

    .line 732
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->initMnoBasedAppFlows()V

    .line 733
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->initNsdsSharePref()V

    return-void
.end method

.method public onDeviceReady()V
    .locals 2

    .line 1318
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeviceReady"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    .line 1320
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performOnDeviceReadyIf()V

    return-void
.end method

.method public onSimNotAvailable()V
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimNotAvailable()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 857
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopAllTimers(Landroid/content/Context;)V

    return-void
.end method

.method public onSimReady(Z)V
    .locals 4

    .line 737
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimReady: isSwapped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isSimSupportedForNsds(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mIsSimSupported:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 745
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->unregisterLoginReceiversAndStopTimers()V

    .line 746
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->initSimSwapFlow()V

    .line 747
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->initNsdsAppFlows()V

    .line 749
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->initMnoBasedAppFlows()V

    .line 750
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->initNsdsSharePref()V

    .line 752
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mOnSimSwapEvt:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 755
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mOnSimSwapEvt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 756
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->scheduleForForcedSimSwapIf()V

    .line 757
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 758
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    const-string v3, "prev_imsi"

    .line 757
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 758
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 757
    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->copyConfigEntriesForSimSwap(Ljava/lang/String;Ljava/lang/String;I)V

    .line 759
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->clearEntitlementServerUrl()V

    .line 760
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->clear()V

    .line 761
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->resetMnoStrategy()V

    .line 762
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performProcsOnSimSwapCompleted()V

    .line 765
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->performOnDeviceReadyIf()V

    return-void
.end method

.method protected performRemovePushToken(I)V
    .locals 1

    .line 1176
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1177
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->supportEntitlementCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mEntitlementCheckFlow:Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;

    if-eqz v0, :cond_0

    .line 1179
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;->performRemovePushToken(I)V

    goto :goto_0

    .line 1181
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "performRemovePushToken: flow not initiated, invalid request"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected queueE911AddressUpdate(I)V
    .locals 1

    .line 977
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected queueEntitlementCheck(II)V
    .locals 1

    const/16 v0, 0xf

    .line 969
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected queueEntitlementCheck(IIJ)V
    .locals 1

    const/16 v0, 0xf

    .line 973
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public queueGcmTokenRetrieval()V
    .locals 1

    const/16 v0, 0x2b

    .line 878
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public queuePushTokenUpdateInEntitlementServer()V
    .locals 1

    const/16 v0, 0x15

    .line 1015
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public queueRefreshDeviceAndServiceInfo(II)V
    .locals 1

    const/16 v0, 0xd

    .line 994
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public queueRefreshDeviceConfig(I)V
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->isDeviceConfigAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mOnSimSwapEvt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 963
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigRefreshOnPowerUp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0xe

    .line 964
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method protected queueRemovePushToken(I)V
    .locals 1

    .line 981
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerImsRegistrationListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 319
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerImsRegistrationListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public retrieveAkaToken(II)V
    .locals 2

    .line 922
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->checkSimReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->notifySimErrorForDeviceActivation()V

    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInActivationProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "retrieveAkaToken: retrieve aka token"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueRetrieveAkaToken(II)V

    :cond_1
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterImsRegistrationListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterImsRegistrationListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateE911Address()V
    .locals 2

    .line 1187
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateE911Address()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->checkSimReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->notifySimErrorForEntitlementAndLocTc()V

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 1192
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueE911AddressUpdate(I)V

    return-void
.end method

.method public updateEntitlementUrl(Ljava/lang/String;)V
    .locals 4

    .line 938
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEntitlementUrl: url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateEntitlementUrl: empty or null url"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 944
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 945
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    .line 944
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->deleteConfigAndResetDeviceAndAccountStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 947
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->setEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
