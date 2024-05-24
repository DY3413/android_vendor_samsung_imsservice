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

.field protected final mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field protected mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.field private mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

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
.method public static synthetic $r8$lambda$B_dZ1C0Kil-f05CTvnh1jib-99Y(Landroid/net/NetworkCapabilities;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->lambda$reLogin$1(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TZas5MCqIhp_jFkq63XX-XnxzU0(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/location/Address;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->lambda$checkAutoRegistrationCondition$3(Landroid/location/Address;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOvgrhD910VAUqq-poV-T9Y9GlE(Landroid/net/NetworkCapabilities;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->lambda$reLogin$2(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jVeDcsFWOoT6x77TMg3uyLTNTds(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->lambda$reLogin$0(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 10

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 147
    iput-wide v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    .line 148
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 150
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 151
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 152
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 155
    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    .line 157
    new-instance v2, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    const/4 v2, -0x1

    .line 158
    iput v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const/4 v2, 0x1

    .line 159
    iput-boolean v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    .line 160
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 167
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 173
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHandler:Landroid/os/Handler;

    .line 175
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 268
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 177
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    .line 178
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

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

    if-nez v2, :cond_a2

    .line 187
    sget-object v2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 189
    :cond_a2
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
    :try_start_e1
    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;
    :try_end_e7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e1 .. :try_end_e7} :catch_e8

    goto :goto_103

    :catch_e8
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
    :goto_103
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    .line 200
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v3, v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 201
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;

    invoke-direct {v2, p0, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHandler:Landroid/os/Handler;

    .line 220
    invoke-static {v2, v1, v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 222
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {v0, p3, p2, p1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    .line 224
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    .line 225
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    .line 227
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1711
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1712
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

    .line 1713
    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-att-deviceId"

    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "x-att-contextInfo"

    .line 1715
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getContextInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private checkWithCondition(Ljava/util/List;Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;ZILjava/lang/String;)V
    .registers 16
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

    .line 1563
    iget-object v0, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mBusy:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    .line 1564
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: busy"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1565
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_21

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_21

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_21

    move v5, v2

    goto :goto_22

    :cond_21
    move v5, v3

    :goto_22
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d8

    .line 1567
    :cond_2f
    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNoAnswer:Ljava/lang/String;

    if-eqz v1, :cond_5a

    .line 1568
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: no-answer"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1569
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_4c

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4c

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_4c

    move v5, v2

    goto :goto_4d

    :cond_4c
    move v5, v3

    :goto_4d
    const/4 v6, 0x0

    const/4 v8, 0x2

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d8

    .line 1571
    :cond_5a
    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNotReachable:Ljava/lang/String;

    if-eqz v1, :cond_84

    .line 1572
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: not-reachable"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1573
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_77

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_77

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_77

    move v5, v2

    goto :goto_78

    :cond_77
    move v5, v3

    :goto_78
    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    .line 1575
    :cond_84
    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNotRegistered:Ljava/lang/String;

    if-eqz v1, :cond_af

    .line 1576
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: not-registered"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1577
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_a1

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a1

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_a1

    move v5, v2

    goto :goto_a2

    :cond_a1
    move v5, v3

    :goto_a2
    const/4 v6, 0x0

    const/16 v8, 0x8

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    .line 1579
    :cond_af
    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mUnconditional:Ljava/lang/String;

    if-eqz v0, :cond_d8

    .line 1580
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: unconditional"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1581
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_cc

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_cc

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_cc

    move v5, v2

    goto :goto_cd

    :cond_cc
    move v5, v3

    :goto_cd
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d8
    :goto_d8
    return-void
.end method

.method private deregisterSoftphoneLabelObserver()V
    .registers 3

    .line 1310
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "deregisterSoftphoneLabelObserver()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private findAndRemoveListener(I)Ljava/lang/Object;
    .registers 3

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-object v0
.end method

.method private getAccountSecretKey()V
    .registers 10

    .line 1862
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v6, "userid = ?"

    .line 1864
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    .line 1865
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 1866
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1867
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

    .line 1868
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getSecretKey(Landroid/database/Cursor;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 1869
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_52
    return-void
.end method

.method private getCallForwardingInfo(IJ)V
    .registers 7

    .line 788
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

    .line 789
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/callHandlingFeatures/v1/communication-diversion"

    .line 791
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "application/xcap-el+xml"

    .line 792
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 795
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 797
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x9

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .registers 4

    .line 846
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 848
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string p1, "application/xcap-el+xml"

    .line 849
    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Accept"

    .line 850
    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setStringBody(Ljava/lang/String;)V

    .line 854
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    return-object v0
.end method

.method private getContextInfo()Ljava/lang/String;
    .registers 3

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdl="

    .line 1702
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",os="

    .line 1704
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentAddress()J
    .registers 8

    .line 1145
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetCurrentAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1146
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

    if-eqz v0, :cond_4a

    .line 1149
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

    .line 1150
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v1, "_id"

    .line 1151
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1153
    :cond_47
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1155
    :cond_4a
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

.method private synthetic lambda$checkAutoRegistrationCondition$3(Landroid/location/Address;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    .line 1092
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 1093
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

    .line 1094
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "VI"

    .line 1095
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "PR"

    .line 1096
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_3f

    .line 1101
    :cond_36
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    const-string p1, "com.samsung.softphone.action.ACCOUNT_IN_INTERNATIONAL"

    .line 1102
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_3f
    :goto_3f
    const-string p1, "com.samsung.softphone.action.ACCOUNT_MISSING_E911"

    .line 1098
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 1105
    :cond_45
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onAddressObtained(): cannot determine location"

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-string p1, "com.samsung.softphone.action.ACCOUNT_LOCATION_UNKNOWN"

    .line 1107
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    return-void
.end method

.method private synthetic lambda$reLogin$0(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 2

    .line 736
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$reLogin$1(Landroid/net/NetworkCapabilities;)Z
    .registers 2

    const/16 v0, 0xc

    .line 737
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$reLogin$2(Landroid/net/NetworkCapabilities;)Z
    .registers 2

    const/16 v0, 0x10

    .line 738
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method private registerSoftphoneLabelObserver(Ljava/lang/String;)V
    .registers 5

    .line 1303
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSoftphoneLabelObserver() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1305
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountLabelUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 1306
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private removeSharedPreferences()V
    .registers 15

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "removeSharedPreferences()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 476
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

    const-string/jumbo v4, "tguard_token"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tguard_appid"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "environment"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "impi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "impu"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "fqdn"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refresh_token"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pd_cookies"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "sms_time"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private retryObtainPdCookies(I)V
    .registers 3

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_8

    .line 1799
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->obtainPdCookies(I)V

    :cond_8
    return-void
.end method

.method private saveAccountIdentities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 368
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

    .line 369
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

    .line 370
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

    .line 371
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method private saveListener(ILjava/lang/Object;)V
    .registers 3

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private scheduleRefreshIdentityAlarm(J)V
    .registers 8

    .line 447
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 448
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "refresh_identity"

    .line 449
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/high16 v2, 0x2000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh identity after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method private sendSMS(Ljava/lang/String;I)V
    .registers 14

    .line 1804
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "sendSMS()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1806
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpu()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 1808
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1807
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSendSMSRequest(Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/SendSMSRequest;

    move-result-object v0

    .line 1810
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->getHttpTransactionId()I

    move-result v1

    .line 1811
    new-instance v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1813
    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    const-string v5, "Host"

    if-ne v2, v4, :cond_40

    const-string v2, "https://messagessd.att.net/messaging/v0/outbound"

    .line 1814
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    const-string v2, "messagessd.att.net"

    .line 1815
    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_40
    const-string v2, "https://messagessd.stage.att.net/messaging/v0/outbound"

    .line 1817
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    const-string v2, "messagessd.stage.att.net"

    .line 1818
    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4a
    const-string v2, "Cookie"

    .line 1820
    invoke-virtual {v3, v2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v2, "application/json"

    .line 1821
    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept"

    .line 1822
    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "transactionId"

    .line 1823
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v8

    .line 1827
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 1829
    :try_start_6e
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1830
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\/"

    const-string v1, "/"

    .line 1831
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1832
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSMS(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setByteData([B)V
    :try_end_a3
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_a3} :catch_a4

    goto :goto_bf

    :catch_a4
    move-exception p1

    .line 1835
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

    .line 1838
    :goto_bf
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v8, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1839
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
    .registers 6

    .line 1160
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAddressCurrent(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildSetCurrentAddressUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 1162
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 1163
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V
    .registers 8

    .line 825
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallForwardingInfo() retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/16 v0, 0xb

    if-nez p1, :cond_2f

    .line 828
    new-instance p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 p2, 0x0

    const-string p3, "null info"

    invoke-direct {p1, v0, p2, p3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 830
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void

    .line 834
    :cond_2f
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSetCallForwardingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/callHandlingFeatures/v1/communication-diversion"

    .line 835
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v1

    .line 836
    invoke-virtual {v1, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 838
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p4, -0x1

    invoke-virtual {p3, v0, p2, p4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 839
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "communication-diversion"

    .line 840
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 841
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 842
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V
    .registers 8

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallWaitingInfo(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/16 v0, 0xa

    if-nez p1, :cond_2f

    .line 806
    new-instance p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 p2, 0x0

    const-string p3, "null info"

    invoke-direct {p1, v0, p2, p3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 807
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void

    .line 811
    :cond_2f
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSetCallWaitingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/callHandlingFeatures/v1/communication-waiting"

    .line 812
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v1

    .line 813
    invoke-virtual {v1, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 815
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p4, -0x1

    invoke-virtual {p3, v0, p2, p4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 816
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "communication-waiting"

    .line 817
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 818
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 819
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setupEnvironment(I)V
    .registers 4

    .line 467
    iput p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    .line 468
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->setupAppKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    .line 469
    invoke-static {p1, v0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->setupAppSecret(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    const-string p1, "api.att.com"

    .line 470
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHost:Ljava/lang/String;

    .line 471
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
    .registers 9

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 376
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "access_token"

    .line 377
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "token_type"

    .line 378
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
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

    const-string/jumbo v3, "refresh_token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 380
    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-virtual {p1, p2, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private updateAccountInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 356
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "impi"

    .line 357
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ":"

    .line 358
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v2, "@"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msisdn"

    .line 359
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "secret_key"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "environment"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateE911AddressLocally(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1247
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "updateE911AddressLocally()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    int-to-long v0, p1

    .line 1249
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildAddressUri(J)Landroid/net/Uri;

    move-result-object p1

    .line 1251
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "account_id"

    .line 1252
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "E911AID"

    .line 1253
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "expire_date"

    .line 1254
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V
    .registers 12

    .line 655
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

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildAddressValidationRequest(IZ)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest;

    move-result-object v0

    .line 660
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->getHttpTransactionId()I

    move-result v1

    if-eqz p3, :cond_40

    .line 662
    invoke-direct {p0, v1, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveListener(ILjava/lang/Object;)V

    .line 664
    :cond_40
    new-instance p3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/emergencyServices/v1/e911Locations"

    .line 666
    invoke-virtual {p3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 667
    invoke-virtual {p3, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 672
    :try_start_56
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p3, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_62} :catch_63

    goto :goto_7e

    :catch_63
    move-exception v0

    .line 675
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

    .line 678
    :goto_7e
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 679
    invoke-virtual {p3, p5, p6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 681
    iget-object p5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p6, 0x6

    invoke-virtual {p5, p6, v1, p1, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 682
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p5, "retry_count"

    .line 683
    invoke-virtual {p3, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "confirmed"

    .line 684
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 685
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 686
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method addE911Address(IIJ)V
    .registers 10

    .line 1260
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

    .line 1262
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildAddAddressRequest(I)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest;

    move-result-object v0

    .line 1264
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/softphone/v1/locations"

    .line 1266
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 1267
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1272
    :try_start_42
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_4e} :catch_4f

    goto :goto_6a

    :catch_4f
    move-exception v0

    .line 1275
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

    .line 1278
    :goto_6a
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1279
    invoke-virtual {v1, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1281
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p3, 0x7

    invoke-virtual {p0, p3, p2, p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 980
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "account_id"

    .line 981
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_13

    const-string p1, "msisdn"

    .line 983
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    :cond_13
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

    .line 986
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

    .line 987
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1, v0, p0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method checkAutoRegistrationCondition()V
    .registers 3

    .line 1085
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegisterWithDefaultAddress()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1088
    :cond_7
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;-><init>(Landroid/content/Context;)V

    .line 1089
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->requestGeolocationUpdate(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;)V

    return-void
.end method

.method public deregisterProgressListener(I)V
    .registers 2

    .line 526
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deregisterSupplementaryServiceListener(I)V
    .registers 2

    .line 536
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dump(Lcom/sec/internal/log/IndentingPrintWriter;)V
    .registers 4

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->increaseIndent()V

    .line 906
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    .line 907
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 15

    const/4 v6, 0x0

    .line 555
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    return-void
.end method

.method exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V
    .registers 14

    .line 566
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 567
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserManager:Landroid/os/UserManager;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_15

    .line 569
    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 571
    :cond_15
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

    .line 572
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

    if-nez p1, :cond_7d

    .line 577
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "authorizationCode is null"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 581
    :cond_7d
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    .line 582
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    .line 583
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 584
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

    .line 585
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

    .line 590
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

    .line 591
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v1, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/util/Map;)V

    .line 593
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setupEnvironment(I)V

    .line 595
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    .line 596
    invoke-static {p4, p5, p2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildExchangeForAccessTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ExchangeForAccessTokenRequest;

    move-result-object p1

    .line 598
    new-instance p2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string p4, "/oauth/v4/token"

    .line 600
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string p4, "Content-Type"

    const-string p5, "application/x-www-form-urlencoded"

    .line 601
    invoke-virtual {p2, p4, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    .line 605
    :try_start_129
    new-instance p5, Lorg/json/JSONObject;

    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_135
    .catch Lorg/json/JSONException; {:try_start_129 .. :try_end_135} :catch_136

    goto :goto_151

    :catch_136
    move-exception p1

    .line 608
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

    .line 611
    :goto_151
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 612
    invoke-virtual {p2, p7, p8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    if-lez p6, :cond_163

    .line 615
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x403

    invoke-virtual {p0, p1, p6, p3, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_169

    .line 617
    :cond_163
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p6, p3, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :goto_169
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "finalize()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 248
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getAccessTokenType()Ljava/lang/String;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    return-object p0
.end method

.method public getAutoRetryComSet(ZZ)Z
    .registers 3

    .line 266
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    return p0
.end method

.method public getCallForwardingInfo()V
    .registers 5

    .line 785
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallForwardingInfo(IJ)V

    return-void
.end method

.method public getCallWaitingInfo()V
    .registers 5

    .line 770
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallWaitingInfo(IJ)V

    return-void
.end method

.method getCallWaitingInfo(IJ)V
    .registers 7

    .line 773
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

    .line 774
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/callHandlingFeatures/v1/communication-waiting"

    .line 776
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "application/xcap-el+xml"

    .line 777
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 780
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 782
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x8

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method getDefaultAddress()J
    .registers 8

    .line 1130
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetDefaultAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1131
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

    if-eqz v0, :cond_4a

    .line 1134
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

    .line 1135
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v1, "_id"

    .line 1136
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1138
    :cond_47
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1140
    :cond_4a
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 861
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 862
    array-length v2, v1

    if-lez v2, :cond_8b

    const/4 v2, 0x0

    .line 863
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getDeviceList()Ljava/util/List;

    move-result-object v1

    .line 864
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reg.deviceList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 865
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 866
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 868
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v4, ""

    if-eqz v2, :cond_54

    const-string v5, "gr"

    .line 870
    invoke-virtual {v2, v5}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_55

    :cond_54
    move-object v2, v4

    .line 875
    :cond_55
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 876
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

    goto :goto_34

    .line 878
    :cond_82
    new-instance v4, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;

    invoke-direct {v4, v3, v2}, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 883
    :cond_8b
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
    .registers 10

    .line 945
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

    .line 948
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/softphone/v1/identities?SoftphoneType:sip"

    .line 950
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 951
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

    .line 953
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 954
    invoke-virtual {v0, p4, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    const-string p4, "attempt"

    if-eqz p1, :cond_81

    .line 957
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p1, 0x0

    const/16 p5, 0x68

    invoke-virtual {p0, p5, p3, p2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 958
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 959
    invoke-virtual {p1, p4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 960
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 962
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto :goto_bd

    .line 964
    :cond_81
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p5, 0x1

    invoke-virtual {p1, p5, p3, p2, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 965
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 966
    invoke-virtual {p2, p4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 967
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-lez p6, :cond_b8

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p6

    const-wide/32 p4, 0xea60

    mul-long/2addr p2, p4

    .line 971
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "SoftphoneEvents(): backoff: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 972
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_bd

    .line 974
    :cond_b8
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_bd
    return-void
.end method

.method public getProfileId()I
    .registers 1

    .line 263
    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    return p0
.end method

.method public getTermsAndConditions()V
    .registers 5

    .line 1166
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions(IJ)V

    return-void
.end method

.method getTermsAndConditions(IJ)V
    .registers 7

    .line 1169
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

    .line 1171
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/softphone/v1/termsAndConditions?tcType=Url"

    .line 1173
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 1175
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1176
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1178
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p2, 0x2

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public getUserId()I
    .registers 4

    .line 888
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

    .line 889
    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    return p0
.end method

.method public handleDeRegisterRequest()V
    .registers 4

    .line 1337
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

    .line 1338
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 1339
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(II)V

    const/4 v0, 0x1

    .line 1340
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    :cond_27
    return-void
.end method

.method handleImsNetworkIdentityAfterRecovery()V
    .registers 13

    .line 1884
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerSoftphoneLabelObserver(Ljava/lang/String;)V

    .line 1885
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

    .line 1886
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

    .line 1887
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

    if-eqz v0, :cond_c5

    if-eqz v1, :cond_c5

    if-nez v2, :cond_81

    goto :goto_c5

    .line 1899
    :cond_81
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v5, "Recovery: identity found. Try to relogin"

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1900
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v5, 0x40d

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 1901
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v0, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    .line 1902
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v1, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v1

    .line 1903
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v2

    .line 1905
    new-instance v3, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    new-instance v5, Ljava/util/ArrayList;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v5, v2}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    .line 1906
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, v4

    invoke-virtual {p0, v4, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    goto :goto_10e

    .line 1890
    :cond_c5
    :goto_c5
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Recovery: no previous identity"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1891
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v9, v0, v4

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 1893
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_10e

    .line 1894
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

    .line 1895
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1894
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1896
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resumeSmsAlarm(J)V

    :cond_10e
    :goto_10e
    return-void
.end method

.method public handleLabelUpdated()V
    .registers 3

    .line 1345
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "handleLabelUpdated()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleDeRegisterRequest()V

    .line 1347
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public handleTryRegisterRequest()V
    .registers 5

    .line 1318
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    if-nez v0, :cond_c

    .line 1319
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "There is an ongoing profile registration."

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 1323
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->createProfileFromTemplate(Landroid/content/Context;Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;Ljava/lang/String;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 1325
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {v2, v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2a

    .line 1327
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    .line 1329
    :cond_2a
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

    goto :goto_4f

    .line 1331
    :cond_43
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "fail to build profile"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-string v0, "Fail to build profile."

    .line 1332
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyRegisterStatus(ZLjava/lang/String;)V

    :goto_4f
    return-void
.end method

.method isImsNetworkIdentifiersResponseValid(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;)Z
    .registers 5

    .line 1068
    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    if-eqz v0, :cond_1b

    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mLocations:Ljava/util/List;

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    .line 1074
    iput-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const-string v1, "Cannot retrieve account info. Please call AT&T Customer Care."

    .line 1075
    iput-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    .line 1077
    new-instance v1, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/4 v2, 0x4

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return v0
.end method

.method public isTarget(Ljava/lang/String;)Z
    .registers 5

    .line 490
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->impiEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 493
    :goto_17
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
    .registers 3

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "logOut()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 706
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 707
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 712
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 714
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetAccountStatus()V

    .line 716
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetCurrentAddresses()V

    .line 717
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->removeSharedPreferences()V

    .line 718
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterSoftphoneLabelObserver()V

    .line 719
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x3fa

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V
    .registers 7

    .line 914
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

    .line 915
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 917
    :try_start_28
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

    .line 918
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/IProgressListener;

    invoke-interface {v1, p1}, Lcom/sec/vsim/attsoftphone/IProgressListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_49} :catch_4a

    goto :goto_22

    :catch_4a
    move-exception v1

    .line 920
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

    goto :goto_22

    :cond_66
    return-void
.end method

.method public notifyRegisterStatus(ZLjava/lang/String;)V
    .registers 6

    .line 938
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

    .line 940
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 941
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    .registers 7

    .line 926
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

    .line 927
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 929
    :try_start_28
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

    .line 930
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    invoke-interface {v1, p1}, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_49} :catch_4a

    goto :goto_22

    :catch_4a
    move-exception v1

    .line 932
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

    goto :goto_22

    :cond_66
    return-void
.end method

.method public obtainPdCookies(I)V
    .registers 12

    .line 1720
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtainPdCookies(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1721
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1723
    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    const-string v2, "Host"

    const/4 v3, 0x1

    if-ne v3, v1, :cond_3f

    const-string v1, "https://tprodsmsx.att.net/commonLogin/nxsEDAM/controller.do"

    .line 1724
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    .line 1725
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    const-string v7, "messagessd.att.net"

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildObtainPdCookiesQueryParams(Ljava/lang/String;ILjavax/crypto/SecretKey;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setQueryParameters(Ljava/util/LinkedHashMap;Z)V

    const-string/jumbo v1, "tprodsmsx.att.net"

    .line 1727
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_3f
    const-string v1, "https://tstagesms.stage.att.net/commonLogin/nxsEDAM/controller.do"

    .line 1729
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    .line 1730
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    const-string v7, "messagessd.stage.att.net"

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildObtainPdCookiesQueryParams(Ljava/lang/String;ILjavax/crypto/SecretKey;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setQueryParameters(Ljava/util/LinkedHashMap;Z)V

    const-string/jumbo v1, "tstagesms.stage.att.net"

    .line 1732
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5b
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 1735
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v7

    .line 1738
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1739
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
    .registers 3

    .line 893
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onAirplaneModeOn()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 895
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x407

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onNetworkConnected()V
    .registers 3

    .line 899
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onNetworkConnected()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 900
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x408

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onRequestAkaChallenge(Ljava/lang/String;I)V
    .registers 9

    .line 1743
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, p2

    .line 1744
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

    .line 1746
    invoke-static {p1}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1747
    new-instance v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v4, "/softphone/v1/challengeKeys"

    .line 1748
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1749
    aget-object v4, v2, v4

    const-string/jumbo v5, "randomChallenge"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1750
    aget-object v2, v2, v4

    const-string v4, "networkAuthenticatorToken"

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1752
    invoke-virtual {v3, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    const/16 v0, 0x13

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1754
    invoke-static {v2, v0, p2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1755
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "nonce"

    .line 1756
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1758
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUserSwitch()V
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onUserSwitch()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 767
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onUserSwitchedAway()V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onUserSwitchedAway()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method public onUserSwitchedBack()V
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onUserSwitchedBack()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 314
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processAddE911AddressResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;II)V
    .registers 7

    .line 1285
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

    .line 1288
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_38

    .line 1289
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    iget-object p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;->mLocationResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse$LocationResponse;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse$LocationResponse;->mLocations:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->compareAndSaveE911Address(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4a

    .line 1291
    :cond_38
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4a

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_4a

    .line 1293
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1294
    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addE911Address(IIJ)V

    return-void

    .line 1299
    :cond_4a
    :goto_4a
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-direct {p2, v0, p3, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processAkaChallengeResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;ILjava/lang/String;)V
    .registers 7

    .line 1676
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAkaChallengeResponse(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    invoke-static {p1}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->processAkaAuthenticationResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;)Ljava/lang/String;

    move-result-object p1

    .line 1679
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1680
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

    if-ge p2, p1, :cond_4d

    .line 1682
    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onRequestAkaChallenge(Ljava/lang/String;I)V

    return-void

    .line 1685
    :cond_4d
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    const-string p2, "aka failed over 3 times, deregister..."

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1687
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_8e

    .line 1691
    :cond_63
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Sending AKA response Intent to SimManager"

    invoke-static {p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "result"

    .line 1693
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "id"

    .line 1694
    iget p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1695
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p2, p1}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_8e
    return-void
.end method

.method public processExchangeForAccessTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;IZ)V
    .registers 16

    .line 1911
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

    .line 1913
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_aa

    .line 1914
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 1915
    iget-object v3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mAccessToken:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mTokenType:Ljava/lang/String;

    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mExpiresIn:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mRefreshToken:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1916
    iget-wide v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 v4, 0x384

    mul-long/2addr v2, v4

    .line 1917
    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    .line 1918
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x40b

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1920
    sget-object p2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v6, p2, v1

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    if-nez p3, :cond_71

    .line 1922
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleSmsAlarm()V

    .line 1923
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->obtainPdCookies(I)V

    goto :goto_d0

    .line 1926
    :cond_71
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-nez p2, :cond_d0

    .line 1927
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

    .line 1928
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1927
    invoke-virtual {p2, p3, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p2

    .line 1929
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resumeSmsAlarm(J)V

    goto :goto_d0

    .line 1933
    :cond_aa
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c6

    add-int/lit8 v9, p2, 0x1

    const/4 p2, 0x3

    if-ge v9, p2, :cond_c6

    .line 1935
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide v10, p1, v9

    .line 1936
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    move-object v3, p0

    move v6, p3

    invoke-virtual/range {v3 .. v11}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    return-void

    .line 1940
    :cond_c6
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetAccountStatus()V

    .line 1941
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p3, 0x40c

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 1944
    :cond_d0
    :goto_d0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, v1, p3, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processGetCallForwardingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;I)V
    .registers 26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    .line 1587
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

    .line 1589
    iget-boolean v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v8, 0x3

    const/16 v9, 0x9

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_1e8

    .line 1590
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mActive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1591
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mNoReplyTimer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1592
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

    .line 1593
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "true"

    .line 1594
    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mActive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 1595
    iget-object v0, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mNoReplyTimer:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1598
    iget-object v0, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mRuleset:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_78
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1db

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;

    .line 1599
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ruleId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1600
    iget-object v0, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mActions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;->mForwardTo:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;->mTarget:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1601
    array-length v1, v0

    sub-int/2addr v1, v12

    aget-object v5, v0, v1

    .line 1602
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1603
    iget-object v0, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_202

    :goto_bf
    move v0, v10

    goto :goto_f7

    :sswitch_c1
    const-string v1, "call-diversion-not-reachable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    goto :goto_bf

    :cond_ca
    const/4 v0, 0x4

    goto :goto_f7

    :sswitch_cc
    const-string v1, "call-diversion-busy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    goto :goto_bf

    :cond_d5
    move v0, v8

    goto :goto_f7

    :sswitch_d7
    const-string v1, "call-diversion-not-logged-in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    goto :goto_bf

    :cond_e0
    const/4 v0, 0x2

    goto :goto_f7

    :sswitch_e2
    const-string v1, "call-diversion-unconditional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    goto :goto_bf

    :cond_eb
    move v0, v12

    goto :goto_f7

    :sswitch_ed
    const-string v1, "call-diversion-no-reply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f6

    goto :goto_bf

    :cond_f6
    move v0, v11

    :goto_f7
    packed-switch v0, :pswitch_data_218

    .line 1625
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

    .line 1626
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->checkWithCondition(Ljava/util/List;Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;ZILjava/lang/String;)V

    goto/16 :goto_78

    .line 1617
    :pswitch_11d
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_130

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_130

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_130

    move/from16 v16, v12

    goto :goto_132

    :cond_130
    move/from16 v16, v11

    :goto_132
    const/16 v17, 0x0

    const/16 v19, 0x3

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    .line 1609
    :pswitch_143
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_156

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_156

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_156

    move/from16 v16, v12

    goto :goto_158

    :cond_156
    move/from16 v16, v11

    :goto_158
    const/16 v17, 0x0

    const/16 v19, 0x1

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    .line 1621
    :pswitch_169
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_17c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17c

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_17c

    move/from16 v16, v12

    goto :goto_17e

    :cond_17c
    move/from16 v16, v11

    :goto_17e
    const/16 v17, 0x0

    const/16 v19, 0x8

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    .line 1605
    :pswitch_18f
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_1a2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a2

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_1a2

    move/from16 v16, v12

    goto :goto_1a4

    :cond_1a2
    move/from16 v16, v11

    :goto_1a4
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    .line 1613
    :pswitch_1b5
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_1c8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c8

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_1c8

    move/from16 v16, v12

    goto :goto_1ca

    :cond_1c8
    move/from16 v16, v11

    :goto_1ca
    const/16 v17, 0x0

    const/16 v19, 0x2

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    .line 1630
    :cond_1db
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v2, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v9, v1, v2, v13}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;Ljava/util/List;)V

    .line 1632
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    goto :goto_201

    .line 1634
    :cond_1e8
    iget v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    if-ne v1, v10, :cond_1f7

    add-int/2addr v0, v12

    if-ge v0, v8, :cond_1f7

    .line 1636
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v1, v1, v0

    .line 1637
    invoke-direct {v6, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallForwardingInfo(IJ)V

    return-void

    .line 1641
    :cond_1f7
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v9, v11, v1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1642
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    :goto_201
    return-void

    :sswitch_data_202
    .sparse-switch
        -0x7cddf879 -> :sswitch_ed
        -0x45b7dfbc -> :sswitch_e2
        -0xd706b33 -> :sswitch_d7
        0x66b7622 -> :sswitch_cc
        0x194f58ca -> :sswitch_c1
    .end sparse-switch

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_1b5
        :pswitch_18f
        :pswitch_169
        :pswitch_143
        :pswitch_11d
    .end packed-switch
.end method

.method public processGetCallWaitingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;I)V
    .registers 8

    .line 1543
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

    .line 1545
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_48

    .line 1546
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;->mActive:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1547
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    new-instance v3, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    const-string/jumbo v4, "true"

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;->mActive:Ljava/lang/String;

    .line 1548
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {v3, p1}, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;-><init>(Z)V

    invoke-direct {p2, v1, v0, v2, v3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    .line 1547
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    goto :goto_65

    .line 1550
    :cond_48
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5a

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_5a

    .line 1552
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1553
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallWaitingInfo(IJ)V

    return-void

    .line 1557
    :cond_5a
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, v1, v0, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    :goto_65
    return-void
.end method

.method public processImsNetworkIdentifiersResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;ZIZI)V
    .registers 18

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    .line 992
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

    .line 995
    iget-boolean v5, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_d4

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->isImsNetworkIdentifiersResponseValid(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 996
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v3, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mLocations:Ljava/util/List;

    iget-object v5, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->compareAndSaveE911Address(Ljava/util/List;Ljava/lang/String;)V

    .line 998
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerSoftphoneLabelObserver(Ljava/lang/String;)V

    .line 999
    new-instance v2, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v3, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v5, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v3, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v10, v10, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v10, v10, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    .line 1001
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v6, v10}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    const-wide/32 v2, 0xa4cb80

    .line 1004
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshIdentityAlarm(J)V

    .line 1006
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v5, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveAccountIdentities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    const-string v3, ":"

    .line 1013
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v9

    iget-object v5, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v5, v5, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v5, v5, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    const-string v6, "@"

    .line 1014
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1012
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.softphone.action.ACCOUNT_LOGIN_COMPLETED"

    .line 1015
    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x40e

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    if-eqz v4, :cond_cd

    .line 1018
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->checkAutoRegistrationCondition()V

    .line 1020
    :cond_cd
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_155

    .line 1022
    :cond_d4
    iget v5, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v10, -0x1

    const/4 v11, 0x3

    if-ne v5, v10, :cond_ec

    add-int/2addr v3, v9

    if-ge v3, v11, :cond_ec

    .line 1024
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v7, v1, v3

    move-object v0, p0

    move v1, p2

    move/from16 v2, p4

    move-wide v4, v7

    move/from16 v6, p5

    .line 1025
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    return-void

    :cond_ec
    if-eqz v2, :cond_107

    add-int/lit8 v2, v6, 0x1

    if-ge v2, v11, :cond_fb

    .line 1032
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const-wide/32 v3, 0xafc8

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    :cond_fb
    const-string v2, "Please try again later or call AT&T Customer Care."

    .line 1035
    iput-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    .line 1036
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "processImsNetworkIdentifiersResponse(): notify getImsNetworkIdentity failure after 3 attempts"

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_155

    .line 1039
    :cond_107
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_117

    const-string v3, "LDAP Record not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 1040
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions()V

    return-void

    :cond_117
    if-eqz v4, :cond_155

    .line 1046
    iget v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_140

    .line 1047
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

    .line 1049
    invoke-virtual {p0, v8, v9}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    return-void

    :cond_140
    add-int/2addr v6, v9

    const/4 v2, 0x6

    if-ge v6, v2, :cond_152

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1053
    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v7, v2, v8

    move-object v0, p0

    move/from16 v2, p4

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    return-void

    .line 1056
    :cond_152
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->logOut()V

    .line 1063
    :cond_155
    :goto_155
    new-instance v2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v3, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v2, v7, v3, v1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 1064
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processObtainPdCookiesResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)V
    .registers 10

    if-eqz p1, :cond_bb

    .line 1763
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_b7

    const-string v0, "Set-Cookie"

    .line 1765
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    .line 1768
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[;,]"

    .line 1769
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1770
    array-length v3, v2

    move v4, v1

    :goto_30
    if-ge v4, v3, :cond_1c

    aget-object v5, v2, v4

    const-string v6, "PD-ID="

    .line 1771
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_44

    const-string v6, "PD-H-SESSION-ID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1772
    :cond_44
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    .line 1773
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 1778
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1779
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "processObtainPdCookiesResponse()"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1780
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processObtainPdCookiesResponse(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 1782
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

    .line 1783
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    .line 1782
    invoke-virtual {p2, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->sendSMS(Ljava/lang/String;I)V

    goto :goto_be

    .line 1787
    :cond_b3
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    goto :goto_be

    .line 1790
    :cond_b7
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    goto :goto_be

    .line 1793
    :cond_bb
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    :goto_be
    return-void
.end method

.method public processProvisionAccountResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V
    .registers 8

    .line 1198
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

    .line 1199
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_30

    .line 1200
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v0, 0x0

    const-wide/32 v2, 0xafc8

    const/4 v4, 0x4

    invoke-virtual {p2, v4, v0, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    goto :goto_41

    .line 1202
    :cond_30
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_41

    add-int/lit8 p2, p2, 0x1

    if-ge p2, v1, :cond_41

    .line 1204
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType3:[J

    aget-wide v0, p1, p2

    .line 1205
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->provisionAccount(IJ)V

    return-void

    .line 1210
    :cond_41
    :goto_41
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, v1, v0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processRefreshTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;III)V
    .registers 13

    .line 1501
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

    .line 1504
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    .line 1505
    iget-object v3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mAccessToken:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mTokenType:Ljava/lang/String;

    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mExpiresIn:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mRefreshToken:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1506
    iget-wide p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 p3, 0x384

    mul-long/2addr p1, p3

    .line 1507
    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    .line 1508
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 1509
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleImsNetworkIdentityAfterRecovery()V

    goto/16 :goto_e6

    .line 1512
    :cond_5a
    iget p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v0, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v0, :cond_6c

    add-int/2addr p3, v3

    if-ge p3, v2, :cond_6c

    .line 1514
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide p1, p1, p3

    .line 1515
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->refreshToken(IJI)V

    return-void

    :cond_6c
    const/16 p1, 0x191

    const-string p3, "processRefreshTokenResponse(): statusCode: "

    if-ne p2, p1, :cond_8f

    .line 1520
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

    .line 1521
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    goto :goto_e6

    :cond_8f
    add-int/2addr p4, v3

    if-gt p4, v2, :cond_a9

    .line 1524
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide p1, p1, v1

    .line 1525
    iget-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_a5

    const-wide/16 p1, 0x64

    mul-long/2addr v0, p1

    const-wide/16 p1, 0x3

    .line 1526
    div-long p1, v0, p1

    .line 1528
    :cond_a5
    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    goto :goto_e6

    .line 1530
    :cond_a9
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    if-eqz p1, :cond_ca

    .line 1531
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

    .line 1532
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    goto :goto_e6

    .line 1534
    :cond_ca
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

    .line 1535
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->logOut()V

    :cond_e6
    :goto_e6
    return-void
.end method

.method public processReleaseImsNetworkIdentitiesResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V
    .registers 8

    .line 1390
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

    .line 1392
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_91

    .line 1393
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->clear()V

    .line 1394
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "impi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "impu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fqdn"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_bb

    .line 1400
    :cond_91
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a3

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_a3

    .line 1402
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1403
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    return-void

    .line 1407
    :cond_a3
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

    .line 1410
    :goto_bb
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_c7

    .line 1411
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 p1, 0x0

    .line 1412
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 1415
    :cond_c7
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processRevokeAccessTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;)V
    .registers 5

    .line 1429
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

    .line 1431
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_26

    const/4 p1, 0x0

    .line 1432
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 1433
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 1434
    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    goto :goto_3e

    .line 1436
    :cond_26
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

    :goto_3e
    const-string/jumbo p1, "refresh_token"

    .line 1439
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->revokeToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processRevokeRefreshTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;)V
    .registers 5

    .line 1443
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

    .line 1445
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_20

    const/4 p1, 0x0

    .line 1446
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    goto :goto_38

    .line 1448
    :cond_20
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

    .line 1454
    :goto_38
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x40c

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processSendSMSResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V
    .registers 7

    .line 1843
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

    .line 1845
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-nez p1, :cond_5c

    add-int/lit8 p2, p2, 0x1

    const/4 p1, 0x3

    if-ge p2, p1, :cond_5c

    .line 1846
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

    .line 1847
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->sendSMS(Ljava/lang/String;I)V

    :cond_5c
    return-void
.end method

.method public processSetCallForwardingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .registers 7

    .line 1662
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

    .line 1663
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_32

    .line 1665
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v0, p1, p2

    .line 1666
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V

    return-void

    .line 1670
    :cond_32
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-direct {p2, v0, p3, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1672
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void
.end method

.method public processSetCallWaitingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .registers 7

    .line 1647
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

    .line 1648
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_32

    .line 1650
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v0, p1, p2

    .line 1651
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V

    return-void

    .line 1655
    :cond_32
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-direct {p2, v0, p3, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1658
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void
.end method

.method public processTermsAndConditionsResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;I)V
    .registers 6

    .line 1182
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

    .line 1183
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_2b

    .line 1184
    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;->mTCResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse$TCResponse;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse$TCResponse;->mUrl:Ljava/lang/String;

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    goto :goto_3d

    .line 1186
    :cond_2b
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3d

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3d

    .line 1188
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1189
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions(IJ)V

    return-void

    .line 1194
    :cond_3d
    :goto_3d
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p2, v1, v0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processValidateE911AddressResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;I)V
    .registers 14

    .line 1214
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

    .line 1217
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 1218
    iget p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mE911Locations:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse$E911Locations;

    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse$E911Locations;->mAddressIdentifier:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse$E911Locations;->mExpirationDate:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateE911AddressLocally(ILjava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v0, v1

    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addE911Address(IIJ)V

    goto :goto_67

    .line 1221
    :cond_3a
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_5b

    add-int/lit8 v8, p2, 0x1

    const/4 p2, 0x3

    if-ge v8, p2, :cond_5b

    .line 1223
    sget-object p2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v9, p2, v8

    .line 1224
    iget p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mTransactionId:I

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->findAndRemoveListener(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    .line 1225
    iget v5, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    iget-boolean v6, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mConfirmed:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V

    return-void

    .line 1229
    :cond_5b
    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const-string v0, "Address Confirmation Required"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_67

    move v9, v3

    goto :goto_68

    :cond_67
    :goto_67
    move v9, v1

    .line 1233
    :goto_68
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;

    const/4 v5, 0x6

    iget-boolean v6, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v7, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    iget v8, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;-><init>(IZLjava/lang/String;IZ)V

    .line 1236
    iget p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mTransactionId:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->findAndRemoveListener(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    if-eqz p1, :cond_9e

    .line 1239
    :try_start_7f
    invoke-interface {p1, p2}, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_9e

    :catch_83
    move-exception p1

    .line 1241
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

    :cond_9e
    :goto_9e
    return-void
.end method

.method public provisionAccount()V
    .registers 5

    .line 622
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType3:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->provisionAccount(IJ)V

    return-void
.end method

.method provisionAccount(IJ)V
    .registers 9

    .line 626
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provisionAccount(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 628
    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildProvisionAccountRequest()Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest;

    move-result-object v0

    .line 630
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/softphone/v1/account"

    .line 632
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 633
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 638
    :try_start_39
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_45} :catch_46

    goto :goto_61

    :catch_46
    move-exception v0

    .line 641
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

    .line 644
    :goto_61
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 645
    invoke-virtual {v1, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 647
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p2, 0x3

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public reLogin(IZ)V
    .registers 15

    .line 723
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reLogin(): retryCount: "

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

    .line 725
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_65

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/32 v4, 0xea60

    mul-long v10, v2, v4

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reLogin(): backoff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    add-int/2addr p1, v1

    const/4 v0, 0x6

    if-le p1, v0, :cond_5b

    move v8, v0

    goto :goto_5c

    :cond_5b
    move v8, p1

    .line 731
    :goto_5c
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v7, 0x404

    move v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    return-void

    .line 735
    :cond_65
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 736
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda2;-><init>()V

    .line 737
    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda3;-><init>()V

    .line 738
    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    .line 739
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    const/16 v0, 0x11

    if-eqz p1, :cond_f0

    .line 743
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 744
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 746
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterSoftphoneLabelObserver()V

    if-eqz p2, :cond_e8

    .line 748
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 749
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refresh_token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    .line 750
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 751
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 752
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x406

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_104

    .line 754
    :cond_e8
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x405

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_104

    .line 757
    :cond_f0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p2, "reLogin(): network is not connected"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 758
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 760
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x409

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_104
    return-void
.end method

.method public refreshToken(IJI)V
    .registers 8

    .line 1486
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshToken(): retryCount: "

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

    .line 1488
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/oauth/v4/token"

    .line 1490
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 1491
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
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

    .line 1494
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1495
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1497
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x3f7

    invoke-virtual {p0, p2, p1, p4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    return-void
.end method

.method refreshTokenAfterRecovery()V
    .registers 6

    .line 1874
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

    const-string/jumbo v3, "refresh_token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1875
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1876
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    long-to-int v1, v3

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1877
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "attempt"

    .line 1878
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1879
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1880
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .registers 6

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProgressListener current size: "

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

    .line 522
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .registers 6

    .line 530
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

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public releaseImsNetworkIdentities(IJ)V
    .registers 9

    .line 1358
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseImsNetworkIdentities(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->impiEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1361
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "No IMS network identifiers to release."

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1362
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 1366
    :cond_36
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    .line 1367
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildReleaseImsNetworkIdentifiersRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;

    move-result-object v0

    .line 1369
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/softphone/v1/identities"

    .line 1371
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 1372
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1377
    :try_start_5c
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_68} :catch_69

    goto :goto_84

    :catch_69
    move-exception v0

    .line 1380
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

    .line 1383
    :goto_84
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1384
    invoke-virtual {v1, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1386
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p2, 0x5

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method resetAccountStatus()V
    .registers 4

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    const-string v0, "com.samsung.softphone.action.ACCOUNT_REQUEST_LOGOUT"

    const/4 v1, 0x0

    .line 499
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_17

    .line 502
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 503
    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 505
    :cond_17
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_22

    .line 506
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 507
    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    :cond_22
    return-void
.end method

.method public resetCurrentAddresses()V
    .registers 4

    .line 1351
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "resetCurrentAddresses()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildResetCurrentAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1353
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
    .registers 15

    .line 542
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tokenExist()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 543
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "restoreAccessToken(): Softphone Service is recovering"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setupEnvironment(I)V

    .line 545
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 546
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAccountSecretKey()V

    .line 547
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->refreshTokenAfterRecovery()V

    .line 548
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_45

    .line 549
    :cond_2f
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_45

    const/4 v6, 0x0

    .line 550
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide v7, v1, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    :cond_45
    :goto_45
    return-void
.end method

.method resumeSmsAlarm(J)V
    .registers 18

    move-object v0, p0

    .line 425
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    move-wide/from16 v2, p1

    .line 426
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 427
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last sms time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    .line 428
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    .line 429
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xc

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xd

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/16 v2, 0x1e

    .line 430
    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    .line 433
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 434
    iget-object v3, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "resend_sms"

    .line 435
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    iget-object v3, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/high16 v13, 0x2000000

    const/4 v14, 0x0

    invoke-static {v3, v14, v2, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 438
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    iget-object v3, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v14, v12, v13, v3}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 440
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule to send SMS at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method public revokeAccessToken()V
    .registers 5

    .line 1419
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "revokeAccessToken()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const-string v0, "access_token"

    .line 1422
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->revokeToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "refresh_token"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method revokeToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1458
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "revokeToken()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revokeToken(): tokenType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildRevokeTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/RevokeTokenRequest;

    move-result-object p2

    .line 1463
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/oauth/v4/revoke"

    .line 1465
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 1466
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1471
    :try_start_45
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_51} :catch_52

    goto :goto_6d

    :catch_52
    move-exception p2

    .line 1474
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

    .line 1477
    :goto_6d
    sget-object p2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    const-string p2, "access_token"

    .line 1478
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 1479
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_92

    :cond_82
    const-string/jumbo p2, "refresh_token"

    .line 1480
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 1481
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_92
    :goto_92
    return-void
.end method

.method saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    .line 386
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 387
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    .line 388
    iput-wide p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    .line 389
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 390
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
    .registers 9

    .line 395
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "refresh_token"

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "attempt"

    .line 397
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 401
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh token after "

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
    .registers 14

    monitor-enter p0

    .line 405
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 406
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

    .line 407
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

    .line 406
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 408
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

    .line 409
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 412
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 413
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "resend_sms"

    .line 414
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/high16 v9, 0x2000000

    const/4 v10, 0x0

    invoke-static {v2, v10, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 417
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v10, v11, v12, v2}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 419
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "schedule to send SMS at: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
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

    .line 421
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

    .line 419
    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_1 .. :try_end_118} :catchall_11a

    .line 422
    monitor-exit p0

    return-void

    :catchall_11a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .registers 6

    .line 822
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V

    return-void
.end method

.method public setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .registers 6

    .line 800
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V

    return-void
.end method

.method public startInitstate()V
    .registers 8

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 560
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    :cond_16
    return-void
.end method

.method tokenExist()Z
    .registers 7

    .line 1852
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 1853
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

    const-string/jumbo v4, "refresh_token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1854
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

    .line 1855
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    if-eqz p0, :cond_4c

    const/4 v1, 0x1

    :cond_4c
    return v1

    .line 1857
    :cond_4d
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "sharedPrefHelper is null"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1
.end method

.method public tryDeregister()V
    .registers 3

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 695
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public tryRegister()V
    .registers 2

    .line 690
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method tryRegisterWithDefaultAddress()Z
    .registers 7

    .line 1113
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCurrentAddress()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 1115
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    return v1

    .line 1118
    :cond_f
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getDefaultAddress()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1e

    .line 1120
    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setAddressCurrent(J)V

    .line 1121
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public updateAccountStatus(Ljava/lang/String;I)V
    .registers 6

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAccountStatus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_52

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4d

    const/4 v1, 0x5

    if-eq p2, v1, :cond_48

    .line 334
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v1, "status"

    .line 335
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    .line 338
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 339
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "status > ?"

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 331
    :cond_48
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildRegisteredAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_56

    .line 325
    :cond_4d
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildActivateAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_56

    .line 328
    :cond_52
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildDeActivateAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_56
    if-eqz p1, :cond_86

    .line 345
    iget p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 346
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "userid = ?"

    invoke-virtual {v1, p1, v0, v2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_86

    .line 348
    iget p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_86
    return-void
.end method

.method public validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    .registers 11

    const/4 v4, 0x0

    .line 651
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V

    return-void
.end method
