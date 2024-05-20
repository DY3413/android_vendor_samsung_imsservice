.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
.super Ljava/lang/Object;
.source "SoftphoneClient.java"


# static fields
.field private static final HANDLE_EVENT_ADS_CHANGED:I


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field mAccessToken:Ljava/lang/String;

.field private mAccessTokenType:Ljava/lang/String;

.field final mAccountId:Ljava/lang/String;

.field mAlarmManager:Landroid/app/AlarmManager;

.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

.field private mEnvironment:I

.field public mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mHandler:Landroid/os/Handler;

.field public mHost:Ljava/lang/String;

.field protected mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

.field protected mImsManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field protected mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mIsRegisterPending:Z

.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoggedOut:Z

.field protected mPhoneId:I

.field protected mProfileId:I

.field mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/vsim/attsoftphone/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mRefreshIdentityIntent:Landroid/app/PendingIntent;

.field mRefreshToken:Ljava/lang/String;

.field mRefreshTokenIntent:Landroid/app/PendingIntent;

.field mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

.field mResendSmsIntent:Landroid/app/PendingIntent;

.field mSecretKey:Ljavax/crypto/SecretKey;

.field protected mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

.field mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

.field protected mSoftphoneLabelObserver:Landroid/database/ContentObserver;

.field protected mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

.field mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTGaurdAppId:Ljava/lang/String;

.field private mTGaurdToken:Ljava/lang/String;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTokenExpiresTime:J

.field private mUserHandle:Landroid/os/UserHandle;

.field mUserId:I

.field mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$0tk5m06NR2DRzpVwo6QWSGBmTnY(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/location/Address;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->lambda$checkAutoRegistrationCondition$0(Landroid/location/Address;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 148
    iput-wide v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    .line 149
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 151
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 152
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 153
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    .line 155
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    const/4 v1, 0x0

    .line 157
    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    .line 159
    new-instance v2, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    const/4 v2, -0x1

    .line 160
    iput v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const/4 v2, 0x1

    .line 161
    iput-boolean v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    .line 162
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRegisterPending:Z

    .line 163
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 170
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 176
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHandler:Landroid/os/Handler;

    .line 293
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$4;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$4;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 178
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    .line 179
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const-string v2, "phone"

    .line 180
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "connectivity"

    .line 181
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v2, "alarm"

    .line 182
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v2, "user"

    .line 183
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserManager:Landroid/os/UserManager;

    .line 184
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 185
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserManager:Landroid/os/UserManager;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    if-nez v2, :cond_0

    .line 187
    sget-object v2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 189
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    .line 190
    new-instance v3, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v4, 0xc8

    invoke-direct {v3, p2, v2, v4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 192
    new-instance v2, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const-string/jumbo v3, "softphone"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const-string v2, "AES"

    .line 193
    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getInstance(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    .line 195
    :try_start_0
    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 197
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    .line 200
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->connectImsManager(I)V

    .line 201
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;

    invoke-direct {v2, p0, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHandler:Landroid/os/Handler;

    .line 223
    invoke-static {v2, v1, v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 225
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {v0, p3, p2, p1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    .line 227
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    .line 228
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    .line 230
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1741
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->CONFIG_BRAND_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCH_SCC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-att-clientId"

    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "x-att-clientVersion"

    const-string v1, "1.0"

    .line 1743
    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-att-deviceId"

    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getContextInfo()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "x-att-contextInfo"

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private checkWithCondition(Ljava/util/List;Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;ZILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;",
            ">;",
            "Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;",
            "ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1594
    iget-object v0, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mBusy:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1595
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: busy"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1596
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1598
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNoAnswer:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1599
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: no-answer"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1600
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    const/4 v6, 0x0

    const/4 v8, 0x2

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1602
    :cond_3
    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNotReachable:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1603
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: not-reachable"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1604
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_4

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1606
    :cond_5
    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNotRegistered:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1607
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: not-registered"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1608
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_6

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_6

    move v5, v2

    goto :goto_3

    :cond_6
    move v5, v3

    :goto_3
    const/4 v6, 0x0

    const/16 v8, 0x8

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1610
    :cond_7
    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mUnconditional:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1611
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: unconditional"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1612
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_8

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_8

    move v5, v2

    goto :goto_4

    :cond_8
    move v5, v3

    :goto_4
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    return-void
.end method

.method private deregisterSoftphoneLabelObserver()V
    .locals 2

    .line 1333
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "deregisterSoftphoneLabelObserver()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private findAndRemoveListener(I)Ljava/lang/Object;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 488
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-object v0
.end method

.method private getAccountSecretKey()V
    .locals 9

    .line 1892
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    .line 1894
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    .line 1895
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string/jumbo v6, "userid = ?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1896
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1897
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " secretKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1898
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getSecretKey(Landroid/database/Cursor;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 1899
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private getCallForwardingInfo(IJ)V
    .locals 3

    .line 810
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallForwardingInfo():retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 811
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/callHandlingFeatures/v1/communication-diversion"

    .line 813
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "application/xcap-el+xml"

    .line 814
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 817
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 819
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x9

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .locals 1

    .line 868
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 870
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string p1, "application/xcap-el+xml"

    .line 871
    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Accept"

    .line 872
    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setStringBody(Ljava/lang/String;)V

    .line 876
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    return-object v0
.end method

.method private getContextInfo()Ljava/lang/String;
    .locals 2

    .line 1731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdl="

    .line 1732
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",os="

    .line 1734
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentAddress()J
    .locals 7

    .line 1168
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetCurrentAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1169
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 1172
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " current addresses"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1173
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "_id"

    .line 1174
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1176
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1178
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentAddress(): id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-wide v1
.end method

.method private synthetic lambda$checkAutoRegistrationCondition$0(Landroid/location/Address;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1115
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 1116
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAddressObtained(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-string v1, "US"

    .line 1117
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VI"

    .line 1118
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PR"

    .line 1119
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    const-string p1, "com.samsung.softphone.action.ACCOUNT_IN_INTERNATIONAL"

    .line 1125
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "com.samsung.softphone.action.ACCOUNT_MISSING_E911"

    .line 1121
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1128
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onAddressObtained(): cannot determine location"

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-string p1, "com.samsung.softphone.action.ACCOUNT_LOCATION_UNKNOWN"

    .line 1130
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private registerSoftphoneLabelObserver(Ljava/lang/String;)V
    .locals 3

    .line 1326
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSoftphoneLabelObserver() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1328
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountLabelUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 1329
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private removeSharedPreferences()V
    .locals 6

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "removeSharedPreferences()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tguard_token"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tguard_appid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "environment"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "impi"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "impu"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fqdn"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "refresh_token"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "pd_cookies"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "sms_time"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x8

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private retryObtainPdCookies(I)V
    .locals 1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 1829
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->obtainPdCookies(I)V

    :cond_0
    return-void
.end method

.method private saveAccountIdentities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "impi"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "impu"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, p2, v3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "fqdn"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p2, p3, v1}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method private saveListener(ILjava/lang/Object;)V
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private scheduleRefreshIdentityAlarm(J)V
    .locals 5

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "refresh_identity"

    .line 475
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 478
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 479
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh identity after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method private sendSMS(Ljava/lang/String;I)V
    .locals 11

    .line 1834
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "sendSMS()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpu()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 1838
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1837
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSendSMSRequest(Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/SendSMSRequest;

    move-result-object v0

    .line 1840
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->getHttpTransactionId()I

    move-result v1

    .line 1841
    new-instance v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1843
    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    const-string v5, "Host"

    if-ne v2, v4, :cond_0

    const-string v2, "https://messagessd.att.net/messaging/v0/outbound"

    .line 1844
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    const-string v2, "messagessd.att.net"

    .line 1845
    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "https://messagessd.stage.att.net/messaging/v0/outbound"

    .line 1847
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    const-string v2, "messagessd.stage.att.net"

    .line 1848
    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "Cookie"

    .line 1850
    invoke-virtual {v3, v2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v2, "application/json"

    .line 1851
    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept"

    .line 1852
    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "transactionId"

    invoke-virtual {v3, v1, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v8

    .line 1857
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 1859
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\/"

    const-string v1, "/"

    .line 1861
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1862
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSMS(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setByteData([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1865
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not build JSONObject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    :goto_1
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v8, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1869
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v5, 0x3fe

    const/4 v7, -0x1

    int-to-long p0, p2

    const-wide/32 v0, 0xea60

    mul-long v9, p0, v0

    move v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    return-void
.end method

.method private setAddressCurrent(J)V
    .locals 3

    .line 1183
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAddressCurrent(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildSetCurrentAddressUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 1185
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 1186
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallForwardingInfo() retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/16 v0, 0xb

    if-nez p1, :cond_0

    .line 850
    new-instance p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 p2, 0x0

    const-string p3, "null info"

    invoke-direct {p1, v0, p2, p3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 852
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void

    .line 856
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSetCallForwardingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/callHandlingFeatures/v1/communication-diversion"

    .line 857
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v1

    .line 858
    invoke-virtual {v1, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 860
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p4, -0x1

    invoke-virtual {p3, v0, p2, p4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 861
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "communication-diversion"

    .line 862
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 863
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 864
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V
    .locals 3

    .line 825
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallWaitingInfo(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/16 v0, 0xa

    if-nez p1, :cond_0

    .line 828
    new-instance p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 p2, 0x0

    const-string p3, "null info"

    invoke-direct {p1, v0, p2, p3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 829
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void

    .line 833
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSetCallWaitingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/callHandlingFeatures/v1/communication-waiting"

    .line 834
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v1

    .line 835
    invoke-virtual {v1, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 837
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p4, -0x1

    invoke-virtual {p3, v0, p2, p4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 838
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "communication-waiting"

    .line 839
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 840
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 841
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setupEnvironment(I)V
    .locals 2

    .line 493
    iput p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    .line 494
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->setupAppKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    .line 495
    invoke-static {p1, v0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->setupAppSecret(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    const-string p1, "api.att.com"

    .line 496
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHost:Ljava/lang/String;

    .line 497
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setupEnvironment(): appKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appSecret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method private storeTokens(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 404
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 405
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "access_token"

    .line 406
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "token_type"

    .line 407
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "refresh_token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 409
    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {p1, p2, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private updateAccountInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 385
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "impi"

    .line 386
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ":"

    .line 387
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v2, "@"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msisdn"

    .line 388
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "secret_key"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "environment"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateE911AddressLocally(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1270
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "updateE911AddressLocally()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    int-to-long v0, p1

    .line 1272
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildAddressUri(J)Landroid/net/Uri;

    move-result-object p1

    .line 1274
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1275
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "E911AID"

    .line 1276
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "expire_date"

    .line 1277
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V
    .locals 5

    .line 681
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateE911Address(): addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", confirmed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildAddressValidationRequest(IZ)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->getHttpTransactionId()I

    move-result v1

    if-eqz p3, :cond_0

    .line 688
    invoke-direct {p0, v1, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveListener(ILjava/lang/Object;)V

    .line 690
    :cond_0
    new-instance p3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/emergencyServices/v1/e911Locations"

    .line 692
    invoke-virtual {p3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 693
    invoke-virtual {p3, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 698
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p3, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 701
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not build JSONObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 705
    invoke-virtual {p3, p5, p6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 707
    iget-object p5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p6, 0x6

    invoke-virtual {p5, p6, v1, p1, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 708
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p5, "retry_count"

    .line 709
    invoke-virtual {p3, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "confirmed"

    .line 710
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 711
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 712
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method addE911Address(IIJ)V
    .locals 5

    .line 1283
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addE911Address(): addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildAddAddressRequest(I)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest;

    move-result-object v0

    .line 1287
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/softphone/v1/locations"

    .line 1289
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 1290
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1295
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1298
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not build JSONObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1302
    invoke-virtual {v1, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1304
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p3, 0x7

    invoke-virtual {p0, p3, p2, p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1003
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1004
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p1, "msisdn"

    .line 1006
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastIntent: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1009
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastIntent: extras: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1, v0, p0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method checkAutoRegistrationCondition()V
    .locals 3

    .line 1108
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegisterWithDefaultAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1111
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    .line 1112
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->requestGeolocationUpdate(IIILcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;)V

    return-void
.end method

.method protected connectImsManager(I)V
    .locals 3

    .line 249
    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;

    invoke-direct {v2, p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;I)V

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    .line 266
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    return-void
.end method

.method public deregisterProgressListener(I)V
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deregisterSupplementaryServiceListener(I)V
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dump(Lcom/sec/internal/log/IndentingPrintWriter;)V
    .locals 2

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->increaseIndent()V

    .line 929
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    .line 930
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 11

    .line 581
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    const/4 v1, 0x0

    aget-wide v9, v0, v1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v10}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    return-void
.end method

.method exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V
    .locals 5

    .line 592
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 593
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserManager:Landroid/os/UserManager;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 595
    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exchangeForAccessToken request: authCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tGuardAppId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exchangeForAccessToken request: accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", autoRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", environment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 603
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "authorizationCode is null"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 607
    :cond_1
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    .line 608
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    .line 609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tguard_token"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tguard_appid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, p4, v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "environment"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v1, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/util/Map;)V

    .line 619
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setupEnvironment(I)V

    .line 621
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    .line 622
    invoke-static {p4, p5, p2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildExchangeForAccessTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ExchangeForAccessTokenRequest;

    move-result-object p1

    .line 624
    new-instance p2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string p4, "/oauth/v4/token"

    .line 626
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string p4, "Content-Type"

    const-string p5, "application/x-www-form-urlencoded"

    .line 627
    invoke-virtual {p2, p4, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    .line 631
    :try_start_0
    new-instance p5, Lorg/json/JSONObject;

    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 634
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not build JSONObject:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :goto_0
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 638
    invoke-virtual {p2, p7, p8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    if-lez p6, :cond_2

    .line 641
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x403

    invoke-virtual {p0, p1, p6, p3, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 643
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p6, p3, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "finalize()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 273
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getAccessTokenType()Ljava/lang/String;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    return-object p0
.end method

.method public getAutoRetryComSet(ZZ)Z
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    return p0
.end method

.method public getCallForwardingInfo()V
    .locals 4

    .line 807
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallForwardingInfo(IJ)V

    return-void
.end method

.method public getCallWaitingInfo()V
    .locals 4

    .line 792
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallWaitingInfo(IJ)V

    return-void
.end method

.method getCallWaitingInfo(IJ)V
    .locals 3

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallWaitingInfo(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 796
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/callHandlingFeatures/v1/communication-waiting"

    .line 798
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "application/xcap-el+xml"

    .line 799
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 802
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 804
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x8

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method getDefaultAddress()J
    .locals 7

    .line 1153
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetDefaultAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1154
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 1157
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " default addresses"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1158
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "_id"

    .line 1159
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1161
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1163
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultAddress(): id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-wide v1
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 884
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 885
    array-length v2, v1

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 886
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getDeviceList()Ljava/util/List;

    move-result-object v1

    .line 887
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reg.deviceList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 888
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 889
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 891
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v4, ""

    if-eqz v2, :cond_0

    const-string v5, "gr"

    .line 893
    invoke-virtual {v2, v5}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v4

    .line 898
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 899
    new-instance v2, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "D;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";Smartphone"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 901
    :cond_2
    new-instance v4, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;

    invoke-direct {v4, v3, v2}, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 906
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceList(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-object v0
.end method

.method public getImsNetworkIdentifiers(ZZIJI)V
    .locals 3

    .line 968
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsNetworkIdentifiers(): justProvisioned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", autoRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", attempt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 971
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/softphone/v1/identities?SoftphoneType:sip"

    .line 973
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 977
    invoke-virtual {v0, p4, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    const-string p4, "attempt"

    if-eqz p1, :cond_0

    .line 980
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x68

    const/4 p5, 0x0

    invoke-virtual {p0, p1, p3, p2, p5}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 981
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 982
    invoke-virtual {p1, p4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 983
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 985
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto :goto_0

    .line 987
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p5, 0x1

    invoke-virtual {p1, p5, p3, p2, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 988
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 989
    invoke-virtual {p2, p4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 990
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-lez p6, :cond_1

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p6

    const-wide/32 p4, 0xea60

    mul-long/2addr p2, p4

    .line 994
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "SoftphoneEvents(): backoff: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 995
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 997
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public getProfileId()I
    .locals 0

    .line 288
    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    return p0
.end method

.method public getTermsAndConditions()V
    .locals 4

    .line 1189
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions(IJ)V

    return-void
.end method

.method getTermsAndConditions(IJ)V
    .locals 3

    .line 1192
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTermsAndConditions(): retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1194
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/softphone/v1/termsAndConditions?tcType=Url"

    .line 1196
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 1198
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1199
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1201
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p2, 0x2

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public getUserId()I
    .locals 3

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 912
    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    return p0
.end method

.method public handleDeRegisterRequest()V
    .locals 3

    .line 1366
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeRegisterRequest(): mProfileId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1367
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsManager;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->deregisterAdhocProfile(I)V

    :cond_0
    const/4 v0, 0x1

    .line 1371
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    :cond_1
    return-void
.end method

.method handleImsNetworkIdentityAfterRecovery()V
    .locals 12

    .line 1914
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerSoftphoneLabelObserver(Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "impi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1916
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "impu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1917
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "fqdn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1929
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v5, "Recovery: identity found. Try to relogin"

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1930
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v5, 0x40d

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 1931
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v0, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    .line 1932
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v1, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v1

    .line 1933
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v2

    .line 1935
    new-instance v3, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v5, v2}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    .line 1936
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, v4

    invoke-virtual {p0, v4, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    goto :goto_1

    .line 1920
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Recovery: no previous identity"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1921
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v9, v0, v4

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 1923
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    .line 1924
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sms_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1925
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1924
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1926
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resumeSmsAlarm(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public handleLabelUpdated()V
    .locals 2

    .line 1376
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "handleLabelUpdated()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleDeRegisterRequest()V

    .line 1378
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public handleTryRegisterRequest()V
    .locals 4

    .line 1341
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    if-nez v0, :cond_0

    .line 1342
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "There is an ongoing profile registration."

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->createProfileFromTemplate(Landroid/content/Context;Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;Ljava/lang/String;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1348
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1349
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsManager;

    invoke-virtual {v2, v0}, Lcom/sec/ims/ImsManager;->registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    .line 1351
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 1352
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRegisterPending:Z

    .line 1353
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Register is pending because ImsService is not connected"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 1355
    :cond_2
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    .line 1356
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRegisterPending:Z

    .line 1358
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injected profile ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_1

    .line 1360
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "fail to build profile"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-string v0, "Fail to build profile."

    .line 1361
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyRegisterStatus(ZLjava/lang/String;)V

    :goto_1
    return-void
.end method

.method isImsNetworkIdentifiersResponseValid(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;)Z
    .locals 3

    .line 1091
    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mLocations:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1097
    iput-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const-string v1, "Cannot retrieve account info. Please call AT&T Customer Care."

    .line 1098
    iput-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    .line 1100
    new-instance v1, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/4 v2, 0x4

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return v0
.end method

.method public isTarget(Ljava/lang/String;)Z
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->impiEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 519
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTarget(): impi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public logOut()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "logOut()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 731
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 732
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 733
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 734
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 739
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 740
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetAccountStatus()V

    .line 742
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetCurrentAddresses()V

    .line 743
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->removeSharedPreferences()V

    .line 744
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterSoftphoneLabelObserver()V

    .line 745
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x3fa

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V
    .locals 5

    .line 937
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 941
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/IProgressListener;

    invoke-interface {v1, p1}, Lcom/sec/vsim/attsoftphone/IProgressListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 943
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyRegisterStatus(ZLjava/lang/String;)V
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRegisterStatus(): registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 963
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 964
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    .locals 5

    .line 949
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 953
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    invoke-interface {v1, p1}, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 955
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public obtainPdCookies(I)V
    .locals 10

    .line 1750
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtainPdCookies(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1751
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1753
    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    const-string v2, "Host"

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    const-string v1, "https://tprodsmsx.att.net/commonLogin/nxsEDAM/controller.do"

    .line 1754
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    .line 1755
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    const-string v7, "messagessd.att.net"

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildObtainPdCookiesQueryParams(Ljava/lang/String;ILjavax/crypto/SecretKey;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setQueryParameters(Ljava/util/LinkedHashMap;Z)V

    const-string/jumbo v1, "tprodsmsx.att.net"

    .line 1757
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "https://tstagesms.stage.att.net/commonLogin/nxsEDAM/controller.do"

    .line 1759
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    .line 1760
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    const-string v7, "messagessd.stage.att.net"

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildObtainPdCookiesQueryParams(Ljava/lang/String;ILjavax/crypto/SecretKey;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setQueryParameters(Ljava/util/LinkedHashMap;Z)V

    const-string/jumbo v1, "tstagesms.stage.att.net"

    .line 1762
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 1765
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v7

    .line 1768
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1769
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v4, 0x3fc

    const/4 v6, -0x1

    int-to-long v0, p1

    const-wide/32 v8, 0xea60

    mul-long/2addr v8, v0

    move v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    return-void
.end method

.method public onAirplaneModeOn()V
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onAirplaneModeOn()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 918
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x407

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onNetworkConnected()V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onNetworkConnected()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 923
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x408

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onRequestAkaChallenge(Ljava/lang/String;I)V
    .locals 6

    .line 1773
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, p2

    .line 1774
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestAkaChallenge : nonce = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retryCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    invoke-static {p1}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1777
    new-instance v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v4, "/softphone/v1/challengeKeys"

    .line 1778
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1779
    aget-object v4, v2, v4

    const-string v5, "randomChallenge"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1780
    aget-object v2, v2, v4

    const-string v4, "networkAuthenticatorToken"

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1782
    invoke-virtual {v3, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    const/4 v0, 0x0

    const/16 v1, 0x13

    const/4 v2, -0x1

    .line 1784
    invoke-static {v0, v1, p2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1785
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "nonce"

    .line 1786
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1788
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUserSwitch()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onUserSwitch()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 789
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onUserSwitchedAway()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onUserSwitchedAway()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_0
    return-void
.end method

.method public onUserSwitchedBack()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onUserSwitchedBack()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 343
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processAddE911AddressResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;II)V
    .locals 3

    .line 1308
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAddAddressResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1311
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 1312
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    iget-object p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;->mLocationResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse$LocationResponse;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse$LocationResponse;->mLocations:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->compareAndSaveE911Address(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1314
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1316
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1317
    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addE911Address(IIJ)V

    return-void

    .line 1322
    :cond_1
    :goto_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/4 p3, 0x7

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, p3, v0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processAkaChallengeResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;ILjava/lang/String;)V
    .locals 3

    .line 1707
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAkaChallengeResponse(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    invoke-static {p1}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->processAkaAuthenticationResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;)Ljava/lang/String;

    move-result-object p1

    .line 1710
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1711
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aka failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-ge p2, p1, :cond_0

    .line 1713
    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onRequestAkaChallenge(Ljava/lang/String;I)V

    return-void

    .line 1716
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    const-string p2, "aka failed over 3 times, deregister..."

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1718
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1722
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Sending AKA response Intent to SimManager"

    invoke-static {p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "result"

    .line 1724
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    iget p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const-string p3, "id"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1726
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p2, p1}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method public processExchangeForAccessTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;IZ)V
    .locals 12

    .line 1941
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processExchangeForAccessTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", autoRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1943
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1944
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 1945
    iget-object v3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mAccessToken:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mTokenType:Ljava/lang/String;

    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mExpiresIn:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mRefreshToken:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1946
    iget-wide v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 v4, 0x384

    mul-long/2addr v2, v4

    .line 1947
    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    .line 1948
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x40b

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1950
    sget-object p2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v6, p2, v1

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    if-nez p3, :cond_0

    .line 1952
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleSmsAlarm()V

    .line 1953
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->obtainPdCookies(I)V

    goto :goto_0

    .line 1956
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-nez p2, :cond_3

    .line 1957
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sms_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1958
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1957
    invoke-virtual {p2, p3, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p2

    .line 1959
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resumeSmsAlarm(J)V

    goto :goto_0

    .line 1963
    :cond_1
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    add-int/lit8 v9, p2, 0x1

    const/4 p2, 0x3

    if-ge v9, p2, :cond_2

    .line 1965
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide v10, p1, v9

    .line 1966
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    move-object v3, p0

    move v6, p3

    invoke-virtual/range {v3 .. v11}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    return-void

    .line 1970
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetAccountStatus()V

    .line 1971
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p3, 0x40c

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 1974
    :cond_3
    :goto_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, v1, p3, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processGetCallForwardingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;I)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    .line 1618
    iget-object v1, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processGetCallForwardingInfoResponse(): success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1620
    iget-boolean v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v8, 0x3

    const/16 v9, 0x9

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_b

    .line 1621
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mActive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1622
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mNoReplyTimer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1623
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num of rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mRuleset:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset;->mRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1624
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1625
    iget-object v0, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mActive:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 1626
    iget-object v0, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mNoReplyTimer:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1629
    iget-object v0, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mRuleset:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;

    .line 1630
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ruleId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1631
    iget-object v0, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mActions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;->mForwardTo:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;->mTarget:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1632
    array-length v1, v0

    sub-int/2addr v1, v12

    aget-object v5, v0, v1

    .line 1633
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1634
    iget-object v0, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v0, v10

    goto :goto_2

    :sswitch_0
    const-string v1, "call-diversion-not-reachable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_1
    const-string v1, "call-diversion-busy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v8

    goto :goto_2

    :sswitch_2
    const-string v1, "call-diversion-not-logged-in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v1, "call-diversion-unconditional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v12

    goto :goto_2

    :sswitch_4
    const-string v1, "call-diversion-no-reply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v11

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 1656
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ruleId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v13

    move v3, v14

    move/from16 v4, v21

    .line 1657
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->checkWithCondition(Ljava/util/List;Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 1648
    :pswitch_0
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_5

    move/from16 v16, v12

    goto :goto_3

    :cond_5
    move/from16 v16, v11

    :goto_3
    const/16 v17, 0x0

    const/16 v19, 0x3

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1640
    :pswitch_1
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_6

    move/from16 v16, v12

    goto :goto_4

    :cond_6
    move/from16 v16, v11

    :goto_4
    const/16 v17, 0x0

    const/16 v19, 0x1

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1652
    :pswitch_2
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_7

    move/from16 v16, v12

    goto :goto_5

    :cond_7
    move/from16 v16, v11

    :goto_5
    const/16 v17, 0x0

    const/16 v19, 0x8

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1636
    :pswitch_3
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_8

    move/from16 v16, v12

    goto :goto_6

    :cond_8
    move/from16 v16, v11

    :goto_6
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1644
    :pswitch_4
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_9

    move/from16 v16, v12

    goto :goto_7

    :cond_9
    move/from16 v16, v11

    :goto_7
    const/16 v17, 0x0

    const/16 v19, 0x2

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1661
    :cond_a
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v2, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v9, v1, v2, v13}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;Ljava/util/List;)V

    .line 1663
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    goto :goto_8

    .line 1665
    :cond_b
    iget v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    if-ne v1, v10, :cond_c

    add-int/2addr v0, v12

    if-ge v0, v8, :cond_c

    .line 1667
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v1, v1, v0

    .line 1668
    invoke-direct {v6, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallForwardingInfo(IJ)V

    return-void

    .line 1672
    :cond_c
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v9, v11, v1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1673
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cddf879 -> :sswitch_4
        -0x45b7dfbc -> :sswitch_3
        -0xd706b33 -> :sswitch_2
        0x66b7622 -> :sswitch_1
        0x194f58ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processGetCallWaitingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;I)V
    .locals 5

    .line 1574
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processGetCallWaitingInfoResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1576
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1577
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;->mActive:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1578
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    new-instance v3, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;->mActive:Ljava/lang/String;

    const-string/jumbo v4, "true"

    .line 1579
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {v3, p1}, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;-><init>(Z)V

    invoke-direct {p2, v1, v0, v2, v3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    .line 1578
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    goto :goto_0

    .line 1581
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1583
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1584
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallWaitingInfo(IJ)V

    return-void

    .line 1588
    :cond_1
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, v1, v0, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    :goto_0
    return-void
.end method

.method public processImsNetworkIdentifiersResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;ZIZI)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    .line 1015
    iget-object v5, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processImsNetworkIdentifiersResponse(): success: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", justProvisioned: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", autoRegister: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", retryCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", attempt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1018
    iget-boolean v5, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->isImsNetworkIdentifiersResponseValid(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1019
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v3, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mLocations:Ljava/util/List;

    iget-object v5, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->compareAndSaveE911Address(Ljava/util/List;Ljava/lang/String;)V

    .line 1021
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerSoftphoneLabelObserver(Ljava/lang/String;)V

    .line 1022
    new-instance v2, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v3, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v5, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v3, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    new-array v10, v9, [Ljava/lang/String;

    iget-object v11, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v11, v11, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v11, v11, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    aput-object v11, v10, v8

    .line 1024
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v6, v10}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    const-wide/32 v2, 0xa4cb80

    .line 1027
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshIdentityAlarm(J)V

    .line 1029
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v5, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveAccountIdentities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    const-string v3, ":"

    .line 1036
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v9

    iget-object v5, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v5, v5, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v5, v5, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    const-string v6, "@"

    .line 1037
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1035
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.softphone.action.ACCOUNT_LOGIN_COMPLETED"

    .line 1038
    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x40e

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    if-eqz v4, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->checkAutoRegistrationCondition()V

    .line 1043
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1045
    :cond_1
    iget v5, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v10, -0x1

    const/4 v11, 0x3

    if-ne v5, v10, :cond_2

    add-int/2addr v3, v9

    if-ge v3, v11, :cond_2

    .line 1047
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v7, v1, v3

    move-object v0, p0

    move v1, p2

    move/from16 v2, p4

    move-wide v4, v7

    move/from16 v6, p5

    .line 1048
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    return-void

    :cond_2
    if-eqz v2, :cond_4

    add-int/lit8 v2, v6, 0x1

    if-ge v2, v11, :cond_3

    .line 1055
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const-wide/32 v3, 0xafc8

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    :cond_3
    const-string v2, "Please try again later or call AT&T Customer Care."

    .line 1058
    iput-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    .line 1059
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "processImsNetworkIdentifiersResponse(): notify getImsNetworkIdentity failure after 3 attempts"

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    :cond_4
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v3, "LDAP Record not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1063
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions()V

    return-void

    :cond_5
    if-eqz v4, :cond_8

    .line 1069
    iget v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_6

    .line 1070
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processImsNetworkIdentifiersResponse(): statusCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", invalid access token, reLogin"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0, v8, v9}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    return-void

    :cond_6
    add-int/2addr v6, v9

    const/4 v2, 0x6

    if-ge v6, v2, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1076
    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v7, v2, v8

    move-object v0, p0

    move/from16 v2, p4

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    return-void

    .line 1079
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->logOut()V

    .line 1086
    :cond_8
    :goto_0
    new-instance v2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v3, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v2, v7, v3, v1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 1087
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processObtainPdCookiesResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)V
    .locals 7

    if-eqz p1, :cond_6

    .line 1793
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "Set-Cookie"

    .line 1795
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1798
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[;,]"

    .line 1799
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1800
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    const-string v6, "PD-ID="

    .line 1801
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "PD-H-SESSION-ID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1802
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    .line 1803
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1808
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1809
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "processObtainPdCookiesResponse()"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processObtainPdCookiesResponse(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1812
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pd_cookies"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    .line 1813
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    .line 1812
    invoke-virtual {p2, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->sendSMS(Ljava/lang/String;I)V

    goto :goto_1

    .line 1817
    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    goto :goto_1

    .line 1820
    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    goto :goto_1

    .line 1823
    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    :goto_1
    return-void
.end method

.method public processProvisionAccountResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V
    .locals 5

    .line 1221
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processProvisionAccountResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1222
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 1223
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v0, 0x4

    const/4 v2, 0x0

    const-wide/32 v3, 0xafc8

    invoke-virtual {p2, v0, v2, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    goto :goto_0

    .line 1225
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    if-ge p2, v1, :cond_1

    .line 1227
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType3:[J

    aget-wide v0, p1, p2

    .line 1228
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->provisionAccount(IJ)V

    return-void

    .line 1233
    :cond_1
    :goto_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, v1, v0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processRefreshTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;III)V
    .locals 8

    .line 1532
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRefreshTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attempt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1535
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1536
    iget-object v3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mAccessToken:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mTokenType:Ljava/lang/String;

    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mExpiresIn:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mRefreshToken:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1537
    iget-wide p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 p3, 0x384

    mul-long/2addr p1, p3

    .line 1538
    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    .line 1539
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1540
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleImsNetworkIdentityAfterRecovery()V

    goto/16 :goto_0

    .line 1543
    :cond_0
    iget p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v0, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    add-int/2addr p3, v3

    if-ge p3, v2, :cond_1

    .line 1545
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide p1, p1, p3

    .line 1546
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->refreshToken(IJI)V

    return-void

    :cond_1
    const/16 p1, 0x191

    const-string p3, "processRefreshTokenResponse(): statusCode: "

    if-ne p2, p1, :cond_2

    .line 1551
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", invalid access token, reLogin"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    goto :goto_0

    :cond_2
    add-int/2addr p4, v3

    if-gt p4, v2, :cond_4

    .line 1555
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide p1, p1, v1

    .line 1556
    iget-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_3

    const-wide/16 p1, 0x64

    mul-long/2addr v0, p1

    const-wide/16 p1, 0x3

    .line 1557
    div-long p1, v0, p1

    .line 1559
    :cond_3
    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    goto :goto_0

    .line 1561
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 1562
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", unable to refresh token, try reLogin"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    goto :goto_0

    .line 1565
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", unable to refresh token, logOut"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->logOut()V

    :cond_6
    :goto_0
    return-void
.end method

.method public processReleaseImsNetworkIdentitiesResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V
    .locals 6

    .line 1421
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processReleaseImsNetworkIdentitiesResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1423
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 1424
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->clear()V

    .line 1425
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "impi"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "impu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fqdn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 1431
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    add-int/2addr p2, v1

    if-ge p2, v2, :cond_1

    .line 1433
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1434
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    return-void

    .line 1438
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to ReleaseImsNetworkIdentities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1441
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_2

    .line 1442
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 p1, 0x0

    .line 1443
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 1446
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processRevokeAccessTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;)V
    .locals 3

    .line 1460
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRevokeAccessTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1462
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1463
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 1464
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 1465
    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    goto :goto_0

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to RevokeAccessToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1470
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    const-string v0, "refresh_token"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->revokeToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processRevokeRefreshTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;)V
    .locals 3

    .line 1474
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRevokeRefreshTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1476
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1477
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    goto :goto_0

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to RevokeRefreshToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1485
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x40c

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processSendSMSResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V
    .locals 4

    .line 1873
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSendSMSResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1875
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-nez p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    const/4 p1, 0x3

    if-ge p2, p1, :cond_0

    .line 1876
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pd_cookies"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1877
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->sendSMS(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public processSetCallForwardingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .locals 3

    .line 1693
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSetCallForwardingInfoResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1694
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 1696
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v0, p1, p2

    .line 1697
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V

    return-void

    .line 1701
    :cond_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/16 p3, 0xb

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, p3, v0, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1703
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void
.end method

.method public processSetCallWaitingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .locals 3

    .line 1678
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSetCallWaitingInfoResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1679
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 1681
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v0, p1, p2

    .line 1682
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V

    return-void

    .line 1686
    :cond_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/16 p3, 0xa

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, p3, v0, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1689
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void
.end method

.method public processTermsAndConditionsResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;I)V
    .locals 3

    .line 1205
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processTermsAndConditionsResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1206
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 1207
    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;->mTCResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse$TCResponse;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse$TCResponse;->mUrl:Ljava/lang/String;

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    goto :goto_0

    .line 1209
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1211
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1212
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions(IJ)V

    return-void

    .line 1217
    :cond_1
    :goto_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/4 v0, 0x2

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, v0, v1, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processValidateE911AddressResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;I)V
    .locals 11

    .line 1237
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAddressValidationResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1240
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1241
    iget p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mE911Locations:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse$E911Locations;

    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse$E911Locations;->mAddressIdentifier:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse$E911Locations;->mExpirationDate:Ljava/lang/String;

    invoke-direct {p0, p2, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateE911AddressLocally(ILjava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, v2

    invoke-virtual {p0, p2, v2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addE911Address(IIJ)V

    goto :goto_0

    .line 1244
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    add-int/lit8 v8, p2, 0x1

    const/4 p2, 0x3

    if-ge v8, p2, :cond_1

    .line 1246
    sget-object p2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v9, p2, v8

    .line 1247
    iget p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mTransactionId:I

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->findAndRemoveListener(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    .line 1248
    iget v5, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    iget-boolean v6, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mConfirmed:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V

    return-void

    .line 1252
    :cond_1
    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const-string v0, "Address Confirmation Required"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v8, v2

    .line 1256
    :goto_1
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;

    const/4 v4, 0x6

    iget-boolean v5, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v6, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    iget v7, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;-><init>(IZLjava/lang/String;IZ)V

    .line 1259
    iget p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mTransactionId:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->findAndRemoveListener(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    if-eqz p1, :cond_3

    .line 1262
    :try_start_0
    invoke-interface {p1, p2}, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1264
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public provisionAccount()V
    .locals 4

    .line 648
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType3:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->provisionAccount(IJ)V

    return-void
.end method

.method provisionAccount(IJ)V
    .locals 5

    .line 652
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provisionAccount(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildProvisionAccountRequest()Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest;

    move-result-object v0

    .line 656
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/softphone/v1/account"

    .line 658
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 659
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 664
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 667
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not build JSONObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 671
    invoke-virtual {v1, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 673
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p2, 0x3

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public reLogin(IZ)V
    .locals 12

    .line 749
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reLogin(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needNewToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/32 v4, 0xea60

    mul-long v10, v2, v4

    .line 753
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reLogin(): backoff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    add-int/2addr p1, v1

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, p1

    .line 757
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v7, 0x404

    move v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    return-void

    .line 761
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const/16 v0, 0x11

    if-eqz p1, :cond_3

    .line 762
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 765
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 766
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 768
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterSoftphoneLabelObserver()V

    if-eqz p2, :cond_2

    .line 770
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 771
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-array v0, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "refresh_token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    .line 772
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 773
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 774
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x406

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 776
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x405

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 779
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "reLogin(): network info is null or not connected"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 780
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 782
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x409

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_1
    return-void
.end method

.method public refreshToken(IJI)V
    .locals 3

    .line 1517
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshToken(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", attempt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1519
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/oauth/v4/token"

    .line 1521
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 1522
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&client_secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&grant_type=refresh_token&refresh_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setStringBody(Ljava/lang/String;)V

    .line 1525
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1526
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1528
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x3f7

    invoke-virtual {p0, p2, p1, p4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    return-void
.end method

.method refreshTokenAfterRecovery()V
    .locals 5

    .line 1904
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "refresh_token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1905
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1906
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    long-to-int v1, v3

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1907
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "attempt"

    .line 1908
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1909
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1910
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerProgressListener current size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 548
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SupplementaryServiceListener current size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 558
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public releaseImsNetworkIdentities(IJ)V
    .locals 5

    .line 1389
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseImsNetworkIdentities(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->impiEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1392
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "No IMS network identifiers to release."

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1393
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    .line 1398
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildReleaseImsNetworkIdentifiersRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;

    move-result-object v0

    .line 1400
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/softphone/v1/identities"

    .line 1402
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 1403
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1408
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1411
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not build JSONObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1415
    invoke-virtual {v1, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1417
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p2, 0x5

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method resetAccountStatus()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    const-string v0, "com.samsung.softphone.action.ACCOUNT_REQUEST_LOGOUT"

    const/4 v1, 0x0

    .line 525
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 528
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 529
    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 532
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 533
    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    :cond_1
    return-void
.end method

.method public resetCurrentAddresses()V
    .locals 3

    .line 1382
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "resetCurrentAddresses()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildResetCurrentAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1384
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method restoreAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 9

    .line 568
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tokenExist()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "restoreAccessToken(): Softphone Service is recovering"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 570
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setupEnvironment(I)V

    .line 571
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 572
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAccountSecretKey()V

    .line 573
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->refreshTokenAfterRecovery()V

    .line 574
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v6, 0x0

    .line 576
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide v7, v1, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method resumeSmsAlarm(J)V
    .locals 13

    .line 453
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 454
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 455
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last sms time: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 456
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    .line 457
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 455
    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/16 p1, 0x1e

    .line 458
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 461
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "resend_sms"

    .line 462
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x2000000

    invoke-static {p2, v10, p1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 465
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v10, v11, v12, p2}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 467
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "schedule to send SMS at: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 467
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method public revokeAccessToken()V
    .locals 5

    .line 1450
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "revokeAccessToken()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1452
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1453
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    const-string v1, "access_token"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->revokeToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "refresh_token"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method revokeToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1489
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "revokeToken()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "revokeToken(): tokenType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildRevokeTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/RevokeTokenRequest;

    move-result-object p2

    .line 1494
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/oauth/v4/revoke"

    .line 1496
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 1497
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1502
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1505
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not build JSONObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :goto_0
    sget-object p2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    const-string p2, "access_token"

    .line 1509
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1510
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p2, "refresh_token"

    .line 1511
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1512
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 416
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    .line 417
    iput-wide p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    .line 418
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 419
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p2, p1, p3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p2, p3, p4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->storeTokens(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method scheduleRefreshTokenAlarm(JI)V
    .locals 5

    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "refresh_token"

    .line 425
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "attempt"

    .line 426
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 430
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh token after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", attempt: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized scheduleSmsAlarm()V
    .locals 13

    monitor-enter p0

    .line 434
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    .line 436
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sms_time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v1, v2, v9, v10, v11}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;J)V

    const/16 v1, 0x1e

    .line 438
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 441
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "resend_sms"

    .line 442
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/high16 v9, 0x2000000

    const/4 v10, 0x0

    invoke-static {v2, v10, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 445
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v10, v11, v12, v2}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 447
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "schedule to send SMS at: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .locals 4

    .line 844
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V

    return-void
.end method

.method public setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .locals 4

    .line 822
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V

    return-void
.end method

.method public startInitstate()V
    .locals 7

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method tokenExist()Z
    .locals 6

    .line 1882
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1883
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "refresh_token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1884
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tokenExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1885
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1887
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "sharedPrefHelper is null"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1
.end method

.method public tryDeregister()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 721
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public tryRegister()V
    .locals 1

    .line 716
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method tryRegisterWithDefaultAddress()Z
    .locals 6

    .line 1136
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCurrentAddress()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    return v1

    .line 1141
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getDefaultAddress()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 1143
    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setAddressCurrent(J)V

    .line 1144
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateAccountStatus(Ljava/lang/String;I)V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAccountStatus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 349
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_0

    .line 363
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 364
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array p2, v1, [Ljava/lang/String;

    .line 367
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    .line 368
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "status > ?"

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 360
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildRegisteredAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildActivateAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 357
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildDeActivateAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    new-array p2, v1, [Ljava/lang/String;

    .line 374
    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    .line 375
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "userid = ?"

    invoke-virtual {v1, p1, v0, v2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    .line 377
    iget p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    return-void
.end method

.method public validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    .locals 9

    .line 677
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V

    return-void
.end method
