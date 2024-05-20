.class public Lcom/sec/internal/ims/core/sim/SimManager;
.super Landroid/os/Handler;
.source "SimManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;,
        Lcom/sec/internal/ims/core/sim/SimManager$AuthRequest;,
        Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;
    }
.end annotation


# static fields
.field protected static final EVENT_ADS_CHANGED:I = 0x6

.field protected static final EVENT_IMSSWITCH_UPDATED:I = 0x7

.field protected static final EVENT_LOAD_MNOMAP:I = 0x8

.field protected static final EVENT_SIM_REFRESH:I = 0x3

.field protected static final EVENT_SIM_STATE_CHANGED:I = 0x1

.field protected static final EVENT_SOFTPHONE_AUTH_FAILED:I = 0x5

.field protected static final EVENT_UICC_CHANGED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SimManager"

.field private static final SMF_MNONAME_PROP:Ljava/lang/String; = "sys.smf.mnoname"

.field protected static final SOFTPHONE_OPERATOR_CODE:Ljava/lang/String; = "310999"

.field static final URI_UPDATE_GLOBAL:Landroid/net/Uri;

.field static final URI_UPDATE_MNO:Landroid/net/Uri;

.field private static final sInteractAcrossUsersFullPermission:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS_FULL"


# instance fields
.field OMCNW_CODE:Ljava/lang/String;

.field OMC_CODE:Ljava/lang/String;

.field final mAkaEventReceiver:Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;

.field mContext:Landroid/content/Context;

.field mDevMno:Lcom/sec/internal/constants/Mno;

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field final mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mHighestPriorityEhplmn:Ljava/lang/String;

.field protected mImsServiceSwitchObserver:Landroid/database/ContentObserver;

.field private mImsi:Ljava/lang/String;

.field mImsiFromImpi:Ljava/lang/String;

.field mIsCrashSimEvent:Z

.field private mIsGtsAppInstalled:Z

.field mIsGuestMode:Z

.field private mIsOutBoundSIM:Z

.field private mIsRefresh:Z

.field private mIsimLoaded:Z

.field private mLabSimCard:Z

.field private mLastImsi:Ljava/lang/String;

.field mMnoInfo:Landroid/content/ContentValues;

.field mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

.field final mMultiUserReceiver:Landroid/content/BroadcastReceiver;

.field mNetMno:Lcom/sec/internal/constants/Mno;

.field mOperatorFromImpi:Ljava/lang/String;

.field mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

.field final mSimIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSimMnoName:Ljava/lang/String;

.field protected final mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mSimSlot:I

.field mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field protected final mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

.field mSubscriptionId:I

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected final mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected notifySimReadyAlreadyDone:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetGtsAppInstalled(Lcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetGtsAppInstalled(Lcom/sec/internal/ims/core/sim/SimManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->setGtsAppInstalled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.ims.settings/mno"

    .line 111
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_MNO:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.settings/global"

    .line 112
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_GLOBAL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;Lcom/sec/internal/helper/os/ITelephonyManager;)V
    .locals 3

    .line 147
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, -0x1

    .line 84
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 87
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    .line 88
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 89
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    const-string v1, ""

    .line 90
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    .line 119
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGuestMode:Z

    .line 120
    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mAkaEventReceiver:Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;

    .line 121
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 122
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    .line 125
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 126
    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 127
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 128
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    .line 129
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 130
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    .line 131
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 132
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 133
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 134
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 135
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    .line 137
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 138
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 139
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 140
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 141
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 142
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    .line 1467
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$1;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1509
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$2;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 1553
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$3;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "SimManager"

    const/16 v2, 0x12c

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 150
    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    .line 151
    iput p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 152
    iput-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "subId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", info: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 156
    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 157
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/sim/SimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    :cond_0
    const-string p2, "ro.csc.sales_code"

    const-string/jumbo p3, "unknown"

    .line 161
    invoke-static {p2, p3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 163
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 164
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 167
    :cond_1
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getOmcNetworkCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 168
    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 169
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "OMC_CODE(create): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", mDevMno: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "OMCNW_CODE(create): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", mNetMno: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 173
    new-instance p2, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;

    invoke-direct {p2, p0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 174
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p3, p1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private getGtsAppInstalled()Z
    .locals 0

    .line 1940
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    return p0
.end method

.method private isValidAkaResponse(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "2wQAAAAAAAA="

    .line 643
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x10000021

    if-eqz v0, :cond_0

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed to challenge"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1

    .line 646
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 647
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", empty response"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1
.end method

.method public static isValidImpu(Ljava/lang/String;)Z
    .locals 2

    .line 621
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 626
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid impu : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimManager"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private notifySimRefresh()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private notifySimRemoved()V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private setGtsAppInstalled(Z)V
    .locals 0

    .line 1936
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    return-void
.end method


# virtual methods
.method checkOutBoundSIM()Z
    .locals 3

    .line 442
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SimManager"

    if-eqz v0, :cond_0

    const-string p0, "isOutboundSim, SIM not ready"

    .line 443
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isLabSimCard()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 453
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUnifiedSalesCodeInTSS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->includedSimByTSS(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 458
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getNetworkNames()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const-string p0, "isOutboundSim, GCF mode, LabSim card/ Test Bed SIM inserted."

    .line 448
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
    .locals 1

    .line 1657
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1658
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1659
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deregisterForSimReady(Landroid/os/Handler;)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimRefresh(Landroid/os/Handler;)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimRemoved(Landroid/os/Handler;)V
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public dump()V
    .locals 5

    .line 1899
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1900
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1901
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1902
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimStatePrev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1903
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1904
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsimLoaded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1905
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsOutBound: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1906
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v0, :cond_0

    .line 1907
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimDataAdaptor : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1909
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_2

    .line 1910
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1911
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "impi: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1912
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1913
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "homedomainName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1914
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "impuFromSim[]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1916
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1917
    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1916
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1919
    :cond_2
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1922
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1923
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->dump()V

    return-void
.end method

.method public getDerivedImpi()Ljava/lang/String;
    .locals 7

    .line 1724
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "getDerivedImpi:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1725
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1726
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1728
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 1733
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 1735
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isValidSimOperator(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1736
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpi: operator is invalid"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    const/4 v1, 0x3

    .line 1741
    invoke-virtual {v3, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1742
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1744
    sget-object v5, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x1

    if-ne v0, v5, :cond_2

    .line 1745
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, p0

    const-string p0, "%s@lte-lguplus.co.kr"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1746
    :cond_2
    sget-object v5, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    if-ne v0, v5, :cond_3

    .line 1747
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, p0

    const-string p0, "%s@ims.taiwanmobile.com"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1748
    :cond_3
    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v5, :cond_4

    .line 1749
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, p0

    const-string p0, "%s@ims.mnc011.mcc460.3gppnetwork.org"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1750
    :cond_4
    sget-object v5, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v5, :cond_5

    .line 1751
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, p0

    const-string p0, "%s@ims.mnc007.mcc455.3gppnetwork.org"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1753
    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v6

    const/4 p0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1729
    :cond_6
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpi: IMSI is not found. Using [sip:111@example.com]"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "111@example.com"

    return-object p0
.end method

.method public getDerivedImpu()Ljava/lang/String;
    .locals 5

    .line 1762
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "getDerivedImpu:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1763
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1764
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 1766
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1771
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)[I

    move-result-object p0

    if-nez p0, :cond_1

    return-object v3

    .line 1777
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 1778
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string/jumbo v1, "sip:%s@ims.taiwanmobile.com"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1779
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 1780
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string/jumbo v1, "sip:%s@ims.mnc011.mcc460.3gppnetwork.org"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1781
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 1782
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string/jumbo v1, "sip:%s@ims.mnc007.mcc455.3gppnetwork.org"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1784
    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    aget v2, p0, v4

    .line 1785
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string/jumbo p0, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    .line 1784
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 1767
    :cond_5
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpu: IMSI is not found."

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method public getDerivedImpuFromMsisdn()Ljava/lang/String;
    .locals 5

    .line 1689
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "getDerivedImpuFromMsisdn:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1690
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1692
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    .line 1694
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1695
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpuFromMsisdn: msisdn is not found"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1699
    :cond_0
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)[I

    move-result-object v3

    if-nez v3, :cond_1

    .line 1701
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDerivedImpi: operator is invalid. operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "111@example.com"

    return-object p0

    .line 1706
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ne v0, p0, :cond_2

    .line 1707
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string/jumbo v1, "sip:%s@ims.bell.ca"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1708
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_4

    const-string p0, "+82"

    .line 1709
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    .line 1710
    invoke-virtual {v2, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1712
    :cond_3
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string/jumbo v1, "sip:%s@lte-lguplus.co.kr"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1714
    :cond_4
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    aget v2, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x2

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDevMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1868
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getEfImpuList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1794
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v1, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 1799
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    if-eqz v3, :cond_2

    .line 1800
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1803
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getEmergencyImpu()Ljava/lang/String;
    .locals 3

    .line 1840
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1841
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getEfImpuList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getEmergencyImpu(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1845
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    const-string/jumbo v2, "sip:anonymous@anonymous.invalid"

    if-nez v0, :cond_4

    .line 1848
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 1850
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_2

    .line 1852
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1856
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 1859
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHighestPriorityEhplmn()Ljava/lang/String;
    .locals 0

    .line 1585
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    return-object p0
.end method

.method getISimDataValidity()I
    .locals 8

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v1

    .line 586
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "isIsimDataValid: "

    const-string v5, "SimManager"

    const/4 v6, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v3, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 598
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v3

    or-int/2addr v6, v3

    .line 599
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 590
    :cond_1
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_NOT_EXISTS:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v3

    or-int/2addr v6, v3

    .line 591
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 603
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 604
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPI_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v2

    or-int/2addr v6, v2

    .line 605
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 608
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 609
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 610
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "Allow empty EF_HOMEDOMAIN only when the EHPLMN is available"

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_2

    .line 612
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v1

    or-int/2addr v6, v1

    .line 613
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_2
    return v6
.end method

.method public getImpi()Ljava/lang/String;
    .locals 1

    .line 1664
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImpuFromIsim(I)Ljava/lang/String;
    .locals 2

    .line 1829
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1831
    array-length v0, p0

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 1835
    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImpuFromSim()Ljava/lang/String;
    .locals 3

    .line 1810
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1812
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1813
    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 1816
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getEfImpuList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1818
    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v1, p0

    :cond_3
    return-object v1
.end method

.method public getImsi()Ljava/lang/String;
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1625
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1626
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    .line 1628
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method public getImsiFromImpi()Ljava/lang/String;
    .locals 1

    .line 1638
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1641
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    return-object p0
.end method

.method public getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isSimLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 639
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "SimManager"

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 657
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 662
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getIsimAuthentication calling - AppType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 666
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v5, 0x2

    .line 667
    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x10

    invoke-static {v5, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    move v6, v7

    move v5, v8

    goto :goto_0

    :cond_1
    const p1, 0x10000020

    .line 670
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",REQ ISIM AUTH"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 671
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 672
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    const/16 v6, 0x81

    invoke-interface {v2, v5, p2, v6, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 674
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isATTMexico()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 680
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidAkaResponse(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 681
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIsimAuthentication result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const-string p0, "mGI="

    return-object p0

    .line 687
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "null"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_2

    :cond_4
    const p2, 0x10000021

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",LEN:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 699
    :try_start_0
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    new-instance p1, Ljava/lang/StringBuilder;

    array-length p2, p0

    mul-int/2addr p2, v3

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 706
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resultBytes.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :goto_1
    array-length p2, p0

    if-ge v4, p2, :cond_5

    .line 709
    aget-byte p2, p0, v4

    shr-int/lit8 p2, p2, 0x4

    and-int/lit8 p2, p2, 0xf

    const-string v0, "0123456789abcdef"

    .line 710
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    aget-byte p2, p0, v4

    and-int/lit8 p2, p2, 0xf

    .line 712
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 714
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decoded result : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 701
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to decode the AKA RESPONSE - retry as MAC ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "9862"

    return-object p0

    :cond_6
    :goto_2
    const-string p1, "getIccAuthentication failed"

    .line 688
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 690
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateEcallFailForUseEregiTimer(I)V

    :cond_7
    return-object v0

    .line 658
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong parameter - AppType : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " nonce : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 0

    .line 1612
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 0

    .line 1617
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMnoFromNetworkPlmn(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoNamesFromNetworkPlmn(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const-string p1, "DEFAULT"

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method public getMnoInfo()Landroid/content/ContentValues;
    .locals 1

    .line 1932
    new-instance v0, Landroid/content/ContentValues;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-direct {v0, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    return-object v0
.end method

.method getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1945
    sget-char p0, Lcom/sec/internal/constants/Mno;->GC_DELIMITER:C

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    .line 1947
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1873
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getNetworkNames()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 463
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    .line 466
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v9, v2

    .line 471
    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperatorFromImpi()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 472
    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsiFromImpi()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v0

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGid2(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 474
    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 473
    invoke-static/range {v3 .. v9}, Lcom/sec/internal/ims/util/CscParser;->getNetworkNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRilSimOperator()Ljava/lang/String;
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "ril.simoperator"

    const-string v2, "ETC"

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRilSimOperator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimCountryIsoForSubId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1884
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method public getSimMnoName()Ljava/lang/String;
    .locals 0

    .line 1894
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    return-object p0
.end method

.method getSimMobilityType(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;)I"
        }
    .end annotation

    .line 1976
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 1977
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 1980
    :cond_1
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityForRcs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1982
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1983
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    const/4 v0, 0x2

    :cond_6
    :goto_1
    return v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 2

    .line 528
    invoke-static {}, Lcom/sec/internal/constants/Mno;->getMockOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 534
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "310999"

    return-object p0

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimOperator: value ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getSimOperatorFromImpi()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 550
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    return-object p0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 0

    .line 1669
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimSlotCount()I
    .locals 0

    .line 1567
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method public getSimSlotIndex()I
    .locals 0

    .line 1580
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    return p0
.end method

.method public getSimState()I
    .locals 2

    .line 1674
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_1

    .line 1675
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1676
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result p0

    return p0

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotIndex()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSimpleEventLog()Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 1927
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method public getSubscriptionId()I
    .locals 1

    .line 1572
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    if-gez v0, :cond_0

    .line 1573
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1575
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    return p0
.end method

.method handldle_Locked(Ljava/lang/String;)V
    .locals 6

    .line 1212
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v0

    const-string v1, "ro.csc.sales_code"

    const-string/jumbo v2, "unknown"

    .line 1215
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1216
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1217
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1219
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "SIM LOCKED"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMC_CODE(locked): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDevMno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1223
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sys.smf.mnoname"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1229
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "hassim"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1230
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mnoname"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mvnoname"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "imsSwitchType"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1234
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    .line 1235
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v5, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    aput-object v5, v4, v3

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->isOneOf([Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 1238
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1427
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1429
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1452
    :pswitch_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    if-nez p1, :cond_0

    .line 1453
    new-instance p1, Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/core/sim/MnoMap;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    goto :goto_0

    .line 1458
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    .line 1459
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateGlobalSetting(I)V

    goto :goto_0

    .line 1448
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->onADSChanged(I)V

    goto :goto_0

    .line 1444
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSoftphoneAuthFailed()V

    goto :goto_0

    .line 1440
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimRefresh()V

    goto :goto_0

    .line 1436
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifyUiccChanged()V

    goto :goto_0

    .line 1431
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimStateChange(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimStateChanged()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method handleSimStateChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1243
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isSimAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1244
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "SimManager"

    const-string v4, "handleSimChange: SIM is ready."

    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1246
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsiFromImpi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    goto :goto_0

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    .line 1253
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1254
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v4

    .line 1256
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 1257
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {v5, v6, p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getEventType(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;ZZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "EVTT"

    .line 1256
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1258
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "SCID"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1259
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x10

    .line 1260
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v4, "GID1"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "ISIM"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1263
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1, v5, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "VLTS"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1264
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1, v4, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "VILS"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1271
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isGBASupported()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1272
    sget-object p1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->GBA_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->getValue()I

    move-result p1

    or-int/2addr p1, v2

    goto :goto_1

    :cond_2
    move p1, v2

    .line 1276
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->hasValidMsisdn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1277
    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->MSISDN_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->getValue()I

    move-result v4

    or-int/2addr p1, v4

    .line 1278
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "Invalid MSISDN"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-lez p1, :cond_4

    .line 1283
    invoke-static {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->intToHexStr(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "SMVL"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_4
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz p1, :cond_5

    .line 1288
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getISimDataValidity()I

    move-result p1

    if-lez p1, :cond_5

    .line 1290
    invoke-static {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->intToHexStr(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ISVL"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "block_regi_on_invalid_isim"

    invoke-static {v5, v6, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isEsim()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1293
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "onSimStateChange: invalid ISIM!"

    invoke-static {v3, v1, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1294
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    .line 1295
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "INVALID_FIELD"

    invoke-virtual {v1, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const v1, 0x10000005

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",INVLD ISIM,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1301
    :cond_5
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v3, "SIMI"

    invoke-static {p1, v1, v3, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1304
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 1305
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz v4, :cond_8

    .line 1308
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    goto :goto_3

    .line 1310
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, p2, :cond_8

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimAppLoaded()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1312
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz p1, :cond_7

    .line 1313
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    const-string p1, "ISIM_LOADED"

    .line 1314
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_7
    const-string p1, "DELAYED_ISIM_LOAD"

    .line 1318
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    :goto_3
    return-void
.end method

.method handleSubscriptionId()Z
    .locals 4

    .line 853
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 856
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "SimManager"

    const-string v3, "onSimStateChange:[LOADED] subInfo is not created yet. retry in 1 sec."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const v0, 0x10000002

    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",NO SUBINFO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    :cond_0
    const-string v0, "LOADED"

    .line 861
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p0, 0x0

    return p0

    .line 865
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->notifySubscriptionIdChanged(Landroid/telephony/SubscriptionInfo;)V

    .line 866
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    return v1
.end method

.method handleVsim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 840
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    const-string p2, "SimManager"

    const-string v0, "Enable virtual SIM"

    .line 841
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 p2, 0x1

    .line 843
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 844
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imsSwitchType"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "VSIM LOADED"

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "LOADED"

    .line 847
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionId()Z

    :cond_1
    :goto_0
    return-void
.end method

.method handle_Delayed_IsimLoaded()Z
    .locals 4

    .line 1083
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v2, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "ISIM_LOADED"

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1086
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method handle_IsimLoaded()Z
    .locals 4

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "ISIM_LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1094
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1097
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_0

    .line 1099
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move v0, v1

    .line 1101
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    const-string v0, "SimManager"

    const-string v2, "fix for exceptional case : LOADED notified before ISIM_LOADED"

    .line 1103
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1106
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    return v0
.end method

.method handle_Loaded(Ljava/lang/String;)Z
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 872
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOADED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "LOADED"

    .line 873
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 875
    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v5

    if-nez v5, :cond_0

    .line 877
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v2

    .line 881
    :cond_0
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    :cond_1
    if-eqz v4, :cond_1e

    .line 886
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidOperator(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x3e8

    const-string v8, "SimManager"

    const/4 v9, 0x0

    if-nez v5, :cond_2

    .line 887
    iget v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "onSimStateChange: [LOADED] but operator is invalid. retry in 1 sec."

    invoke-static {v8, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const v4, 0x10000001

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",INVLD OP:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 890
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 891
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v9

    .line 895
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionId()Z

    move-result v5

    if-nez v5, :cond_3

    return v9

    .line 899
    :cond_3
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v10

    invoke-interface {v5, v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 900
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v10

    .line 901
    iget-object v11, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v11

    .line 902
    iget-object v12, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v12

    .line 903
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGid2(I)Ljava/lang/String;

    move-result-object v15

    .line 905
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsi:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " gid1:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " gid2:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " impi:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-static {v10}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " spname:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 905
    invoke-virtual {v13, v14, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 907
    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImsi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 908
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "onSimStateChange: [LOADED] but imsi is invalid. retry in 1 sec."

    invoke-static {v8, v1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x10000003

    .line 909
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",INVLD IMSI,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 911
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 912
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    return v0

    :cond_4
    const-string v3, "ro.csc.sales_code"

    const-string/jumbo v6, "unknown"

    .line 917
    invoke-static {v3, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 919
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 920
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 922
    :cond_5
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMC_CODE(loaded): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mDevMno: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 924
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getOmcNetworkCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 925
    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 926
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMCNW_CODE(loaded): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mNetMno: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 928
    invoke-static {}, Lcom/sec/internal/helper/os/ImsCscFeature;->getInstance()Lcom/sec/internal/helper/os/ImsCscFeature;

    move-result-object v3

    .line 934
    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v6}, Lcom/sec/internal/helper/os/ImsCscFeature;->clear(I)V

    const-string v3, "00101"

    .line 936
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    const-string v6, "CPW"

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 937
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "(CPW) & 00101 sim card, Enable GCF mode"

    invoke-static {v8, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 938
    invoke-static {v2}, Lcom/sec/internal/helper/os/DeviceUtil;->setGcfMode(Z)V

    :cond_6
    const-string v3, ""

    .line 941
    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    .line 943
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 944
    sget-object v3, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    const/4 v6, 0x0

    goto/16 :goto_4

    .line 946
    :cond_7
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    if-nez v3, :cond_8

    .line 947
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "mnomap is empty"

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 948
    new-instance v3, Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-direct {v3, v6, v7}, Lcom/sec/internal/ims/core/sim/MnoMap;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    :cond_8
    if-eqz v10, :cond_b

    .line 951
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 952
    invoke-static {v10}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->extractMnoFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 954
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 955
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->extractImsiFromImpi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_9
    move-object v6, v5

    .line 957
    :goto_0
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    move-object v14, v3

    move-object v7, v15

    move-object v15, v6

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 958
    invoke-static {v9}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v10

    .line 959
    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "DSH5G"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 960
    :cond_a
    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    .line 961
    iput-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    move-object v1, v3

    move-object v5, v6

    goto :goto_1

    :cond_b
    move-object v7, v15

    .line 965
    :cond_c
    :goto_1
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 966
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v9

    invoke-interface {v7, v9}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v1, v7}, Lcom/sec/internal/ims/core/sim/MnoMap;->changeMnoNameByIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 968
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/core/sim/MnoMap;->isGcBlockListContains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->isMnoHasGcBlockExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    move v6, v2

    goto :goto_2

    :cond_d
    const/4 v6, 0x0

    .line 969
    :goto_2
    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isGlobalGcEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 970
    sget-object v7, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v6, 0x0

    .line 974
    :cond_e
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    const-string v7, "LABSIM"

    .line 976
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 977
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 978
    iput-boolean v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    const/4 v6, 0x0

    goto :goto_3

    .line 981
    :cond_f
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 982
    iput-boolean v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 987
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v7, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v7, :cond_11

    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    const-string v7, "SUP"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 988
    :cond_10
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "With SUP CSC or GtsAppInstalled, use GCF profile for GTS testing."

    invoke-static {v8, v3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 989
    sget-object v3, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 992
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v7, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v7, :cond_12

    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    const-string v7, "DEFAULT"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 993
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v9, "handle_Loaded: Mno.GENERIC Update Name, Country, Region"

    invoke-virtual {v3, v7, v9}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 994
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->updateGenerictMno(Ljava/lang/String;)V

    .line 995
    sget-object v3, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 999
    :cond_12
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sys.smf.mnoname"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "|LOADED"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM PLMN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mSimMno: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1002
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1005
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1006
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "hassim"

    invoke-virtual {v3, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1007
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "globalgcenabled"

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1008
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mnoname"

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mvnoname"

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v6, "imsi"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3, v5, v6, v7, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->updateCommonHeader(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->checkOutBoundSIM()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 1017
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1, v3, v5}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1018
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMobilityType(Ljava/util/List;)I

    move-result v3

    .line 1020
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x4

    const-string v9, "imsSwitchType"

    if-ne v5, v6, :cond_13

    .line 1021
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    goto/16 :goto_5

    .line 1023
    :cond_13
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKDIMhs()Z

    move-result v5

    const/4 v6, 0x5

    if-eqz v5, :cond_14

    .line 1024
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "Turning off all switches for Non-Ims Device"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1025
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_14
    if-lez v3, :cond_18

    .line 1027
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v9, "simMoType"

    invoke-virtual {v5, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eq v3, v2, :cond_15

    if-ne v3, v6, :cond_16

    .line 1031
    :cond_15
    iget v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "isSimMobilityForVoLTE true"

    invoke-static {v8, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1032
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v5, v7}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getSimMobilityImsSwitchSetting(Landroid/content/Context;I)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_16
    const/4 v2, 0x2

    if-eq v3, v2, :cond_17

    if-ne v3, v6, :cond_1d

    .line 1036
    :cond_17
    iget v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "isSimMobilityForRcs true"

    invoke-static {v8, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1037
    iget v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getSimMobilityRcsSettings(ILjava/util/List;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1038
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto/16 :goto_5

    .line 1040
    :cond_18
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XAS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1045
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "for XAS use internal IMSSetting"

    invoke-static {v8, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1046
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1047
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getXasImsSwitchSetting()Landroid/content/ContentValues;

    move-result-object v1

    .line 1048
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_5

    .line 1049
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->useImsSwitch()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1050
    iget-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    if-eqz v1, :cond_1b

    .line 1051
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1052
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "GTS installed"

    invoke-static {v8, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1053
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1060
    :cond_1a
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "Turned off all switches for OutBoundSIM && not SimMo"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1061
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1064
    :cond_1b
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1065
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    goto :goto_5

    .line 1068
    :cond_1c
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1071
    :cond_1d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    .line 1073
    iget-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz v1, :cond_1e

    .line 1074
    iget v0, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "handle_Loaded: need to update ADS again when imsservice restarted"

    invoke-static {v8, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1075
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->updateAdsSlot()V

    :cond_1e
    return v4
.end method

.method handle_NotReadyUnknown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "LOADED"

    .line 1112
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1114
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "UNKNOWN"

    .line 1120
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p2, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->needImsUpOnUnknownState(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "ro.csc.sales_code"

    const-string/jumbo v1, "unknown"

    .line 1121
    invoke-static {p2, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1122
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 1123
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1124
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1127
    :cond_1
    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1128
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "SIM UNKNOWN"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1129
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMC_CODE(unknown): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDevMno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1131
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sys.smf.mnoname"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 1136
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "hassim"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1137
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnoname"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mvnoname"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imsSwitchType"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1141
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    .line 1142
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1115
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimNotReady()V

    return-void
.end method

.method handle_absent(Ljava/lang/String;Z)V
    .locals 11

    .line 1147
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v0

    .line 1149
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v3, "DRPT"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->requestToSendStoredLog(ILandroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "LOADED"

    .line 1152
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1154
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v4, "imsSwitchType"

    const-string v5, "hassim"

    const/4 v6, 0x0

    .line 1165
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "mvnoname"

    const-string v9, "mnoname"

    if-eq v2, v3, :cond_7

    .line 1154
    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    .line 1172
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "SIM ABSENT"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1173
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1174
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v0, :cond_1

    .line 1176
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_1
    const-string p1, "ro.csc.sales_code"

    const-string/jumbo v0, "unknown"

    .line 1180
    invoke-static {p1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1182
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1184
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMC_CODE(absent): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDevMno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1186
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getOmcNetworkCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 1187
    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 1188
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OMCNW_CODE(absent): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mNetMno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1190
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sys.smf.mnoname"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|ABSENT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 1196
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1197
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1201
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_4

    .line 1202
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result p1

    if-eqz p2, :cond_3

    .line 1203
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    if-ne p1, p2, :cond_6

    .line 1204
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    goto :goto_0

    .line 1206
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 1207
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    :cond_6
    :goto_0
    return-void

    .line 1156
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "SIM REMOVED"

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1157
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimRemoved()V

    .line 1159
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1161
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 1162
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1163
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p2, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    return-void
.end method

.method public hasIsim()Z
    .locals 6

    .line 479
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 480
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getRilSimOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.boot.hardware"

    const-string v3, ""

    .line 481
    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const-string v4, "SimManager"

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    const-string v3, "SKCTN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SKCTD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "qcom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    :cond_1
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "hasIsim: watch data SIM. treat it as USIM(by SKT operator)"

    invoke-static {v4, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 487
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->SAFARICOM_KENYA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    const-string p0, "hasIsim safariCom_kenya : false"

    .line 488
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 492
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v0

    .line 493
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasIsim: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 495
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v2, "use_usim_on_invalid_isim"

    invoke-static {v1, v2, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isEsim()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    if-eqz v0, :cond_6

    .line 496
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v5, 0x1

    :cond_6
    move v0, v5

    :cond_7
    return v0
.end method

.method public hasNoSim()Z
    .locals 1

    .line 424
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasVsim()Z
    .locals 0

    .line 512
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p0

    return p0
.end method

.method public initSequentially()V
    .locals 9

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.action.SIM_ICCID_CHANGED"

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.intent.isim_refresh"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ISIM_LOADED"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.isim_refresh_fail_recovery"

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_BACKGROUND"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_FOREGROUND"

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    .line 274
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    .line 275
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mAkaEventReceiver:Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;

    sget-object v5, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/sec/ims/extensions/ContextExt;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    const-string v0, "SimManager"

    const-string v1, "init mno map"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 280
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected initializeSimState()V
    .locals 6

    const/4 v0, 0x0

    .line 1323
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1324
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->readSimStateProperty(ILcom/sec/internal/helper/os/ITelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 1325
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSimState (gsm.sim.state) : =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1326
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "LOADED"

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v5

    goto :goto_1

    :sswitch_0
    const-string v0, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1330
    :pswitch_0
    invoke-virtual {p0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1335
    :pswitch_1
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1336
    invoke-virtual {p0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_3
        -0x79d6d8f6 -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isEsim()Z
    .locals 2

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ril.simslottype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isGBASupported()Z
    .locals 3

    .line 567
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v0

    .line 573
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGbaSupported ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method isISimAppLoaded()Z
    .locals 4

    .line 433
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 434
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "block_regi_on_invalid_isim"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public isISimDataValid()Z
    .locals 0

    .line 579
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getISimDataValidity()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLabSimCard()Z
    .locals 2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLabSimCard: state ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] isLabSim ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isMnoHasGcBlockExtension(Ljava/lang/String;)Z
    .locals 0

    .line 1953
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->GC_BLOCK_EXTENSION:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isOutBoundSIM()Z
    .locals 2

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOutBoundSIM: state ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] isOutBoundSIM ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimAvailable()Z
    .locals 2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsimLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasIsim():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

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

.method public isSimLoaded()Z
    .locals 1

    .line 1602
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isValidImsi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 793
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isValidOperator(Ljava/lang/String;)Z
    .locals 0

    .line 789
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x5

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyADSChanged(I)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1542
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method notifySimReady(Ljava/lang/String;)V
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySimReady: state ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",NOTI SIM EVT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1000001f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 332
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 333
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "SimManager"

    .line 334
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "send ACTION_IMS_ON_SIMLOADED"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 338
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 340
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v1, :cond_3

    .line 343
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SimManager"

    .line 344
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM READY by needHandleLoadedAgain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 341
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 349
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter p1

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;

    .line 351
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v2, v3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;->onReady(IZ)V

    goto :goto_3

    .line 353
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method notifySimStateChanged()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method notifyUiccChanged()V
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method onADSChanged(I)V
    .locals 2

    .line 1546
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    .line 1547
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p1, v0, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, v0, :cond_1

    .line 1549
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    :cond_1
    return-void
.end method

.method public onImsSwitchUpdated(I)V
    .locals 10

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "enableIms"

    const-string v4, "enableServiceVowifi"

    const-string v5, "enableServiceSmsip"

    const-string v6, "enableServiceVilte"

    const-string v7, "enableServiceVolte"

    const-string v8, "enableServiceRcs"

    const-string v9, "enableServiceRcschat"

    .line 203
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_0

    .line 211
    aget-object v3, v0, v1

    .line 212
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onImsSwitchUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->toStringMnoInfo(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void
.end method

.method protected onSimNotReady()V
    .locals 3

    .line 1414
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "onSimNotReady"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1416
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 v0, 0x0

    .line 1417
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1418
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v0, -0x1

    .line 1419
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1421
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRemoved()V

    .line 1422
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method onSimRefresh()V
    .locals 3

    .line 1380
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "onSimRefresh"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SIM REFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1000000f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1383
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 v0, 0x0

    .line 1384
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1385
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v0, -0x1

    .line 1386
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1391
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1392
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 1393
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRefresh()V

    .line 1396
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method protected onSimRemoved()V
    .locals 3

    .line 1404
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "onSimRemoved:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1405
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1406
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v0, -0x1

    .line 1407
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1409
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRemoved()V

    .line 1410
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method protected onSimStateChange(Ljava/lang/String;)V
    .locals 5

    .line 802
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 804
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v1

    .line 806
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSimStateChange: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], operator: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",,EVT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->handleVsim(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "LOADED"

    .line 815
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 816
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "mnoname"

    invoke-static {p1, v1, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 817
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Loaded(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const-string v2, "DELAYED_ISIM_LOAD"

    .line 818
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 819
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Delayed_IsimLoaded()Z

    move-result p1

    goto :goto_0

    :cond_2
    const-string v2, "ISIM_LOADED"

    .line 820
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 821
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_IsimLoaded()Z

    move-result p1

    goto :goto_0

    :cond_3
    const-string v2, "NOT_READY"

    .line 822
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "UNKNOWN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "ABSENT"

    .line 825
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 826
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_absent(Ljava/lang/String;Z)V

    return-void

    :cond_5
    const-string v1, "LOCKED"

    .line 828
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 829
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handldle_Locked(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 834
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSimStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 823
    :cond_8
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_NotReadyUnknown(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method onSoftphoneAuthDone(Ljava/lang/String;)V
    .locals 3

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aka result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",LEN:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x10000031

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 754
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 756
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 757
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string p1, "aka failed"

    .line 761
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    .line 762
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method onSoftphoneAuthFailed()V
    .locals 2

    const-string v0, "SimManager"

    const-string v1, "onSoftphoneAuthFailed"

    .line 767
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    const/16 v0, 0x2e

    iput v0, p0, Landroid/os/Message;->what:I

    .line 770
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    .line 312
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "Register for sim ready"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 314
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 316
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 317
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->needImsUpOnUnknownState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 373
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 387
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 404
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForUiccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 361
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
    .locals 2

    .line 1646
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1647
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_1

    .line 1651
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;->onReady(IZ)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 1648
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestIsimAuthentication(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 721
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 723
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 724
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 730
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 732
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 733
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestSoftphoneAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1

    .line 740
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    .line 741
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestSoftphoneAuthentication, id = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SimManager"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",REQ AUTH"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const v0, 0x10000030

    invoke-static {v0, p3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 744
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.sec.imsservice.REQUEST_AKA_CHALLENGE"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "nonce"

    .line 745
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "impi"

    .line 746
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "id"

    .line 747
    invoke-virtual {p3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p3, p1}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setIsimLoaded()V
    .locals 1

    const-string v0, "ISIM_LOADED"

    .line 429
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimStateChange(Ljava/lang/String;)V

    return-void
.end method

.method setSimMno(Lcom/sec/internal/constants/Mno;Z)V
    .locals 1

    .line 1342
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0, p1}, Lcom/sec/internal/helper/SimUtil;->setSimMno(ILcom/sec/internal/constants/Mno;)V

    if-eqz p2, :cond_0

    .line 1344
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSimRefreshed()V
    .locals 1

    const-string p0, "SimManager"

    const-string/jumbo v0, "setSimRefreshed:"

    .line 517
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    monitor-enter p0

    .line 1590
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SimManager"

    .line 1591
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSubscriptionInfo : mSubscriptionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSimSlot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1591
    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1593
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1594
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 1595
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getEhplmn(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    const-string p1, "SimManager"

    .line 1596
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored EHPLMN ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method toStringMnoInfo(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 1

    .line 1957
    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "imsi"

    .line 1958
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1960
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1964
    :cond_0
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "***************"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method updateGlobalSetting(I)V
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v1, "imsSwitchType"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v1, "enableIms"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v3, "enableServiceVolte"

    invoke-static {v1, v3, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    .line 225
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v4, "enableServiceVowifi"

    invoke-static {v3, v4, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :cond_1
    const-string v0, "SimManager"

    const-string/jumbo v1, "updateGlobalSetting: enableIms or enableServiceVolte, enableServiceVowifi : disable"

    .line 228
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    const-string v2, "CS"

    const-string v3, "emergency_domain_setting"

    const-string/jumbo v4, "voice_domain_pref_eutran"

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "PS"

    .line 233
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "ss_domain_setting"

    const-string v3, "CS_ALWAYS"

    .line 238
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ussd_domain_setting"

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_GLOBAL:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 242
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method updateMno()V
    .locals 8

    .line 1349
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string/jumbo v2, "updateMno:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "phoneId"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1353
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v2, "imsSwitchType"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1360
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v3, "imsi"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1361
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v2, 0x1000000d

    .line 1364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1365
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/sim/SimManager;->toStringMnoInfo(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1366
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1000000e

    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->convertMnoInfoToString(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1370
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_MNO:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1371
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMno ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1372
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 778
    :cond_0
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 779
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 781
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p1, v0, :cond_1

    .line 782
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method useImsSwitch()Z
    .locals 2

    .line 797
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    const-string v1, "GCF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    const-string v1, "SUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
