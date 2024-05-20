.class public Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "UtServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;
    }
.end annotation


# static fields
.field private static final EVENT_SIM_READY:I = 0x4

.field private static final EVENT_SOFTPHONE_RESPONSE:I = 0x5

.field private static final EVENT_TRIGGER_CONFIG:I = 0x1

.field private static final EXEMPT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "UtServiceModule"

.field private static final MAX_RETRY_SIM_SERV_DOC:I = 0x3

.field public static final NAME:Ljava/lang/String;

.field private static final XCAP_ROOT_URI_PREF_IMSI:I = 0x2

.field private static final XCAP_ROOT_URI_PREF_MSISDN:I = 0x1

.field private static final XCAP_ROOT_URI_PREF_MSISDN_WITH_DOMAIN:I = 0x3

.field private static mUtIdCounter:I


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field protected mCWDBChangeObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mIsConfigured:[Z

.field private mIsEpdgAvailable:[Z

.field private mIsRunningRequest:Z

.field private mLastUri:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ss/IImsUtEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLooper:Landroid/os/Looper;

.field mMnoUpdateObserver:Landroid/database/ContentObserver;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private final mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/UtProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mSentSimServDoc:[Z

.field private mSentSimServDocCount:[I

.field private mSoftPhoneAccountId:Ljava/lang/String;

.field private mSoftPhoneClientId:I

.field private mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

.field private mSoftphoneBound:Z

.field private mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

.field private final mSupplementaryServiceListener:Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

.field private mUtSwitch:[Z

.field private smUtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsConfigured(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)[Z
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPdnController(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftphoneBound(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsmUtMap(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSoftphoneBound(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoftphoneService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformExemptUtService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->performExemptUtService()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 96
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 102
    sput v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3

    .line 141
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    const/4 v1, 0x2

    new-array v2, v1, [Z

    .line 103
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    new-array v1, v1, [Z

    .line 104
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtSwitch:[Z

    .line 107
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 122
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    .line 124
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDoc:[Z

    .line 125
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    const/4 v1, 0x0

    .line 128
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    const/4 v2, -0x1

    .line 129
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    .line 130
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    .line 134
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    .line 137
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 138
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    .line 183
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 1144
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1166
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 1283
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;

    invoke-direct {v1, p0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mMnoUpdateObserver:Landroid/database/ContentObserver;

    .line 1294
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1548
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    .line 1628
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$7;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$7;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSupplementaryServiceListener:Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    .line 143
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLooper:Landroid/os/Looper;

    .line 144
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    .line 145
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "UtServiceModule"

    const/16 v2, 0x12c

    invoke-direct {p1, p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    .line 147
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 149
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 p3, 0x4

    .line 150
    invoke-interface {p2, p0, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "Create UtServiceModule"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private checkEpdgApnExist(ILjava/lang/String;)Z
    .locals 5

    .line 1065
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1066
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v0

    .line 1067
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkEpdgApnExist(): mnoName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UtServiceModule"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p0, "checkEpdgApnExist(): There is no mnoName"

    .line 1070
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1074
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnoname = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' AND apnname = \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content://iwlansettings/todos"

    .line 1075
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1077
    invoke-direct {p0, p1, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryEpdgApnExist(ILjava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 1081
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkEpdgApnExist(): There is no apntype="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method private checkSpecificPolicy(I)Z
    .locals 7

    .line 1113
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1115
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 1116
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1118
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 1119
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "mmtel"

    .line 1120
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1121
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    if-nez v6, :cond_3

    .line 1122
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 1123
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    return v3

    .line 1125
    :cond_0
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 1127
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne p0, p1, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private createRequestId()I
    .locals 1

    .line 717
    sget p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    .line 718
    sput p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    .line 720
    :cond_0
    sget p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    return p0
.end method

.method private ctcOperator(I)Ljava/lang/String;
    .locals 0

    .line 986
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 988
    sget-object p1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_0

    const-string p0, "46003"

    return-object p0

    .line 990
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_1

    const-string p0, "45502"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getApnExist(ILjava/lang/String;)Z
    .locals 6

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnExist(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1043
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->ctcOperator(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1048
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 1049
    sget-object v3, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filtered/subId/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_0

    .line 1051
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'and (type LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "content://telephony/carriers"

    .line 1052
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1055
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApnExist(): operator ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", selection="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1056
    invoke-direct {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryApnExist(ILjava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1060
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getApnExist(): There is no apntype="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private getUa(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 4

    .line 596
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 597
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const-string v1, "mmtel"

    .line 600
    invoke-interface {p0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    .line 601
    array-length v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    aget-object v2, v1, v3

    if-nez v2, :cond_2

    .line 602
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ss"

    .line 605
    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v0, "smsip"

    .line 603
    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    .line 608
    :cond_2
    :goto_1
    array-length p0, v1

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 612
    :cond_3
    array-length p0, v1

    move p1, v3

    :goto_2
    if-ge p1, p0, :cond_6

    aget-object v0, v1, p1

    if-nez v0, :cond_4

    goto :goto_3

    .line 617
    :cond_4
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-ne v2, p2, :cond_5

    return-object v0

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 621
    :cond_6
    aget-object p0, v1, v3

    return-object p0
.end method

.method private getUtImpi(I)Ljava/lang/String;
    .locals 1

    .line 625
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 629
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 630
    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private handleSoftPhoneEvent(Landroid/os/Message;)V
    .locals 9

    .line 778
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    .line 779
    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v2, "status"

    const/4 v3, 0x1

    const/16 v4, 0x198

    const-string v5, "errorCode"

    const-string v6, "UtServiceModule"

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 782
    :pswitch_0
    iget-boolean v1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mSuccess:Z

    if-eqz v1, :cond_0

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success to set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 786
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". reason = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mReason:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 788
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v7, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 808
    :pswitch_1
    iget-boolean p1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mSuccess:Z

    if-eqz p1, :cond_4

    const-string p1, "Success to get CallForwardingInfo"

    .line 809
    invoke-static {v6, v7, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    new-array p1, v3, [Landroid/os/Bundle;

    .line 812
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 814
    iget-object v0, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallForwardingInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 815
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v8, v4, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    if-ne v5, v8, :cond_1

    .line 816
    iget-boolean v5, v4, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    if-eqz v5, :cond_2

    .line 817
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 819
    :cond_2
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 821
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v8, "condition"

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 822
    iget-object v4, v4, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardNumber:Ljava/lang/String;

    const-string v5, "number"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    const-string v5, "serviceClass"

    .line 823
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    aput-object v1, p1, v7

    .line 827
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v7, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 829
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get CallForwardingInfo. reason = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 831
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v7, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    goto :goto_2

    .line 793
    :pswitch_2
    iget-boolean p1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mSuccess:Z

    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    if-eqz p1, :cond_5

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallWaitingInfo: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iget-boolean v1, v1, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->mActive:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v3, [Landroid/os/Bundle;

    .line 796
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    aput-object v1, p1, v7

    .line 797
    iget-object v0, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iget-boolean v0, v0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->mActive:Z

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 798
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v7, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    goto :goto_2

    .line 800
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get CallWaitingInfo. reason = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, v7, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 802
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 803
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v7, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    .line 839
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Process next request..."

    .line 840
    invoke-static {v6, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->dequeueRequest()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->processSpUtRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    goto :goto_3

    .line 843
    :cond_6
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isPsDataOffForUssd(I)Z
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPsDataOffForXcap(I)Z
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 945
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "xcap"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkEpdgApnExist(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPsRegistered(I)Z
    .locals 2

    .line 1492
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getMobileDataRegState(I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1496
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isUssdExempt(I)Z
    .locals 2

    .line 970
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtStateMachineInit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    return v1

    .line 978
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ussdExempt:I

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUtExempt(I)Z
    .locals 2

    .line 932
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtStateMachineInit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    return v1

    .line 940
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ssXcapConfigExempt:I

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUtStateMachineInit(I)Z
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onEpdgAvailabilityChanged(ZI)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aput-boolean p1, v0, p2

    .line 748
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 749
    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    .line 750
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aget-boolean p0, p0, p2

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->handleEpdgAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method

.method private performExemptUtService()V
    .locals 2

    const/4 v0, 0x0

    .line 1179
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1180
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtExempt(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1181
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 3

    const-string v0, "UtServiceModule"

    if-nez p2, :cond_0

    const-string p0, "UtProfile is null."

    .line 1687
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1691
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UtXcap["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1692
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractCrLogFromUtProfile(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;

    move-result-object p2

    .line 1694
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1695
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    const p0, 0x31000005

    .line 1696
    invoke-static {p0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method private processSpUtRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 10

    .line 1504
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    if-nez v0, :cond_0

    return-void

    .line 1507
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v1, 0x1

    .line 1508
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    .line 1510
    :try_start_0
    iget v2, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x72

    if-ne v2, v3, :cond_1

    .line 1511
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {v0, p0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getCallWaitingInfo(I)V

    goto/16 :goto_3

    :cond_1
    const/16 v3, 0x73

    if-ne v2, v3, :cond_2

    .line 1513
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iget-boolean p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-direct {v0, p1}, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;-><init>(Z)V

    .line 1514
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {p1, p0, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    goto :goto_3

    :cond_2
    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 1516
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {v0, p0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getCallForwardingInfo(I)V

    goto :goto_3

    :cond_3
    const/16 v0, 0x65

    if-ne v2, v0, :cond_8

    .line 1521
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    .line 1523
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    move v5, v1

    :goto_1
    move v6, v5

    goto :goto_2

    :cond_4
    move v5, v1

    move v6, v3

    goto :goto_2

    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    move v6, v1

    move v5, v3

    goto :goto_2

    :cond_6
    if-ne v0, v1, :cond_7

    .line 1531
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_7
    if-nez v0, :cond_4

    move v5, v3

    goto :goto_1

    .line 1538
    :goto_2
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    iget v7, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    iget v8, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v9, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    .line 1540
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {p1, p0, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p0, "UtServiceModule"

    const-string p1, "RemoteException happen"

    .line 1543
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private queryApnExist(ILjava/lang/String;Landroid/net/Uri;)Z
    .locals 8

    .line 1017
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "UtServiceModule"

    if-nez p0, :cond_0

    const-string p0, "queryApnExist(): There is no ImsContext"

    .line 1018
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 1022
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1024
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_3

    .line 1025
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1026
    invoke-static {p0}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 1031
    :cond_2
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p2

    const/16 p3, 0x800

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_1

    const-string p2, "queryApnExist: have Xcap !!!!!"

    .line 1032
    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 1037
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    .line 1022
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_3
    if-eqz p0, :cond_4

    .line 1037
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v0
.end method

.method private queryEpdgApnExist(ILjava/lang/String;Landroid/net/Uri;)Z
    .locals 8

    .line 998
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "UtServiceModule"

    if-nez p0, :cond_0

    const-string p0, "queryEpdgApnExist(): There is no ImsContext"

    .line 999
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 1003
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1006
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_1

    .line 1007
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryEpdgApnExist "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 1011
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    .line 1003
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 1011
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0
.end method

.method private registerAirplaneModeObserver()V
    .locals 3

    .line 1140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerMobileDataObserver()V
    .locals 3

    .line 1174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerObserver()V
    .locals 3

    .line 1260
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.ims.settings/mno"

    .line 1261
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mMnoUpdateObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 1260
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 6

    .line 505
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "UtServiceModule"

    if-ge v2, v1, :cond_1

    if-eq v2, p1, :cond_0

    .line 509
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConnection()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "already connected on another slot"

    .line 510
    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 511
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 515
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 516
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->enqueueRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    const-string p0, "Other request is processing now..."

    .line 518
    invoke-static {v3, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 520
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->processSpUtRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    goto :goto_1

    .line 523
    :cond_3
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->query(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    :goto_1
    return-void
.end method

.method private updateConfig(Landroid/os/Message;)V
    .locals 3

    .line 848
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 849
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 854
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->makeConfig(I)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->makeFeature(I)Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateConfig(Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;)V

    .line 856
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 857
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    const/4 v2, 0x0

    aput v2, p1, v0

    .line 858
    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setSentSimServDoc(IZ)V

    .line 859
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->enableUt(IZ)V

    .line 860
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 861
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    goto :goto_0

    .line 864
    :cond_1
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 865
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public bindSoftPhoneService()V
    .locals 3

    .line 1608
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    if-nez v0, :cond_0

    .line 1609
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.entitlement.softphone.SoftphoneService"

    .line 1610
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    const-string v0, "UtServiceModule"

    const-string v1, "mSoftphoneService is not null"

    .line 1614
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->connected()V

    :goto_0
    return-void
.end method

.method public checkAvailabilityError(I)I
    .locals 6

    .line 546
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const-string v1, "UtServiceModule"

    if-eqz v0, :cond_4

    .line 547
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 555
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    .line 556
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 561
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    if-eqz p0, :cond_1

    return v3

    :cond_1
    const-string p0, "checkAvailabilityError(): no matched profile with SIM"

    .line 564
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3ee

    return p0

    .line 568
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    aget-boolean p0, p0, p1

    if-nez p0, :cond_3

    const-string p0, "checkAvailabilityError(): UtStateMachine is not configured"

    .line 569
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3ef

    return p0

    :cond_3
    return v3

    :catchall_0
    move-exception p0

    .line 558
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    throw p0

    :cond_4
    :goto_0
    const-string p0, "checkAvailabilityError(): SIM is not ready"

    .line 548
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3ec

    return p0
.end method

.method public checkXcapApn(I)Z
    .locals 3

    .line 1088
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 1090
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getConfig()Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "xcap"

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1094
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1099
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkEpdgApnExist(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1103
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getMobileDataRegState(I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "UtServiceModule"

    const-string v0, "checkXcapApn(): ePDG XCAP APN not exist. PS also not registered."

    .line 1104
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1109
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getApnExist(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public connected()V
    .locals 3

    const-string v0, "UtServiceModule"

    const-string v1, "connected is started"

    .line 1566
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string p0, "no active account, supplementary service is not available, grey out."

    .line 1569
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1571
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerSupplementaryServiceListener(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deRegisterForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
    .locals 0

    .line 1373
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected dequeueRequest()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    .locals 2

    .line 1680
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 1681
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0
.end method

.method public dump()V
    .locals 2

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1651
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1652
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public enableUt(IZ)V
    .locals 3

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UtServiceModule"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtSwitch:[Z

    aput-boolean p2, v0, p1

    .line 1214
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    return-void
.end method

.method protected enqueueRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 0

    .line 1676
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActiveAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string p0, "UtServiceModule"

    const-string v0, "getActiveAccount is started"

    .line 1577
    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildActiveAccountUri()Landroid/net/Uri;

    move-result-object v2

    .line 1580
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1582
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active users"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 1586
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "account_id"

    .line 1588
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 1587
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1580
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 1592
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected getImpuOfType(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;
    .locals 3

    if-eqz p1, :cond_2

    .line 491
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 492
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v2, :cond_0

    .line 493
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPublicId for ATT : registered IMPU = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UtServiceModule"

    .line 493
    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0

    .line 499
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPublicId(I)Ljava/lang/String;
    .locals 4

    .line 664
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 665
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 668
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 670
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 671
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    if-eqz v2, :cond_2

    .line 673
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getImpuOfType(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 675
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 678
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_2

    if-eqz v2, :cond_2

    .line 680
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 682
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 688
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getimpi(I)Ljava/lang/String;

    move-result-object p1

    .line 689
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    .line 690
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 691
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v0, :cond_5

    const/4 p0, 0x0

    .line 697
    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpuFromIsim(I)Ljava/lang/String;

    move-result-object p0

    .line 700
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 701
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    .line 703
    :cond_4
    sget-object p1, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne v1, p1, :cond_6

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 704
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    .line 708
    :cond_6
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, ""

    :cond_7
    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "ss"

    .line 731
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSetting(ILjava/lang/String;I)I
    .locals 0

    .line 1664
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1668
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSetting(ILjava/lang/String;Z)Z
    .locals 0

    .line 1660
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getSetting(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1656
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1

    const/4 v0, 0x0

    .line 592
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method protected getimpi(I)Ljava/lang/String;
    .locals 2

    .line 638
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUtImpi(I)Ljava/lang/String;

    move-result-object p0

    .line 641
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 643
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object p0

    .line 648
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object p0

    .line 652
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "UtServiceModule"

    const-string v0, "There is no impi"

    .line 654
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    :cond_2
    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 758
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 772
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->handleSoftPhoneEvent(Landroid/os/Message;)V

    goto :goto_1

    .line 763
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez p1, :cond_3

    .line 764
    sget-object p1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 765
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 766
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->clearLastAuthInfo()V

    goto :goto_1

    .line 760
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateConfig(Landroid/os/Message;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public init()V
    .locals 11

    .line 158
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 163
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    .line 164
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    .line 165
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 167
    new-instance v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UtMachine"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLooper:Landroid/os/Looper;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    move-object v4, v10

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;)V

    .line 168
    invoke-virtual {v10, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->init(I)V

    .line 169
    invoke-virtual {v10}, Lcom/sec/internal/helper/StateMachine;->start()V

    .line 170
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aput-boolean v2, v4, v3

    .line 172
    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setSentSimServDoc(IZ)V

    .line 173
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aput v2, v4, v3

    .line 174
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v1, v4, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerObserver()V

    .line 178
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerAirplaneModeObserver()V

    .line 179
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerMobileDataObserver()V

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V

    return-void
.end method

.method public isInvalidUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z
    .locals 2

    .line 577
    iget p0, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v0, 0x0

    const/16 v1, 0x65

    if-eq p0, v1, :cond_0

    return v0

    .line 579
    :cond_0
    iget p0, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    iget-object p0, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "UtServiceModule"

    const-string p2, "Invalid request - Registration should have number."

    .line 580
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isSentSimServDoc(I)Z
    .locals 0

    .line 1218
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDoc:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method protected isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z
    .locals 5

    .line 528
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "ss_clip_clir_by_network"

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 529
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v3, "ss_callbarring_by_network"

    const/4 v4, 0x1

    invoke-interface {v1, p1, v3, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v1

    .line 530
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v3, "ss_callwaiting_by_network"

    invoke-interface {p0, p1, v3, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result p0

    .line 532
    iget p1, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    move v2, v4

    :cond_0
    return v2

    .line 534
    :cond_1
    iget p1, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 p2, 0x72

    if-eq p1, p2, :cond_4

    const/16 p2, 0x73

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x6a

    if-lt p1, p0, :cond_3

    const/16 p0, 0x6d

    if-gt p1, p0, :cond_3

    if-nez v0, :cond_3

    move v2, v4

    :cond_3
    return v2

    :cond_4
    :goto_0
    if-nez p0, :cond_5

    move v2, v4

    :cond_5
    return v2
.end method

.method public isUssdEnabled(I)Z
    .locals 5

    const-string/jumbo v0, "ussd_domain_setting"

    const-string v1, "CS"

    .line 951
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PS"

    .line 953
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "PSCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 954
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkSpecificPolicy(I)Z

    move-result v1

    :goto_1
    const-string v3, "UtServiceModule"

    if-eqz v1, :cond_2

    .line 958
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUssdExempt(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsDataOffForUssd(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "isUssdEnabled : USSI is not exempted."

    .line 959
    invoke-static {v3, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 964
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUssdEnabled with policy : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " enabled = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public isUtEnabled(I)Z
    .locals 9

    .line 872
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtStateMachineInit(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UtServiceModule"

    if-nez v0, :cond_0

    const-string p0, "UtStateMachine is not initialized yet"

    .line 873
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtSwitch:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    const-string p0, "UtService is disabled"

    .line 878
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 882
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 883
    sget-object v3, Lcom/sec/internal/constants/Mno;->GLOBE_PH:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkXcapApn(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "Doesn\'t have any XCAP apn"

    .line 884
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_2
    const-string/jumbo v3, "ss_domain_setting"

    const-string v4, "CS"

    .line 889
    invoke-virtual {p0, p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PS"

    .line 891
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    const-string v4, "PS_ALWAYS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "PSCS"

    .line 893
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "PS_ONLY_VOLTEREGIED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v4, "PS_ONLY_PSREGIED"

    .line 895
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 896
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsRegistered(I)Z

    move-result v4

    goto :goto_2

    :cond_5
    move v4, v1

    goto :goto_2

    .line 894
    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isVolteServiceRegistered(I)Z

    move-result v4

    goto :goto_2

    :cond_7
    :goto_1
    move v4, v5

    :goto_2
    if-eqz v4, :cond_8

    .line 900
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtExempt(I)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsDataOffForXcap(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string p0, "isUtEnabled : UtService is not exempted."

    .line 901
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 906
    :cond_8
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isForbidden()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v4, "Ut Request is blocked by previous 403 Error"

    .line 907
    invoke-static {v2, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v1

    .line 911
    :cond_9
    sget-object v6, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_a

    sget-object v6, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_b

    .line 912
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ril.ICC_TYPE"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "ril.IsCSIM"

    .line 913
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 914
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iccType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isCsim = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v7, ","

    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "4"

    .line 916
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    array-length v0, v6

    if-le v0, p1, :cond_b

    aget-object v0, v6, p1

    const-string v6, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "RUIM did not support UT interface"

    .line 917
    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 918
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    goto :goto_3

    :cond_b
    move v1, v4

    .line 923
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUtEnabled with policy : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " enabled = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method protected isVolteServiceRegistered(I)Z
    .locals 3

    .line 1471
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1475
    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 1479
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1480
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    .line 1481
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1482
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-nez v1, :cond_2

    .line 1483
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method protected makeConfig(I)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    .locals 5

    .line 214
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;-><init>()V

    const-string v1, "http_username"

    const-string v2, ""

    .line 215
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->username:Ljava/lang/String;

    const-string v1, "http_password"

    .line 216
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->passwd:Ljava/lang/String;

    const-string/jumbo v1, "xcap_root_uri_pref"

    const/4 v3, 0x2

    .line 217
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const-string v1, "auth_proxy_ip"

    .line 226
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    const-string v1, "bsf_ip"

    .line 227
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNAFDomain(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    .line 223
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getBSFDomain(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    :goto_0
    const-string v1, "auth_proxy_port"

    const/16 v3, 0x50

    .line 231
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    .line 232
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    const-string v1, "bsf_port"

    .line 233
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfPort:I

    const-string/jumbo v1, "user_agent"

    .line 234
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->userAgent:Ljava/lang/String;

    const-string/jumbo v1, "xcap_root_uri"

    .line 235
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xcapRootUri:Ljava/lang/String;

    const-string v1, "apn_selection"

    const-string/jumbo v2, "xcap"

    .line 236
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    const-string/jumbo v1, "xdm_user_agent"

    const-string v2, "3gpp-gba"

    .line 237
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeXcapUserAgentHeader(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    const-string/jumbo v1, "ss_domain_setting"

    const-string v2, "CS"

    .line 240
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CS_ALWAYS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 244
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->unregisterCwdbObserver(I)V

    goto :goto_2

    .line 242
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerCwdbObserver(I)V

    .line 247
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UtServiceModule"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected makeFeature(I)Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;
    .locals 5

    .line 252
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;-><init>()V

    const-string/jumbo v1, "ss_support_tls"

    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_tls:Z

    const-string/jumbo v1, "ss_select_mode"

    const/4 v3, 0x1

    .line 254
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    const-string/jumbo v1, "ss_cb_select_mode"

    .line 255
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    const-string/jumbo v1, "ss_support_media"

    .line 256
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    const-string/jumbo v1, "ss_support_ss_namespace"

    .line 257
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    const-string/jumbo v1, "ss_support_simservs_retry"

    .line 258
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportSimservsRetry:Z

    const-string/jumbo v1, "ss_cf_busy_ruleid"

    const-string v4, "call-diversion-busy-audio"

    .line 259
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfb:Ljava/lang/String;

    const-string/jumbo v1, "ss_cf_unconditional_ruleid"

    const-string v4, "call-diversion-unconditional"

    .line 260
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfu:Ljava/lang/String;

    const-string/jumbo v1, "ss_cf_no_answer_ruleId"

    const-string v4, "call-diversion-no-reply"

    .line 261
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnr:Ljava/lang/String;

    const-string/jumbo v1, "ss_cf_not_reachable_ruleid"

    const-string v4, "call-diversion-not-reachable-audio"

    .line 262
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnrc:Ljava/lang/String;

    const-string/jumbo v1, "ss_cf_not_logged_in_ruleid"

    const-string v4, "call-diversion-not-logged-in"

    .line 263
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfni:Ljava/lang/String;

    const-string/jumbo v1, "ss_icb_unconditional_ruleid"

    const-string v4, ""

    .line 264
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    const-string/jumbo v1, "ss_icb_roaming_ruleid"

    .line 265
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    const-string/jumbo v1, "ss_ocb_unconditional_ruleid"

    .line 266
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    const-string/jumbo v1, "ss_ocb_international_ruleid"

    .line 267
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic:Ljava/lang/String;

    const-string/jumbo v1, "ss_ocb_international_ex_home_ruleid"

    .line 268
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic_exhc:Ljava/lang/String;

    const-string/jumbo v1, "ss_timer_for_403"

    const/4 v4, -0x1

    .line 269
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->timerFor403:I

    const-string/jumbo v1, "ss_need_separate_CFNL"

    .line 270
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNL:Z

    const-string/jumbo v1, "ss_need_separate_CFNRy"

    .line 271
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNRY:Z

    const-string/jumbo v1, "ss_need_separate_CFA"

    .line 272
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFA:Z

    const-string/jumbo v1, "ss_is_need_get_first"

    .line 273
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedFirstGet:Z

    const-string/jumbo v1, "ss_error_msg_display"

    .line 274
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isErrorMsgDisplay:Z

    const-string/jumbo v1, "ss_disconnect_xcap_pdn"

    .line 275
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isDisconnectXcapPdn:Z

    const-string/jumbo v1, "ss_reuse_connection"

    .line 276
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isReuseConnection:Z

    const-string/jumbo v1, "ss_delay_disconnect_xcap_pdn"

    const/4 v4, 0x5

    .line 277
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->delay_disconnect_pdn:I

    const-string v1, "all"

    .line 278
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ss_csfb_error_code_list"

    invoke-virtual {p0, p1, v4, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->csfbErrorCodeList:[Ljava/lang/String;

    const-string/jumbo v1, "ss_select_ip_version"

    const-string v4, "default"

    .line 279
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doConvertIpVersion(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    const-string/jumbo v1, "ss_insert_new_rule"

    .line 280
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->insertNewRule:Z

    const-string/jumbo v1, "ss_no_media_for_CB"

    .line 281
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->noMediaForCB:Z

    const-string/jumbo v1, "ss_cf_set_all_media"

    .line 282
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->setAllMediaCF:Z

    const-string/jumbo v1, "ss_cf_uri_type"

    const-string v4, "SIP"

    .line 283
    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfUriType:Ljava/lang/String;

    const-string/jumbo v1, "ss_support_alternative_media_for_cf"

    .line 284
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCf:Z

    const-string/jumbo v1, "ss_support_alternative_media_for_cb"

    .line 285
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCb:Z

    const-string/jumbo v1, "ss_is_need_international_number"

    .line 286
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedInternationalNumber:Z

    const-string/jumbo v1, "ss_xcap_config_exempt"

    .line 287
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ssXcapConfigExempt:I

    const-string/jumbo v1, "ussi_exempt"

    .line 288
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ussdExempt:I

    .line 290
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 291
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p1

    .line 292
    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p0, v1, :cond_0

    const-string p0, "CHM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 293
    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNRY:Z

    .line 294
    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNL:Z

    :cond_0
    return-object v0
.end method

.method protected needToGetSimservDocOnBootup(I)Z
    .locals 3

    .line 1187
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1188
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 1189
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isSentSimServDoc(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1193
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isVoiceRoaming(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 1195
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needToQuerySimservDocOnBootup : isUtEnabled(phoneId) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isPsRegistered() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsRegistered(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", SimUtil.getActiveDataPhoneId() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPdnController.isVoiceRoaming(phoneId) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 1198
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isVoiceRoaming(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSentSimServDocCount[phoneId]) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UtServiceModule"

    .line 1195
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method protected declared-synchronized notifyFailResult(IIILandroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "UtServiceModule"

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFailResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 1434
    :try_start_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {p1, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationUpdateFailed(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1435
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1438
    :cond_0
    :try_start_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {p1, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationQueryFailed(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1439
    :try_start_4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1441
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized notifySuccessResult(III[Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "UtServiceModule"

    .line 1378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySuccessResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 1397
    :pswitch_0
    :try_start_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    aget-object p2, p4, v0

    const-string/jumbo p4, "status"

    invoke-virtual {p2, p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-interface {p1, p3, p2}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationCallWaitingQueried(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1399
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1407
    :pswitch_1
    :try_start_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    aget-object p2, p4, v0

    invoke-interface {p1, p3, p2}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1409
    :try_start_4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1390
    :pswitch_2
    :try_start_5
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {p1, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationCallBarringQueried(I[Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1392
    :try_start_6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1421
    :pswitch_3
    :try_start_7
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {p1, p3}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationUpdated(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1423
    :try_start_8
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1382
    :pswitch_4
    :try_start_9
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {p1, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationCallForwardQueried(I[Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1384
    :try_start_a
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1428
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 2

    .line 738
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkChanged to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 740
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aget-boolean v0, v0, p2

    if-eq p1, v0, :cond_0

    .line 741
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->onEpdgAvailabilityChanged(ZI)V

    :cond_0
    return-void
.end method

.method public queryCLIP(I)I
    .locals 3

    .line 362
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 364
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6a

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 365
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 366
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCLIR(I)I
    .locals 3

    .line 351
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 353
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6c

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 354
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 355
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCOLP(I)I
    .locals 3

    .line 384
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 386
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6e

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 387
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 388
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCOLR(I)I
    .locals 3

    .line 373
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 375
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x70

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 376
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 377
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCallBarring(III)I
    .locals 2

    .line 329
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result p3

    .line 331
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCBType(ZI)I

    move-result v1

    invoke-direct {v0, v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(III)V

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return p3
.end method

.method public queryCallForward(IILjava/lang/String;)I
    .locals 3

    .line 340
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 342
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x64

    invoke-direct {v1, v2, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IILjava/lang/String;I)V

    .line 343
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 344
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCallWaiting(I)I
    .locals 3

    .line 318
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 320
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x72

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 321
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 322
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 1

    .line 1461
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 1463
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    .line 1464
    invoke-virtual {v0, p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    :cond_0
    return-object v0
.end method

.method public querySimServDoc(I)I
    .locals 4

    .line 305
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    const/4 v1, 0x1

    .line 306
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setSentSimServDoc(IZ)V

    .line 307
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aget v3, v2, p1

    add-int/2addr v3, v1

    aput v3, v2, p1

    .line 309
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x74

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 310
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 311
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public registerCwdbObserver(I)V
    .locals 3

    .line 1266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;

    invoke-direct {v1, p0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1270
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volte_call_waiting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 1272
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volte_call_waiting_slot2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method public registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
    .locals 0

    .line 1368
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSupplementaryServiceListener(Ljava/lang/String;)V
    .locals 1

    .line 1597
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    .line 1599
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getClientId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    .line 1600
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSupplementaryServiceListener:Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    invoke-interface {v0, p1, p0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1603
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected setImsCallWaiting(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1247
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volte_call_waiting_slot2"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    .line 1250
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volte_call_waiting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 1253
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsCallWaiting(): activate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UtServiceModule"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1254
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    const-string v1, "enable_call_wait"

    invoke-static {p0, p1, v1, v0}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;Z)V

    return v0
.end method

.method protected setLastUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 1672
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSentSimServDoc(IZ)V
    .locals 0

    .line 1222
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDoc:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public unbindSoftPhoneService()V
    .locals 2

    .line 1620
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 1622
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    .line 1623
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1625
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is bind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UtServiceModule"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterCwdbObserver(I)V
    .locals 2

    .line 1277
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1279
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public updateCLIP(IZ)I
    .locals 3

    .line 458
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 460
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6b

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IZI)V

    .line 461
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 462
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public updateCLIR(II)I
    .locals 3

    .line 447
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 449
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6d

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(III)V

    .line 450
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 451
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public updateCOLP(IZ)I
    .locals 3

    .line 480
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 482
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6f

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IZI)V

    .line 483
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 484
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->query(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public updateCOLR(II)I
    .locals 3

    .line 469
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 471
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x71

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(III)V

    .line 472
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->query(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .line 395
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v8

    .line 396
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 398
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    if-ne p2, v2, :cond_0

    move p2, v3

    .line 401
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :cond_1
    const/16 v0, 0x9

    if-ne p2, v0, :cond_2

    :goto_0
    move v2, v3

    goto :goto_2

    :cond_2
    if-ne p2, v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    move v2, p2

    .line 410
    :goto_2
    new-instance p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCBType(ZI)I

    move-result v1

    move-object v0, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    move v6, v8

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IIII[Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v8
.end method

.method public updateCallForward(IIILjava/lang/String;II)I
    .locals 9

    .line 420
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v8

    .line 421
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 422
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    if-gtz p6, :cond_1

    const/16 p6, 0x14

    :cond_1
    move v6, p6

    .line 427
    new-instance p6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v1, 0x65

    move-object v0, p6

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IIILjava/lang/String;III)V

    .line 428
    invoke-direct {p0, p1, p6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 429
    invoke-direct {p0, p1, p6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v8
.end method

.method public updateCallWaiting(IZI)I
    .locals 3

    .line 436
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 438
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x73

    invoke-direct {v1, v2, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IZII)V

    .line 439
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 440
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public updateCapabilities(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v2, v1, v3

    new-array v0, v0, [Z

    .line 1448
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1450
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result v2

    aput-boolean v2, v0, v3

    .line 1453
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object p0

    invoke-interface {p0, p1, v1, v0}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->updateCapabilities(I[I[Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "UtServiceModule"

    const-string v0, "GoogleImsService is null. Invalid access."

    .line 1455
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected writeDump(ILjava/lang/String;)V
    .locals 0

    .line 1700
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    return-void
.end method
