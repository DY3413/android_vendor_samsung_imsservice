.class public Lcom/sec/internal/ims/servicemodules/euc/EucModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "EucModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucModule;


# static fields
.field private static final DEFAULT_EUC_PHONE_ID:I

.field private static final EVENT_CONFIGURED:I = 0xf

.field private static final EVENT_DEREGISTERED:I = 0x11

.field private static final EVENT_INIT:I = 0xb

.field private static final EVENT_REGISTERED:I = 0x10

.field private static final EVENT_SERVICE_SWITCHED:I = 0xe

.field private static final EVENT_SIM_READY:I = 0x15

.field private static final EVENT_SIM_REFRESH:I = 0x16

.field private static final EVENT_START:I = 0xc

.field private static final EVENT_STOP:I = 0xd

.field private static final EXPECTED_NUMBER_OF_SIM_SLOTS:I = 0x2

.field private static final LOG_STRING_OWN_IDENTITY:Ljava/lang/String; = ", ownIdentity = "

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final LOG_TEST_REQUEST_FAILURE:Ljava/lang/String; = "Failure, test request is invalid, skipping "

.field private static final sRequiredServices:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceLocale:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;

.field private final mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

.field private final mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

.field private final mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

.field private mEucPhoneId:I

.field private final mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

.field private final mEucServiceSwitches:Landroid/util/SparseBooleanArray;

.field private mLanguageCode:Ljava/lang/String;

.field private final mLoadedEucrs:Landroid/util/SparseBooleanArray;

.field private final mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

.field private final mOwnIdentitiesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

.field private mServiceModuleBaseStartCalled:Z

.field private final mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

.field private mStartInternalCalled:Z

.field private final mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

.field private final mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

.field private final mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

.field private final mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;


# direct methods
.method public static synthetic $r8$lambda$pLdeZQ1Fl_uKNlMQVScmZ94gX4Y(Lcom/sec/internal/ims/servicemodules/euc/EucModule;Ljava/util/Locale;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->lambda$performStartupRegistrations$2(Ljava/util/Locale;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xopmql6OSk1T-VsKnuX4dzBkBCY(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->lambda$handleEucTestSendResponse$0(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zVJOYK4F2doEtUyj0I8UsKYSp_U(Lcom/sec/internal/ims/servicemodules/euc/EucModule;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->lambda$handleEucTestSendResponse$1(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 78
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    .line 82
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    sput v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->DEFAULT_EUC_PHONE_ID:I

    const-string v0, "euc"

    .line 98
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sRequiredServices:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;)V
    .registers 15

    .line 137
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 138
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_1c

    move p2, v0

    goto :goto_1d

    :cond_1c
    move p2, v7

    :goto_1d
    const-string v2, "Could not obtain handler factory!"

    .line 140
    invoke-static {p2, v2}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 142
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    .line 143
    new-instance p2, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;

    invoke-direct {p2}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 144
    new-instance v2, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;

    invoke-direct {v2, p2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    .line 145
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->getInstance()Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    if-eqz v2, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v7

    :goto_3c
    const-string v3, "Could not obtain User Consent persistence notifier!"

    .line 146
    invoke-static {v0, v3}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 148
    new-instance v8, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;

    invoke-direct {v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V

    invoke-direct {v8, v0, v2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;)V

    iput-object v8, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    .line 150
    new-instance v9, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-direct {v9, v1, p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    const-string v0, "def"

    .line 151
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLanguageCode:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDeviceLocale:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;

    .line 153
    new-instance v10, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    invoke-direct {v10, p3, p1}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    .line 154
    new-instance p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    invoke-direct {p1, v8, v9, p2, v10}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    .line 156
    new-instance p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    move-object v0, p1

    move-object v2, p0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    .line 158
    new-instance p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;

    invoke-direct {p1, v8, v9, v10, p2}, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    .line 160
    sget p1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->DEFAULT_EUC_PHONE_ID:I

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    .line 161
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mServiceModuleBaseStartCalled:Z

    .line 162
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    .line 163
    new-instance p1, Landroid/util/SparseBooleanArray;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    .line 164
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1, p2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    .line 165
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mOwnIdentitiesCache:Landroid/util/SparseArray;

    .line 166
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1, p2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private checkConditionsForInternalStart()Z
    .registers 7

    .line 892
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 893
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isAtLeastOneSimAvailableAndSwitchedOn()Z

    move-result v0

    goto :goto_24

    .line 896
    :cond_d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    .line 900
    :goto_24
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkConditionsForInternalStart: mStartInternalCalled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", couldBeStarted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-nez p0, :cond_4b

    if-eqz v0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    return v1
.end method

.method private checkConditionsForInternalStop()Z
    .registers 7

    .line 910
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 911
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isAtLeastOneSimAvailableAndSwitchedOn()Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_26

    .line 913
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_25

    :cond_23
    move v0, v1

    goto :goto_26

    :cond_25
    :goto_25
    move v0, v2

    .line 917
    :goto_26
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkConditionsForInternalStop: mStartInternalCalled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", couldBeStopped="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz p0, :cond_4d

    if-eqz v0, :cond_4d

    move v1, v2

    :cond_4d
    return v1
.end method

.method private discardEucrs(Ljava/lang/String;)V
    .registers 5

    .line 760
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discardEucrs, ownIdentity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IModuleLifecycleListener;->discard(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IModuleLifecycleListener;->discard(Ljava/lang/String;)V

    .line 763
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IModuleLifecycleListener;->discard(Ljava/lang/String;)V

    return-void
.end method

.method private discardEucrsConditionally(I)V
    .registers 7

    .line 736
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discardEucrsConditionally, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v1

    .line 739
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ownIdentity = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isLoaded="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4e

    if-eqz v3, :cond_4e

    .line 747
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrs(Ljava/lang/String;)V

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_4e
    return-void
.end method

.method private dumpExtras(Landroid/os/Bundle;)V
    .registers 5

    .line 272
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Extras:\n"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_32

    .line 275
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 278
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 282
    :cond_32
    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getEucPhoneId()I
    .registers 3

    .line 1007
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Euc phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->DEFAULT_EUC_PHONE_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getOwnIdentity(I)Ljava/lang/String;
    .registers 5

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mOwnIdentitiesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    .line 806
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentityNotCached(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 808
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mOwnIdentitiesCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 812
    :cond_15
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOwnIdentity, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getOwnIdentityNotCached(I)Ljava/lang/String;
    .registers 5

    .line 776
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 779
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    .line 780
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2a

    :cond_12
    move-object v0, p0

    goto :goto_2a

    .line 784
    :cond_14
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOwnIdentityNotCached, Unable to find sim manager related to phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_2a
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOwnIdentityNotCached, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private handleConfigured(I)V
    .registers 5

    .line 621
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfigured, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mEucPhoneId = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 5

    .line 519
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 521
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_28

    .line 538
    :cond_11
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeregistered, ignoring de-registration for phoneId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 522
    :cond_28
    :goto_28
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sRequiredServices:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    const-string v2, "handleDeregistered, phoneId = "

    if-eqz p1, :cond_6f

    .line 523
    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 526
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    invoke-interface {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;->store(Ljava/lang/String;)V

    goto :goto_94

    .line 528
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not obtain own identity, ignore de-registration for phoneId = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 533
    :cond_6f
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", no registration for required services = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ignore!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 533
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_94
    return-void
.end method

.method private handleEucTestIncomingRequest(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    if-eqz p2, :cond_10

    .line 265
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_26

    .line 267
    :cond_10
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failure, test request is invalid, skipping request id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method private handleEucTestSendResponse(Landroid/content/Intent;)V
    .registers 9

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createEucData(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v4

    if-eqz v4, :cond_2f

    const-string/jumbo v0, "user_pin"

    .line 243
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "user_accept"

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    goto :goto_1e

    .line 245
    :cond_1c
    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->DECLINE:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    :goto_1e
    move-object v5, p1

    .line 247
    new-instance v6, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 251
    new-instance p1, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda1;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/EucModule;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_36

    .line 259
    :cond_2f
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Failure, test request is invalid, skipping com.sec.internal.ims.servicemodules.euc.test.action.SEND_EUCR_RESPONSE"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return-void
.end method

.method private handleIncomingAckMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;)V
    .registers 5

    .line 430
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingAckMessage, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    move-result-object p1

    .line 432
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    return-void
.end method

.method private handleIncomingAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V
    .registers 5

    .line 467
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingAutoconfUserConsent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-nez v0, :cond_41

    .line 471
    :try_start_1e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->open()V
    :try_end_23
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_41

    :catch_24
    move-exception p0

    .line 473
    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure, unable to open persistence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Abandoning configuration consent!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 480
    :cond_41
    :goto_41
    :try_start_41
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V
    :try_end_46
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_41 .. :try_end_46} :catch_47

    goto :goto_5e

    :catch_47
    move-exception p1

    .line 482
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to store User Consent in persistence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_5e
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-nez p1, :cond_67

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->close()V

    :cond_67
    return-void
.end method

.method private handleIncomingNotificationMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;)V
    .registers 5

    .line 436
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingNotificationMessage, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    move-result-object p1

    .line 438
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    return-void
.end method

.method private handleIncomingPersistentMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)V
    .registers 5

    .line 418
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingPersistentMessage, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    move-result-object p1

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    return-void
.end method

.method private handleIncomingSystemMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;)V
    .registers 6

    .line 442
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingSystemMessage, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;->getMessageData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->RECONFIGURE:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 451
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    .line 452
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getOwnIdentity()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 453
    invoke-virtual {p0, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-string p1, "euc"

    .line 451
    invoke-interface {v0, v1, p1, p0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->onNewRcsConfigurationNeeded(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_61
    return-void
.end method

.method private handleIncomingVolatileMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)V
    .registers 5

    .line 424
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingVolatileMessage, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    move-result-object p1

    .line 426
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    return-void
.end method

.method private handleInit()V
    .registers 4

    .line 627
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInit, isMultiSimIms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getEucPhoneId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    .line 630
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->initiateServiceSwitches()V

    .line 631
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->registerForSimEvents()V

    .line 632
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->initiateSimAvailabilityStatuses()V

    .line 633
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->notifyOnInit()V

    return-void
.end method

.method private handleReconfigurationResponse(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;I)V
    .registers 5

    .line 459
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReconfigurationResponse, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getEucId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ownIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getOwnIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", response="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2e

    const-string p1, "accepted"

    goto :goto_31

    :cond_2e
    const-string/jumbo p1, "rejected"

    .line 463
    :goto_31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 459
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 5

    .line 492
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 494
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_28

    .line 512
    :cond_11
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRegistered, ignoring registration for phoneId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 495
    :cond_28
    :goto_28
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sRequiredServices:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    const-string v2, "handleRegistered, phoneId = "

    if-eqz p1, :cond_6f

    .line 496
    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    invoke-interface {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;->forward(Ljava/lang/String;)V

    goto :goto_94

    .line 501
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not obtain own identity, ignore registration for phoneId = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 506
    :cond_6f
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", no registration for required services = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ignore!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 506
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_94
    return-void
.end method

.method private handleServiceSwitched(I)V
    .registers 6

    .line 681
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucSwitchedOn(I)Z

    move-result v0

    .line 682
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleServiceSwitched, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isEucOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v0, :cond_54

    .line 687
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->startConditionally()V

    .line 690
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    :cond_38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    .line 691
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_6a

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    .line 692
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v0, :cond_6a

    .line 694
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrsConditionally(I)V

    goto :goto_6a

    .line 699
    :cond_54
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_60
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v0, :cond_67

    .line 700
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrsConditionally(I)V

    .line 703
    :cond_67
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopConditionally()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private handleSimAvailability(IZ)V
    .registers 4

    .line 562
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p2, :cond_e

    .line 565
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->startConditionally()V

    .line 566
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleSimAvailable(I)V

    goto :goto_11

    .line 568
    :cond_e
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopConditionally()V

    .line 571
    :goto_11
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(I)V

    return-void
.end method

.method private handleSimAvailable(I)V
    .registers 10

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->invalidateOwnIdentity(I)V

    .line 585
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v3

    .line 587
    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSimAvailable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", oldOwnIdentity = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", newOwnIdentity = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 587
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSimAvailable, mStartInternalCalled = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v5, :cond_d7

    .line 595
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 596
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSimAvailable, EUCRs areLoaded = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ownIdentity = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_9e

    if-eqz v2, :cond_9e

    .line 602
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrs(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 609
    :cond_9e
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 610
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v2

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isSwitchedOn = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isMultiSim = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_d7

    if-nez v2, :cond_d4

    .line 614
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 615
    :cond_d4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrsConditionally(I)V

    :cond_d7
    return-void
.end method

.method private handleSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 6

    .line 544
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 545
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p1

    .line 547
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimReady, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isSimAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleSimAvailability(IZ)V

    return-void
.end method

.method private handleSimRefresh(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 6

    .line 553
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 554
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p1

    .line 556
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimRefresh, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isSimAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleSimAvailability(IZ)V

    return-void
.end method

.method private handleStart()V
    .registers 4

    .line 659
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mServiceModuleBaseStartCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Shall not happen! Something wrong with IMS framework lifecycle, Euc module already started!"

    invoke-static {v0, v2}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 662
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mServiceModuleBaseStartCalled:Z

    .line 664
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->startConditionally()V

    return-void
.end method

.method private handleStop()V
    .registers 3

    .line 672
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mServiceModuleBaseStartCalled:Z

    const-string v1, "Shall not happen! Something wrong with IMS framework lifecycle, Euc module already stopped!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mServiceModuleBaseStartCalled:Z

    .line 677
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopOnServiceModuleBaseStop()V

    return-void
.end method

.method private initiateServiceSwitches()V
    .registers 4

    .line 1012
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initiateServiceSwitches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1014
    :goto_8
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1015
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucSwitchedOn(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method private initiateSimAvailabilityStatuses()V
    .registers 5

    .line 1020
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initiateSimAvailabilityStatuses"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1023
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 1024
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    .line 1025
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_f

    :cond_29
    return-void
.end method

.method private invalidateOwnIdentities()V
    .registers 3

    .line 823
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "invalidateOwnIdentities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mOwnIdentitiesCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private invalidateOwnIdentity(I)V
    .registers 5

    .line 818
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateOwnIdentity, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mOwnIdentitiesCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method private isAtLeastOneSimAvailableAndSwitchedOn()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 880
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 881
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method private isEucPhoneId(I)Z
    .registers 2

    .line 876
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isEucSwitchedOn(I)Z
    .registers 5

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mContext:Landroid/content/Context;

    .line 709
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getServicesRequiring()[Ljava/lang/String;

    move-result-object p0

    .line 708
    invoke-static {v0, p0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    const-string v0, "euc"

    .line 710
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1c

    .line 711
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 713
    :goto_1d
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Euc switch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isMultiSim()Z
    .registers 1

    .line 872
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$handleEucTestSendResponse$0(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V
    .registers 5

    .line 247
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test send response request key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", send response status="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$handleEucTestSendResponse$1(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)V
    .registers 5

    if-eqz p1, :cond_8

    .line 253
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    invoke-interface {p0, p2, p3, p1, p4}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    goto :goto_d

    .line 255
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    invoke-interface {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    :goto_d
    return-void
.end method

.method private synthetic lambda$performStartupRegistrations$2(Ljava/util/Locale;)V
    .registers 5

    .line 842
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDeviceLocale:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;->getLanguageCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 844
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 845
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing languageCode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLanguageCode:Ljava/lang/String;

    .line 847
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->changeLanguage(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->changeLanguage(Ljava/lang/String;)V

    .line 849
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->changeLanguage(Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method private loadPendingEucrs(Ljava/lang/String;)V
    .registers 5

    .line 753
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPendingEucrs, ownIdentity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IModuleLifecycleListener;->load(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IModuleLifecycleListener;->load(Ljava/lang/String;)V

    .line 756
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IModuleLifecycleListener;->load(Ljava/lang/String;)V

    return-void
.end method

.method private loadPendingEucrsConditionally(I)V
    .registers 7

    .line 719
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPendingEucrsConditionally, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v1

    .line 722
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ownIdentity = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isLoaded="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4f

    if-nez v3, :cond_4f

    .line 730
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrs(Ljava/lang/String;)V

    .line 731
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_4f
    return-void
.end method

.method private notifyOnInit()V
    .registers 3

    .line 1032
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyOnInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1034
    :goto_8
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 1035
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return-void
.end method

.method private performShutdownDeregistrations()V
    .registers 3

    .line 856
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "performShutdownDeregistrations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->unregisterForPersistentMessage(Landroid/os/Handler;)V

    .line 860
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->unregisterForVolatileMessage(Landroid/os/Handler;)V

    .line 861
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->unregisterForAckMessage(Landroid/os/Handler;)V

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->unregisterForNotificationMessage(Landroid/os/Handler;)V

    .line 863
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->unregisterForSystemMessage(Landroid/os/Handler;)V

    .line 866
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IModuleLifecycleListener;->stop()V

    .line 867
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDeviceLocale:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;->stop()V

    .line 868
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->stop()V

    return-void
.end method

.method private performStartupRegistrations()V
    .registers 4

    .line 828
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "performStartupRegistrations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->registerForPersistentMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->registerForVolatileMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->registerForAckMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->registerForNotificationMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 836
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->registerForSystemMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IModuleLifecycleListener;->start()V

    .line 840
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDeviceLocale:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/euc/EucModule;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;->start(Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;)V

    .line 852
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->start()V

    return-void
.end method

.method private registerForSimEvents()V
    .registers 3

    .line 637
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 638
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->registerForSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 639
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->registerForSimRefresh(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    goto :goto_8

    :cond_1b
    return-void
.end method

.method private registerForSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 5

    .line 644
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForSimReady, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    .line 645
    invoke-interface {p1, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private registerForSimRefresh(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 5

    .line 649
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForSimRefresh, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x16

    .line 650
    invoke-interface {p1, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 651
    invoke-interface {p1, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private startConditionally()V
    .registers 3

    .line 925
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startConditionally"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->checkConditionsForInternalStart()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 928
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->startInternal()V

    :cond_11
    return-void
.end method

.method private stopConditionally()V
    .registers 3

    .line 933
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopConditionally"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->checkConditionsForInternalStop()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 936
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopInternal()V

    :cond_11
    return-void
.end method

.method private stopOnServiceModuleBaseStop()V
    .registers 4

    .line 941
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopOnServiceModuleBaseStop, mStartInternalCalled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v0, :cond_20

    .line 946
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopInternal()V

    :cond_20
    return-void
.end method


# virtual methods
.method public getServicesRequiring()[Ljava/lang/String;
    .registers 1

    .line 171
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sRequiredServices:[Ljava/lang/String;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 11

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "com.sec.internal.ims.servicemodules.euc.test.category.ACTION"

    .line 178
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 179
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntent, Intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->dumpExtras(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent, Intent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_49

    const-string p0, "Failure, cannot handle null action!"

    .line 186
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 190
    :cond_49
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x1

    sparse-switch v2, :sswitch_data_118

    goto :goto_a3

    :sswitch_57
    const-string v2, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_SYSTEM_EUCR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    goto :goto_a3

    :cond_60
    const/4 v8, 0x6

    goto :goto_a3

    :sswitch_62
    const-string v2, "com.sec.internal.ims.servicemodules.euc.test.action.SEND_EUCR_RESPONSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    goto :goto_a3

    :cond_6b
    move v8, v3

    goto :goto_a3

    :sswitch_6d
    const-string v2, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_NOTIFICATION_EUCR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    goto :goto_a3

    :cond_76
    move v8, v4

    goto :goto_a3

    :sswitch_78
    const-string v2, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_ACKNOWLEDGEMENT_EUCR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    goto :goto_a3

    :cond_81
    move v8, v5

    goto :goto_a3

    :sswitch_83
    const-string v2, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_USER_CONSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    goto :goto_a3

    :cond_8c
    move v8, v6

    goto :goto_a3

    :sswitch_8e
    const-string v2, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_PERSISTENT_EUCR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    goto :goto_a3

    :cond_97
    move v8, v7

    goto :goto_a3

    :sswitch_99
    const-string v2, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_VOLATILE_EUCR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    goto :goto_a3

    :cond_a2
    const/4 v8, 0x0

    :goto_a3
    packed-switch v8, :pswitch_data_136

    .line 230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleIntent, unsupported action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_116

    .line 215
    :pswitch_bb
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createSystemRequest(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    move-result-object p1

    .line 217
    invoke-direct {p0, v3, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestIncomingRequest(ILjava/lang/Object;)V

    goto :goto_116

    .line 227
    :pswitch_c5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestSendResponse(Landroid/content/Intent;)V

    goto :goto_116

    .line 209
    :pswitch_c9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    .line 210
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createNotification(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;

    move-result-object p1

    .line 211
    invoke-direct {p0, v5, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestIncomingRequest(ILjava/lang/Object;)V

    goto :goto_116

    .line 203
    :pswitch_d3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    .line 204
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createAcknowledgement(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    move-result-object p1

    .line 205
    invoke-direct {p0, v4, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestIncomingRequest(ILjava/lang/Object;)V

    goto :goto_116

    .line 221
    :pswitch_dd
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    .line 222
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createUserConsent(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    move-result-object p1

    const/4 v0, 0x7

    .line 224
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_116

    .line 192
    :pswitch_ec
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createPersistent(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    move-result-object p1

    .line 194
    invoke-direct {p0, v7, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestIncomingRequest(ILjava/lang/Object;)V

    goto :goto_116

    .line 198
    :pswitch_f6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createVolatile(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    move-result-object p1

    .line 199
    invoke-direct {p0, v6, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestIncomingRequest(ILjava/lang/Object;)V

    goto :goto_116

    .line 235
    :cond_100
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIntent, unsupported category: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_116
    return-void

    nop

    :sswitch_data_118
    .sparse-switch
        -0x67cf88ca -> :sswitch_99
        -0x204435e5 -> :sswitch_8e
        -0x1c83044e -> :sswitch_83
        -0x1a57bb70 -> :sswitch_78
        -0x18fe1cb9 -> :sswitch_6d
        0x58eef317 -> :sswitch_62
        0x7762a783 -> :sswitch_57
    .end sparse-switch

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_f6
        :pswitch_ec
        :pswitch_dd
        :pswitch_d3
        :pswitch_c9
        :pswitch_c5
        :pswitch_bb
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 353
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a8

    :pswitch_8
    goto/16 :goto_a7

    .line 388
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 389
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleSimRefresh(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    goto/16 :goto_a7

    .line 384
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 385
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    goto/16 :goto_a7

    .line 381
    :pswitch_24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleDeregistered(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_a7

    .line 378
    :pswitch_2d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_a7

    .line 392
    :pswitch_36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleConfigured(I)V

    goto :goto_a7

    .line 407
    :pswitch_42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleServiceSwitched(I)V

    goto :goto_a7

    .line 404
    :pswitch_4e
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleStop()V

    goto :goto_a7

    .line 401
    :pswitch_52
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleStart()V

    goto :goto_a7

    .line 398
    :pswitch_56
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleInit()V

    goto :goto_a7

    .line 395
    :pswitch_5a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V

    goto :goto_a7

    .line 410
    :pswitch_62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleReconfigurationResponse(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;I)V

    goto :goto_a7

    .line 374
    :pswitch_6c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 375
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingSystemMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;)V

    goto :goto_a7

    .line 366
    :pswitch_78
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 367
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingAckMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;)V

    goto :goto_a7

    .line 370
    :pswitch_84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 371
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingNotificationMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;)V

    goto :goto_a7

    .line 362
    :pswitch_90
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 363
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingVolatileMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)V

    goto :goto_a7

    .line 358
    :pswitch_9c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 359
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingPersistentMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)V

    :goto_a7
    return-void

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_90
        :pswitch_84
        :pswitch_78
        :pswitch_6c
        :pswitch_62
        :pswitch_5a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_42
        :pswitch_36
        :pswitch_2d
        :pswitch_24
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_17
        :pswitch_a
    .end packed-switch
.end method

.method public init()V
    .registers 3

    .line 287
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    const/16 v0, 0xb

    .line 290
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConfigured(I)V
    .registers 5

    .line 309
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    const/16 v0, 0xf

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .registers 6

    .line 331
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    const/16 p2, 0x11

    .line 334
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    .line 325
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 5

    .line 317
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    const/16 v0, 0x10

    .line 320
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .registers 6

    .line 345
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceSwitched, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", switchStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onServiceSwitched(ILandroid/content/ContentValues;)V

    const/16 p2, 0xe

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSimChanged(I)V
    .registers 4

    .line 339
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onSimChanged(I)V

    return-void
.end method

.method public start()V
    .registers 2

    .line 295
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    const/16 v0, 0xc

    .line 297
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startInternal()V
    .registers 5

    .line 952
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "startInternal was already called!"

    invoke-static {v0, v2}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 956
    :try_start_12
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->open()V
    :try_end_17
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_12 .. :try_end_17} :catch_59

    .line 962
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    .line 963
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->performStartupRegistrations()V

    .line 966
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x0

    .line 967
    :goto_23
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 968
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 969
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_50

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    .line 970
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 971
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrsConditionally(I)V

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 975
    :cond_53
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrsConditionally(I)V

    :cond_58
    return-void

    :catch_59
    move-exception p0

    .line 958
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure, unable to open persistence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Cannot start!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .registers 2

    .line 302
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    const/16 v0, 0xd

    .line 304
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopInternal()V
    .registers 5

    .line 981
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    const-string/jumbo v1, "startInternal was not yet called!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 985
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    move v0, v1

    .line 986
    :goto_18
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 987
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 988
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 989
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrsConditionally(I)V

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 993
    :cond_34
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrsConditionally(I)V

    .line 996
    :cond_39
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->performShutdownDeregistrations()V

    .line 998
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->invalidateOwnIdentities()V

    .line 999
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->close()V

    .line 1000
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    return-void
.end method
