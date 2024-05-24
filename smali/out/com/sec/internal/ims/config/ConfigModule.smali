.class public Lcom/sec/internal/ims/config/ConfigModule;
.super Landroid/os/Handler;
.source "ConfigModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IConfigModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;
    }
.end annotation


# static fields
.field private static final AUTOCONF_TAG:Ljava/lang/String; = "Autoconf"

.field static final AUTO_CONFIG_IMS_PDN:I = 0x1

.field static final ERROR_WORKFLOW_IS_NULL:I = 0x2c4

.field static final LOCAL_CONFIG_VERS:I = 0x3b

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field m403ForbiddenCounter:I

.field mAcsEncrNeededParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallState:I

.field mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

.field mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

.field private final mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mIidToken:Ljava/lang/String;

.field mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

.field mIsConfigModuleBootUp:Z

.field mIsMessagingReady:Z

.field mIsRcsEnabled:Z

.field private mListener:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/ims/IAutoConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileNetwork:Z

.field private mMsisdnNumber:Ljava/lang/String;

.field mNeedRetryOverNetwork:Z

.field mNeedRetryOverWifi:Z

.field private mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/Network;",
            ">;>;"
        }
    .end annotation
.end field

.field mOnCompleteList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAutoComplete:Z

.field mPendingAutoConfig:Z

.field mPendingDeregi:Z

.field mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVerificationCode:Ljava/lang/String;

.field mWifiNetwork:Z

.field mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

.field mWorkflowThreadList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PGZ6flfldQ7VjYO7W10syiA8xiY(Lcom/sec/internal/ims/config/ConfigModule;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->lambda$dumpEncrAcsDb$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/config/ConfigModule;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 102
    const-class v0, Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 163
    invoke-direct/range {p0 .. p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    .line 111
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    const/4 v2, 0x0

    .line 112
    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    .line 113
    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    .line 114
    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIidToken:Ljava/lang/String;

    const/4 v2, 0x0

    .line 115
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    .line 116
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    .line 120
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 121
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 122
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    .line 123
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    .line 125
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 126
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 127
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 128
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsConfigModuleBootUp:Z

    .line 129
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsMessagingReady:Z

    .line 131
    iput v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    const/4 v3, 0x1

    .line 135
    iput v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    .line 136
    iput v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    const-string v2, "capdiscoveryallowedprefixes"

    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v2, "capinfoexpiry"

    .line 144
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v2, "defaultdisc"

    .line 145
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v2, "disableInitialAddressBookScan"

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v2, "nonRCScapInfoExpiry"

    .line 147
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v2, "pollingperiod"

    .line 148
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v2, "imMsgTech"

    .line 149
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v2, "ChatAuth"

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v2, "GroupChatAuth"

    .line 151
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v2, "ftAuth"

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "standaloneMsgAuth"

    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v2, "cancelmessageux"

    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "validity"

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "version"

    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v2, "rcsDisabledState"

    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v2, "geolocPushAuth"

    .line 158
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "source-throttlepublish"

    .line 159
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v2, "max-number-ofsubscriptions-inpresence-list"

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mAcsEncrNeededParams:Ljava/util/List;

    .line 164
    iput-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    move-object/from16 v2, p3

    .line 165
    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 166
    new-instance v2, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "Autoconfig"

    const/16 v4, 0x64

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private checkChatPolicyforSMSAppChange(I)I
    .registers 8

    .line 1400
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1401
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    .line 1402
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_MSG_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    const-string/jumbo v2, "support_chat_on_default_mms_app"

    const/4 v3, 0x0

    .line 1404
    invoke-static {p1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 1405
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-static {v4, v5, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v4

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    move v4, v3

    :goto_21
    if-eqz v0, :cond_3a

    .line 1408
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "jibe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v2

    .line 1411
    :goto_3b
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultSmsChanged - SupportChat Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v3
.end method

.method private dumpAutoConfDb(Landroid/net/Uri;)V
    .registers 10

    const-string v0, "Autoconf"

    const/4 v1, 0x1

    .line 1353
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_12} :catch_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_69

    if-eqz p0, :cond_53

    .line 1355
    :try_start_14
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 1356
    :goto_18
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge p1, v2, :cond_45

    .line 1357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 1359
    :cond_45
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    if-ge p1, v1, :cond_58

    const-string p1, "  DB is empty"

    .line 1360
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_58

    :catchall_51
    move-exception p1

    goto :goto_5e

    :cond_53
    const-string p1, "  DB is not available"

    .line 1363
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_58
    .catchall {:try_start_14 .. :try_end_58} :catchall_51

    :cond_58
    :goto_58
    if-eqz p0, :cond_6e

    .line 1365
    :try_start_5a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catch Ljava/lang/SecurityException; {:try_start_5a .. :try_end_5d} :catch_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_5d} :catch_69

    goto :goto_6e

    :goto_5e
    if-eqz p0, :cond_68

    .line 1353
    :try_start_60
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception p0

    :try_start_65
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_68
    :goto_68
    throw p1
    :try_end_69
    .catch Ljava/lang/SecurityException; {:try_start_65 .. :try_end_69} :catch_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_65 .. :try_end_69} :catch_69

    :catch_69
    const-string p0, "  Skip dump auto conf db"

    .line 1366
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private dumpEncrAcsDb(Landroid/net/Uri;)V
    .registers 11

    const-string v0, "Autoconf"

    const/4 v1, 0x1

    .line 1329
    :try_start_3
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_12} :catch_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_85

    .line 1330
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_66

    .line 1332
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    .line 1333
    :goto_1d
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_66

    .line 1334
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    .line 1335
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/config/ConfigModule$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/sec/internal/ims/config/ConfigModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_59

    const-string v4, " "

    .line 1336
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    :cond_59
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4
    :try_end_5d
    .catchall {:try_start_12 .. :try_end_5d} :catchall_79

    if-ge v4, v1, :cond_63

    .line 1347
    :try_start_5f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catch Ljava/lang/SecurityException; {:try_start_5f .. :try_end_62} :catch_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_62} :catch_85

    return-void

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1344
    :cond_66
    :try_start_66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_73

    .line 1345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->dumpEncryptedACS(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_79

    :cond_73
    if-eqz p1, :cond_8a

    .line 1347
    :try_start_75
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_78
    .catch Ljava/lang/SecurityException; {:try_start_75 .. :try_end_78} :catch_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_78} :catch_85

    goto :goto_8a

    :catchall_79
    move-exception p0

    if-eqz p1, :cond_84

    .line 1329
    :try_start_7c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_84

    :catchall_80
    move-exception p1

    :try_start_81
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_84
    :goto_84
    throw p0
    :try_end_85
    .catch Ljava/lang/SecurityException; {:try_start_81 .. :try_end_85} :catch_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_81 .. :try_end_85} :catch_85

    :catch_85
    const-string p0, "  Skip dump encr auto conf db"

    .line 1348
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method private isWifiSwitchOn()Z
    .registers 2

    .line 1138
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_15

    .line 1139
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private synthetic lambda$dumpEncrAcsDb$0(Ljava/lang/String;)Z
    .registers 2

    .line 1335
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mAcsEncrNeededParams:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onADSChanged(I)V
    .registers 4

    .line 1710
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onADSChanged"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 1711
    :goto_8
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_1c

    .line 1712
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1714
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->onADSChanged()V

    :cond_19
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method private resetMsisdnFromPau(I)V
    .registers 5

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "RES_SP_PAU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000018

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "reset to MSISDN_FROM_PAU"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1583
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "msisdn_from_pau"

    const-string v2, ""

    invoke-static {p1, p0, v1, v0, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIsGcEnabledChange(ZI)V
    .registers 6

    .line 1755
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsGcEnabledChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1756
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string p1, "isGcEnabledChange"

    const/4 v0, 0x0

    const-string v1, "imsswitch"

    invoke-static {p2, p0, v1, p1, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public changeOpMode(ZII)V
    .registers 10

    .line 846
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    .line 847
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeOpMode: mIsRcsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",RCSE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x13000004

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 850
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 851
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 852
    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string p0, "changeOpMode: it is not supported"

    .line 853
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 860
    :cond_4c
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsProfile(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v2, :cond_60

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 861
    :cond_60
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    if-nez p1, :cond_a3

    .line 863
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p1

    .line 864
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p3

    const-string v1, "jibe"

    .line 865
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 866
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->isValidConfigDb(I)Z

    move-result p1

    if-eqz p1, :cond_8f

    if-eqz p3, :cond_8f

    const-string/jumbo p1, "root/token/token"

    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8f

    goto :goto_95

    :cond_8f
    const-string p0, "not to trigger a config because of invalid config"

    .line 871
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a2

    :cond_95
    :goto_95
    const-string p1, "force autoconfig for supporting up profile"

    .line 867
    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 868
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p1, v4, v5, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 869
    invoke-virtual {p0, v3, v5, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    :goto_a2
    return-void

    .line 876
    :cond_a3
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v4, v5, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tcPopupUserAccept: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p3, :cond_d0

    if-eqz p1, :cond_d0

    .line 879
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    const-string p1, "force autoconfig in case tcPopupUserAccept is zero"

    .line 880
    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 881
    invoke-virtual {p0, v3, v5, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    :cond_d0
    return-void
.end method

.method checkMsisdnSkipCount(IZ)Z
    .registers 7

    .line 1371
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1372
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_47

    .line 1374
    sget-object p2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v0, p2, :cond_47

    const-string p2, "jibe"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    goto :goto_47

    .line 1379
    :cond_18
    iget-object p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getMsisdnSkipCount(I)I

    move-result p2

    .line 1380
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MsisdnSkipCount : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", MobileNetwork : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x3

    if-ne p2, p1, :cond_46

    .line 1381
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    if-eqz p0, :cond_46

    const/4 v2, 0x1

    :cond_46
    return v2

    .line 1375
    :cond_47
    :goto_47
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string p2, "no need to check MsisdnSkipCount"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method clearWorkFlow(I)V
    .registers 6

    .line 1087
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v0

    .line 1088
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    .line 1089
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->isConfigOngoing()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1090
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "clearWorkFlow started"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1091
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->stopWorkFlow()V

    .line 1092
    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    .line 1093
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    const-string p0, "clearWorkFlow done"

    .line 1094
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_30
    return-void
.end method

.method clearWorkFlowThread(I)V
    .registers 5

    .line 1099
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    if-nez v0, :cond_12

    .line 1101
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "clearWorkFlowThread: workflowThread is null"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1104
    :cond_12
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "clearWorkFlowThread: started"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1105
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    const-wide/16 v1, 0x64

    .line 1107
    :try_start_1e
    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_29
    .catchall {:try_start_1e .. :try_end_21} :catchall_27

    .line 1111
    :goto_21
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2e

    :catchall_27
    move-exception v0

    goto :goto_36

    :catch_29
    move-exception v0

    .line 1109
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    goto :goto_21

    .line 1113
    :goto_2e
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "clearWorkFlowThread: done"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1111
    :goto_36
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1112
    throw v0
.end method

.method createNetworkListener(II)V
    .registers 6

    .line 1592
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNetworkListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/ConfigModule$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule$1;-><init>(Lcom/sec/internal/ims/config/ConfigModule;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method deregisterNetworkCallback(I)V
    .registers 5

    .line 1684
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deregisterNetworkCallback"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1685
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1686
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1687
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_21

    .line 1689
    :cond_31
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1690
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public dump()V
    .registers 7

    .line 1297
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    const-string v1, "Autoconfig History:"

    .line 1299
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1301
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v1

    const-string v2, "*"

    if-nez v1, :cond_a6

    .line 1302
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "Autoconf"

    if-eqz v1, :cond_a0

    .line 1303
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v1

    if-eqz v1, :cond_82

    const-string v1, "Dump of configuration db for simslot0:"

    .line 1305
    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "*#simslot0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->dumpAutoConfDb(Landroid/net/Uri;)V

    const-string v1, "Dump of configuration db for simslot1:"

    .line 1308
    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "*#simslot1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->dumpAutoConfDb(Landroid/net/Uri;)V

    goto :goto_c3

    :cond_82
    const-string v1, "Dump of configuration db:"

    .line 1312
    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->dumpAutoConfDb(Landroid/net/Uri;)V

    goto :goto_c3

    :cond_a0
    const-string v1, "Dump of configuration db: mContext is null!"

    .line 1316
    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c3

    :cond_a6
    const-string v1, "Dump of ACS Encr : "

    .line 1320
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->dumpEncrAcsDb(Landroid/net/Uri;)V

    .line 1323
    :goto_c3
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1325
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/WorkFlowController;->dump()V

    return-void
.end method

.method public getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;
    .registers 2

    .line 746
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p0

    return-object p0
.end method

.method public getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    .registers 2

    .line 1149
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableNetwork(I)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroid/net/Network;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1721
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1722
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 1723
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1724
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1725
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1726
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1728
    :cond_34
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1729
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1730
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1732
    :cond_64
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1733
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 1734
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1736
    :cond_94
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableNetworkForNetworkType(II)Landroid/net/Network;
    .registers 3

    .line 1742
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_1f

    .line 1745
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getRcsConfVersion(I)Ljava/lang/Integer;
    .registers 3

    .line 919
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "version"

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getRcsConfigMark(I)Ljava/lang/String;
    .registers 5

    .line 893
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 894
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    const-string v2, ""

    if-ne v0, v1, :cond_12

    .line 895
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getRcsConfigMark: no SIM loaded"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 898
    :cond_12
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    .line 899
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5b

    .line 900
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 901
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 902
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getRcsConfigMark()Ljava/lang/String;

    move-result-object v2

    .line 903
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 904
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRcsConfigMark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5b
    return-object v2
.end method

.method public getRcsProfile(I)Ljava/lang/String;
    .registers 2

    .line 887
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getRcsProfile(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .registers 2

    .line 1761
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getTokenDeletedReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .registers 2

    .line 1164
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getTokenDeletedReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 205
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 208
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 209
    iget v3, v1, Landroid/os/Message;->what:I

    const-string v4, "phoneId"

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2b

    const/16 v6, 0x11

    if-eq v3, v6, :cond_2b

    const/4 v6, 0x4

    if-eq v3, v6, :cond_2b

    const/16 v6, 0x15

    if-ne v3, v6, :cond_1c

    goto :goto_2b

    :cond_1c
    const/16 v6, 0xd

    if-ne v3, v6, :cond_33

    .line 212
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_33

    .line 213
    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_33

    .line 211
    :cond_2b
    :goto_2b
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 216
    :cond_33
    :goto_33
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v3

    .line 217
    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 218
    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getNetworkType(I)Ljava/lang/String;

    move-result-object v7

    .line 219
    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v8

    .line 220
    invoke-static {v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_54

    .line 221
    invoke-interface {v9, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v12

    if-eqz v12, :cond_54

    move v12, v10

    goto :goto_55

    :cond_54
    const/4 v12, 0x0

    .line 223
    :goto_55
    sget-object v13, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleMessage: msg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v2, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rcsNetworkType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " rcsAs: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " isRemoteConfigNeeded: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v2, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    iget v14, v1, Landroid/os/Message;->what:I

    const-string v15, "jibe"

    const-string v5, "lastError"

    const/4 v11, 0x2

    packed-switch v14, :pswitch_data_924

    const-string/jumbo v0, "unknown message"

    .line 700
    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_922

    :pswitch_a4
    if-eqz v3, :cond_922

    .line 525
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIidToken:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendIidToken(Ljava/lang/String;)V

    goto/16 :goto_922

    .line 696
    :pswitch_ad
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->sendRcsAutoconfigStart(I)V

    goto/16 :goto_922

    .line 687
    :pswitch_b4
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_d7

    const-string v1, "dual_simhandling"

    .line 688
    invoke-interface {v9, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7

    const-string v1, "Clear workflow"

    .line 689
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 690
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlow(I)V

    .line 692
    :cond_d7
    invoke-virtual {v0, v2, v12}, Lcom/sec/internal/ims/config/ConfigModule;->processConnectionChange(IZ)V

    goto/16 :goto_922

    .line 682
    :pswitch_dc
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-virtual {v0, v2, v12}, Lcom/sec/internal/ims/config/ConfigModule;->processConnectionChange(IZ)V

    goto/16 :goto_922

    .line 671
    :pswitch_f6
    iput-boolean v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsConfigModuleBootUp:Z

    .line 672
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/WorkFlowController;->onBootCompleted()V

    goto/16 :goto_922

    :pswitch_ff
    if-eqz v3, :cond_922

    .line 677
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->FORBIDDEN_ERROR:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    goto/16 :goto_922

    :pswitch_108
    if-eqz v3, :cond_922

    .line 519
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendMsisdnNumber(Ljava/lang/String;)V

    goto/16 :goto_922

    :pswitch_111
    const-string v1, "HANDLE_AUTO_CONFIG_RESTART:"

    .line 381
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v2, v10}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    if-nez v3, :cond_132

    const-string/jumbo v1, "workflow is null. skip autoconfig"

    .line 385
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_922

    .line 389
    :cond_132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadyNetwork: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Start command: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdList(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_922

    .line 392
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, v2, v12}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_922

    :pswitch_177
    if-eqz v3, :cond_17c

    .line 665
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->onDefaultSmsPackageChanged()V

    .line 667
    :cond_17c
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->notifyDefaultSmsChanged(I)V

    goto/16 :goto_922

    :pswitch_181
    const-string v1, "HANDLE_AUTO_CONFIG_START_WITH_SUITABLE_NETWORK retrigger ACS with best network"

    .line 398
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, v2, v10}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    goto/16 :goto_922

    .line 657
    :pswitch_18d
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->init(I)V

    if-eqz v3, :cond_922

    .line 659
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->handleMSISDNDialog()V

    goto/16 :goto_922

    .line 639
    :pswitch_197
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 640
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1a4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1a5

    :cond_1a4
    move v1, v10

    .line 641
    :goto_1a5
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 643
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_922

    .line 645
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->isRcsDormantMode()Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 646
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 647
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 648
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto/16 :goto_922

    .line 649
    :cond_1d7
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_1f1

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-nez v4, :cond_1f1

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_922

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {v2, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->hasChatbotService(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v4

    if-eqz v4, :cond_922

    .line 650
    :cond_1f1
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto/16 :goto_922

    .line 635
    :pswitch_1f6
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->onTelephonyCallStatusChanged(II)V

    goto/16 :goto_922

    .line 589
    :pswitch_1ff
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_20a

    .line 590
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_20b

    :cond_20a
    const/4 v1, -0x1

    .line 593
    :goto_20b
    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_22b

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_22b

    iget v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-eqz v3, :cond_22b

    const-string v3, "Pending Autoconfig comlete event on active call"

    .line 594
    invoke-static {v13, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 595
    iput-boolean v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 596
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsLastError(I)V

    goto/16 :goto_922

    .line 598
    :cond_22b
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_922

    .line 600
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2b5

    .line 601
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    iget v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/sec/internal/ims/config/ConfigComplete;->setStateforACSComplete(IILjava/util/List;I)V

    .line 602
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v1, v5}, Lcom/sec/internal/ims/config/ConfigComplete;->handleAutoconfigurationComplete(ILjava/util/List;ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V

    .line 604
    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v6, v3, :cond_922

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNeedRetryOverWifi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mWifiNetwork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", lastErrorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 607
    iget-boolean v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    if-eqz v3, :cond_922

    if-eqz v1, :cond_2a2

    const/16 v3, 0x320

    if-eq v1, v3, :cond_2a2

    const/16 v3, 0x321

    if-eq v1, v3, :cond_2a2

    const/16 v3, 0x322

    if-eq v1, v3, :cond_2a2

    const/16 v3, 0x323

    if-eq v1, v3, :cond_2a2

    const/16 v3, 0x324

    if-eq v1, v3, :cond_2a2

    const/16 v3, 0x325

    if-ne v1, v3, :cond_298

    goto :goto_2a2

    :cond_298
    const-string v1, "clear mNeedRetryOverWifi to false"

    .line 616
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 617
    iput-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    goto/16 :goto_922

    .line 611
    :cond_2a2
    :goto_2a2
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    if-eqz v1, :cond_922

    const-string/jumbo v1, "reset AcsSettings for KT over Wifi"

    .line 612
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 613
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    goto/16 :goto_922

    .line 622
    :cond_2b5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b9
    :goto_2b9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 623
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_2b9

    .line 624
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_2b9

    .line 627
    :cond_2d3
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ADS set to other SIM"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_922

    .line 579
    :pswitch_2dc
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 580
    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->onSimRefresh(I)V

    .line 581
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_922

    const-string/jumbo v1, "sim state changed, reset to MSISDN_FROM_PAU"

    .line 582
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 583
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->resetMsisdnFromPau(I)V

    goto/16 :goto_922

    .line 554
    :pswitch_2fc
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 555
    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 556
    invoke-virtual {v0, v1, v12}, Lcom/sec/internal/ims/config/ConfigModule;->onSimReady(IZ)V

    goto/16 :goto_922

    .line 560
    :pswitch_30d
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    .line 561
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 562
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_34a

    .line 564
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_322
    :goto_322
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 565
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v4

    if-eqz v4, :cond_322

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_322

    .line 566
    sget-object v4, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "task is set as IDLE because of ads change."

    invoke-static {v4, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 567
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_322

    .line 571
    :cond_34a
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result v1

    if-eqz v1, :cond_35a

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v1

    if-nez v1, :cond_370

    :cond_35a
    sget-object v1, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_370

    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_370

    .line 572
    iput-boolean v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    .line 574
    :cond_370
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->onADSChanged(I)V

    .line 575
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Network configs are reset"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_922

    .line 549
    :pswitch_37c
    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/config/ConfigModule;->setDualSimRcsAutoConfig(Z)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 550
    invoke-virtual {v0, v11, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_922

    :pswitch_38a
    if-eqz v3, :cond_922

    .line 533
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsProfile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c9

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_3a2

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_3c9

    .line 534
    :cond_3a2
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    if-nez v1, :cond_3b1

    .line 535
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    if-nez v1, :cond_3ac

    .line 536
    iput-boolean v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 538
    :cond_3ac
    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->changeOpMode(Z)V

    goto/16 :goto_922

    .line 540
    :cond_3b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pending AutoConfig mIsRcsEnabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_922

    .line 543
    :cond_3c9
    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->changeOpMode(Z)V

    goto/16 :goto_922

    :pswitch_3d0
    if-eqz v3, :cond_922

    .line 513
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendVerificationCode(Ljava/lang/String;)V

    goto/16 :goto_922

    :pswitch_3d9
    if-eqz v3, :cond_922

    .line 507
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IAutoConfigurationListener;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    goto/16 :goto_922

    :pswitch_3e8
    if-eqz v3, :cond_922

    .line 501
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IAutoConfigurationListener;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    goto/16 :goto_922

    .line 274
    :pswitch_3f7
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    sget-object v4, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-eq v6, v4, :cond_3ff

    move v4, v10

    goto :goto_400

    :cond_3ff
    const/4 v4, 0x0

    :goto_400
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setNeedResetConfig(Z)V

    .line 275
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_433

    .line 277
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40f
    :goto_40f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_433

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 278
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v5

    if-eqz v5, :cond_40f

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v4

    if-eqz v4, :cond_40f

    .line 279
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/16 v5, 0x8f

    invoke-interface {v4, v5, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(II)V

    goto :goto_40f

    .line 283
    :cond_433
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/config/params/ACSConfig;->setIsTriggeredByNrcr(Z)V

    .line 286
    :pswitch_43a
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->PUSH_SMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    goto/16 :goto_660

    :pswitch_441
    const-string v7, "HANDLE_AUTO_CONFIG_COMPLETE:"

    .line 403
    invoke-static {v13, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    iget-object v7, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->resetReAutoConfigOption(I)V

    .line 405
    iget v7, v1, Landroid/os/Message;->arg1:I

    .line 406
    iget v1, v1, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_454

    const/16 v3, 0x2c4

    goto :goto_458

    .line 407
    :cond_454
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->getLastErrorCode()I

    move-result v3

    .line 409
    :goto_458
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v14

    .line 411
    iget-object v15, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Autoconfig complete: old version = "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", new version = "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", last errorcode = "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v2, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 413
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",OV:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",NV:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",LEC:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v11, 0x13000006

    invoke-static {v11, v8}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v12, :cond_4b7

    if-lez v1, :cond_4b7

    const/16 v8, 0x3b

    if-ne v1, v8, :cond_4b5

    goto :goto_4b7

    :cond_4b5
    const/4 v8, 0x0

    goto :goto_4b8

    :cond_4b7
    :goto_4b7
    move v8, v10

    .line 417
    :goto_4b8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "localConfigUsedState: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v2, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",LCUS:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v15, 0x1300000c

    invoke-static {v15, v11}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v9, :cond_4eb

    .line 420
    invoke-interface {v9, v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateLocalConfigUsedState(Z)V

    .line 423
    :cond_4eb
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AcsTryReason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v2, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x3db

    if-eq v3, v8, :cond_53c

    .line 426
    iget-object v8, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    invoke-virtual {v8, v1, v3, v2}, Lcom/sec/internal/ims/config/ConfigComplete;->sendRCSAInfoToHQM(III)V

    .line 428
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const/16 v9, 0xc8

    if-ne v3, v9, :cond_523

    const-string v9, "RACC"

    .line 430
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_52c

    :cond_523
    const-string v9, "RACF"

    .line 432
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_52c
    const-string v9, "overwrite_mode"

    .line 434
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    iget-object v9, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v10, "DRCS"

    invoke-static {v2, v9, v10, v8}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_53c
    const/16 v8, 0x320

    if-ne v3, v8, :cond_56d

    const-string v1, "SSL Handshake failed"

    .line 439
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->startAcsWithDelay(I)V

    .line 441
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_922

    .line 442
    sget-object v7, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_922

    .line 443
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 444
    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    invoke-virtual {v6, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 447
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 448
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_922

    :cond_56d
    if-eqz v14, :cond_580

    .line 453
    invoke-interface {v14}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v8

    if-nez v8, :cond_580

    const/16 v8, 0x2c4

    if-ne v3, v8, :cond_580

    const-string v0, "autoconfiguration failed because sim is unavailable."

    .line 454
    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_922

    .line 458
    :cond_580
    iget-object v8, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    if-eqz v8, :cond_5b5

    const-string/jumbo v7, "send complete message"

    .line 460
    invoke-static {v13, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v1, :cond_59e

    .line 461
    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_59e

    .line 462
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 464
    :cond_59e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 465
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    iput-object v1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 468
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 470
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_634

    :cond_5b5
    if-eqz v12, :cond_5d7

    const-string v1, "complete autoconfiguration and send EVENT_AUTOCONFIGURATION_COMPLETE msg"

    .line 472
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",CONINFO:CHA"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x1300000d

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 474
    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->onNewRcsConfigurationAvailable(II)V

    goto :goto_634

    .line 476
    :cond_5d7
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_613

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-nez v4, :cond_613

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-nez v4, :cond_613

    if-ne v7, v1, :cond_613

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",CONINFO:NONCHA"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x1300000e

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 479
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v3, "same version. no event"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_634

    .line 481
    :cond_613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",NEEDRECON"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x1300000f

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 482
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v4, "no exist complete message. send EVENT_RECONFIGURATION"

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 483
    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->onNewRcsConfigurationAvailable(II)V

    .line 486
    :goto_634
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    if-eqz v1, :cond_922

    const/4 v1, 0x0

    .line 487
    iput-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 488
    iget-boolean v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    if-eqz v3, :cond_922

    .line 489
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    const/16 v3, 0x8

    .line 490
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v4, 0x0

    .line 491
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x2

    .line 492
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_922

    .line 289
    :goto_660
    :pswitch_660
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v2, v10}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(IZ)V

    .line 292
    :pswitch_665
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v2, v10}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    if-nez v3, :cond_6b2

    .line 294
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "workflow is null"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    if-eqz v3, :cond_6aa

    .line 296
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-nez v4, :cond_6aa

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_691

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v3

    if-nez v3, :cond_691

    goto :goto_6aa

    :cond_691
    const-string/jumbo v3, "try init workflow and start again"

    .line 299
    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 300
    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v4, 0x2

    .line 301
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_922

    :cond_6aa
    :goto_6aa
    const-string/jumbo v0, "sim is not ready, start config finished"

    .line 297
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_922

    .line 305
    :cond_6b2
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "HANDLE_AUTO_CONFIG_START:"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->isGcEnabledChange(I)Z

    move-result v4

    if-eqz v4, :cond_6e4

    .line 308
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getGlobalGcEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_6d6

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d6

    const-string v4, "Change the GC RCS policy, set enableRcs"

    .line 309
    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->setEnableRcsByMigration()V

    goto :goto_6e0

    :cond_6d6
    const-string v4, "Change the GC RCS policy, clear AutoConfig Storage"

    .line 312
    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->GCPOLICY_CHANGE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    :goto_6e0
    const/4 v4, 0x0

    .line 315
    invoke-direct {v0, v4, v2}, Lcom/sec/internal/ims/config/ConfigModule;->setIsGcEnabledChange(ZI)V

    .line 318
    :cond_6e4
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->checkNetworkConnectivity()Z

    move-result v4

    if-nez v4, :cond_6f9

    .line 319
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, v2, v12}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_922

    :cond_6f9
    if-eqz v12, :cond_70b

    const-string v4, "need CurConfig"

    .line 325
    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->startCurConfig()V

    .line 327
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    goto/16 :goto_922

    :cond_70b
    const/4 v4, 0x0

    const-string/jumbo v5, "rcs_auto_config_pdn"

    .line 331
    invoke-static {v2, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v5

    const-string/jumbo v4, "ps_only_network"

    if-ne v5, v10, :cond_734

    .line 332
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7cb

    .line 333
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2, v7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto/16 :goto_7cb

    .line 336
    :cond_734
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isMobileDataOn()Z

    move-result v5

    if-eqz v5, :cond_76d

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->isRoamingMobileDataOn(I)Z

    move-result v5

    if-nez v5, :cond_741

    goto :goto_76d

    :cond_741
    if-eqz v9, :cond_7cb

    .line 359
    invoke-interface {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7cb

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isMobileDataOn()Z

    move-result v5

    if-eqz v5, :cond_7cb

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isWifiSwitchOn()Z

    move-result v5

    if-eqz v5, :cond_7cb

    const-string v5, "Mobile Data ON & WIFI ON case for PS only network."

    .line 361
    invoke-static {v1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 362
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->getCurrentRcsConfigVersion(I)I

    move-result v5

    .line 363
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v5, v5, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7cb

    :cond_76d
    :goto_76d
    const-string v5, "Mobile Data is off or roaming data off in roaming area"

    .line 337
    invoke-static {v1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->getCurrentRcsConfigVersion(I)I

    move-result v5

    const-string/jumbo v8, "wifi"

    .line 339
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_837

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isWifiSwitchOn()Z

    move-result v7

    if-nez v7, :cond_789

    goto/16 :goto_837

    :cond_789
    const-string v7, "Mobile Data is off but WiFi is on"

    .line 344
    invoke-static {v1, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 345
    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_797

    const/4 v7, 0x0

    .line 346
    iput-boolean v7, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    :cond_797
    if-eqz v9, :cond_7b1

    .line 349
    invoke-interface {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7b1

    const-string v7, "WiFi is on. Register to VOLTE to receive OTP message for PS only network"

    .line 350
    invoke-static {v1, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v5, v5, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7cb

    :cond_7b1
    const/4 v8, 0x3

    const-string v7, "Mobile Data is off but WiFi is on. So wait 20 seconds."

    .line 353
    invoke-static {v1, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 356
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 355
    invoke-virtual {v0, v8, v5, v5, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v7, 0x4e20

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 368
    :cond_7cb
    :goto_7cb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto Config Start: ReadyNetwork = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v7, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", Start command = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    .line 369
    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdList(I)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_811

    .line 371
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_922

    :cond_811
    if-eqz v9, :cond_819

    .line 373
    invoke-interface {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_823

    :cond_819
    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v6, v3, :cond_922

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_922

    :cond_823
    const-string v3, "No conditions satisfied to start Auto Config, proceed to VOLTE REG"

    .line 374
    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_922

    :cond_837
    :goto_837
    const/4 v3, 0x3

    const-string v4, "Both Mobile Data and WiFi are off, skip autoconfig"

    .line 340
    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_922

    :pswitch_84a
    if-nez v3, :cond_919

    const-string v1, "HANDLE_AUTO_CONFIG_INIT:"

    .line 229
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->rcsProfileInit(I)Z

    move-result v1

    if-nez v1, :cond_85e

    const-string v0, "SIM is not ready. skip init workflow"

    .line 232
    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_922

    .line 236
    :cond_85e
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "workflowThread_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 238
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 239
    invoke-static {v2, v5}, Lcom/sec/internal/ims/util/ConfigUtil;->hasChatbotService(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v5

    .line 238
    invoke-static {v3, v4, v0, v2, v5}, Lcom/sec/internal/ims/config/CustomizationManager;->getConfigManager(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/config/ConfigModule;IZ)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v3

    .line 241
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    .line 242
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v3, :cond_8ab

    const-string/jumbo v1, "workflow is null. skip init workflow, regard old version and new version as 0"

    .line 245
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->removeWorkFlow(I)V

    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_922

    .line 250
    :cond_8ab
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/WorkFlowController;->initWorkflow(ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",WF:CR"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x1300000b

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v12, :cond_8e8

    .line 253
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8e8

    const-string v1, "clear config info because of sim refresh"

    .line 254
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIM_REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 256
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 259
    :cond_8e8
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_922

    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_922

    const-string v1, "clear old token because of sim refresh"

    .line 260
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIM_REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearToken(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 262
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->removeValidToken()V

    .line 263
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto :goto_922

    :cond_919
    const-string/jumbo v0, "re-init Workflow if needed."

    .line 266
    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->reInitIfNeeded()V

    :cond_922
    :goto_922
    return-void

    nop

    :pswitch_data_924
    .packed-switch 0x0
        :pswitch_84a
        :pswitch_660
        :pswitch_665
        :pswitch_441
        :pswitch_3f7
        :pswitch_3e8
        :pswitch_3d9
        :pswitch_3d0
        :pswitch_38a
        :pswitch_37c
        :pswitch_30d
        :pswitch_2fc
        :pswitch_2dc
        :pswitch_1ff
        :pswitch_1f6
        :pswitch_197
        :pswitch_18d
        :pswitch_181
        :pswitch_177
        :pswitch_111
        :pswitch_108
        :pswitch_43a
        :pswitch_ff
        :pswitch_f6
        :pswitch_dc
        :pswitch_b4
        :pswitch_ad
        :pswitch_a4
    .end packed-switch
.end method

.method init(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 983
    invoke-virtual {p0, v0, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public initSequentially()V
    .registers 6

    .line 171
    new-instance v0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    .line 173
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 174
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_29

    .line 175
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->addActionAirplaneMode()V

    :cond_29
    const/16 v3, 0xc

    .line 177
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 178
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v3, 0xb

    .line 179
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_f

    .line 181
    :cond_37
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_55

    .line 185
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, " Registering for ADS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    .line 186
    invoke-static {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    :cond_55
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 190
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v1, 0x0

    :goto_64
    if-ge v1, v0, :cond_7d

    .line 192
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 193
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 195
    :cond_7d
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 196
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 197
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 198
    new-instance v0, Lcom/sec/internal/ims/config/WorkFlowController;

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/config/WorkFlowController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    .line 199
    new-instance v0, Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/internal/ims/config/ConfigTrigger;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    .line 200
    new-instance v0, Lcom/sec/internal/ims/config/ConfigComplete;

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/internal/ims/config/ConfigComplete;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    return-void
.end method

.method public isConfigModuleBootUp()Z
    .registers 1

    .line 1494
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsConfigModuleBootUp:Z

    return p0
.end method

.method isGcEnabledChange(I)Z
    .registers 5

    .line 1749
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v0, "isGcEnabledChange"

    const/4 v1, 0x0

    const-string v2, "imsswitch"

    invoke-static {p1, p0, v2, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 1750
    sget-object p1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGcEnabledChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isMessagingReady()Z
    .registers 1

    .line 1499
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsMessagingReady:Z

    return p0
.end method

.method isMobileDataOn()Z
    .registers 3

    .line 1117
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public isRcsEnabled(I)Z
    .registers 3

    .line 1489
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "rcs"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method isRoamingMobileDataOn(I)Z
    .registers 8

    .line 1121
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1125
    :cond_8
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    .line 1126
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_21

    .line 1128
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "is in Home Network"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 1131
    :cond_21
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    invoke-virtual {v2, v4, v5, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getbySubId(Landroid/content/Context;II)I

    move-result v0

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-eq v0, v4, :cond_3b

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    .line 1132
    invoke-virtual {v2, p0, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-ne p0, v0, :cond_3c

    :cond_3b
    move v1, v3

    .line 1133
    :cond_3c
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roaming && isDataRoamingOn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public isValidAcsVersion(I)Z
    .registers 2

    .line 914
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isValidAcsVersion(I)Z

    move-result p0

    return p0
.end method

.method public isValidConfigDb(I)Z
    .registers 11

    .line 924
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_12

    goto :goto_68

    .line 928
    :cond_12
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 930
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "info/next_autoconfig_time"

    .line 931
    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 930
    invoke-static {p0, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 933
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_46

    .line 935
    :try_start_2b
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2f} :catch_30

    goto :goto_47

    .line 937
    :catch_30
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid next autoconfig time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_46
    move-wide v5, v3

    .line 941
    :goto_47
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 942
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remainingValidity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    cmp-long p0, v5, v3

    if-lez p0, :cond_68

    const/4 v1, 0x1

    :cond_68
    :goto_68
    return v1
.end method

.method public isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .registers 2

    .line 769
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public notifyDefaultSmsChanged(I)V
    .registers 4

    .line 1390
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyDefaultSmsChanged:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    .line 1395
    :cond_10
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->checkChatPolicyforSMSAppChange(I)I

    move-result v1

    .line 1396
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/config/ConfigModule;->processChatPolicyforSMSAppChange(IILjava/util/List;)V

    return-void
.end method

.method public obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;
    .registers 3

    .line 784
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public onDefaultSmsPackageChanged()V
    .registers 5

    .line 1503
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDefaultSmsPackageChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 1505
    :goto_9
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 1506
    invoke-virtual {p0, v2, v1, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    return-void
.end method

.method public onNewRcsConfigurationAvailable(II)V
    .registers 5

    .line 761
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phoneId"

    .line 762
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "lastError"

    .line 763
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xd

    .line 764
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNewRcsConfigurationNeeded(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1194
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    invoke-static {p3}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1200
    invoke-interface {v0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    if-eqz p1, :cond_22

    .line 1203
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->startAcs(I)V

    const/4 p0, 0x1

    .line 1204
    iput p0, p3, Landroid/os/Message;->arg1:I

    goto :goto_25

    :cond_22
    const/4 p0, 0x0

    .line 1206
    iput p0, p3, Landroid/os/Message;->arg1:I

    .line 1209
    :goto_25
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRegistrationStatusChanged(ZILcom/sec/ims/ImsRegistration;)V
    .registers 10

    .line 1243
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    if-eqz p1, :cond_9

    .line 1246
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/config/ConfigModule;->updateMsisdn(Lcom/sec/ims/ImsRegistration;)V

    .line 1249
    :cond_9
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1250
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRegistrationStatusChanged: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] registered["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], response ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], 403Forbidden Count ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",EC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",CNT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x13000009

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1254
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    const/4 v4, 0x0

    if-nez p1, :cond_c3

    .line 1256
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "jibe"

    .line 1257
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a9

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 1258
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    if-ne p2, p1, :cond_f8

    .line 1259
    iget p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_a0

    const-string p1, "Two consecutive 403 errors. Permanently prohibited."

    .line 1261
    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1262
    iput v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    goto :goto_f8

    :cond_a0
    const-string p1, "403 error. Restart ACS"

    .line 1264
    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1265
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->startAcs(I)V

    goto :goto_f8

    .line 1268
    :cond_a9
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_f8

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->UNAUTHORIZED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    if-ne p2, p1, :cond_f8

    .line 1278
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    sget-object p2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIPERROR_UNAUTHORIZED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/WorkFlowController;->deleteConfiguration(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    goto :goto_f8

    .line 1281
    :cond_c3
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_f0

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result p1

    if-eqz p1, :cond_f0

    const-string p1, "VoLTE regi. is done. It\'s time for RCS registration!"

    .line 1282
    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1283
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f0

    .line 1285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1286
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    goto :goto_e0

    .line 1290
    :cond_f0
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 1291
    iput v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    :cond_f8
    :goto_f8
    return-void
.end method

.method onSimReady(IZ)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 987
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onSimReady:"

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 989
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->deregisterNetworkCallback(I)V

    .line 990
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->registerNetworkCallback(I)V

    .line 991
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, v1, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    .line 992
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result v5

    .line 993
    iget-object v6, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v6

    .line 994
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v7

    .line 995
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v8

    const-string/jumbo v9, "rcs_default_enabled"

    const/4 v10, -0x1

    .line 996
    invoke-static {v1, v9, v10}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v9

    .line 998
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isRcsAvailable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isChanged: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " isRemoteConfigNeeded: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " isSimRefreshReceived: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 999
    invoke-virtual {v13, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " rcsDefaultEnabled: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 998
    invoke-static {v3, v1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1001
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",RCSE:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",SIM:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v13, 0x13000008

    invoke-static {v13, v11}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1002
    iget-object v11, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isRcsEnabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1004
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v11

    .line 1005
    iget-object v12, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v13, ""

    const-string v14, "OMCNW_CODE"

    const-string v15, "CODE"

    invoke-static {v1, v12, v14, v15, v13}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1006
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const/4 v10, 0x1

    xor-int/2addr v13, v10

    .line 1007
    iget-object v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v14, v15, v11}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSimReady: OMCNW_CODE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " => "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1009
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "jibe"

    .line 1010
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v6, :cond_158

    if-eqz v5, :cond_158

    if-nez v2, :cond_f8

    if-eqz v4, :cond_158

    if-eqz v10, :cond_158

    .line 1012
    :cond_f8
    iget-object v11, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1013
    invoke-virtual {v11, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_108

    if-eqz v13, :cond_158

    :cond_108
    const-string/jumbo v2, "sim info is refreshed and reset acsSettings"

    .line 1014
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",SIMINFO:REF,RACS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x13000013

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1016
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "SIM info is refreshed or OMCNW_CODE changed. Reset ACS settings"

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-nez v10, :cond_134

    .line 1019
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_13b

    .line 1021
    :cond_134
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1023
    :goto_13b
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 1024
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1025
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(IZ)V

    .line 1026
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1027
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    return-void

    :cond_158
    if-eqz v4, :cond_16d

    .line 1031
    sget-object v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v0, v1, v11}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 1032
    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v11

    if-eqz v11, :cond_16d

    const-string v11, "changed sim info, reset to MSISDN_FROM_PAU"

    .line 1033
    invoke-static {v3, v1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1034
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->resetMsisdnFromPau(I)V

    .line 1037
    :cond_16d
    iget-object v11, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v1, v12}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v6, :cond_1bf

    .line 1039
    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_18a

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v2

    if-nez v2, :cond_18a

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_1b5

    :cond_18a
    if-eqz v7, :cond_1b5

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-nez v2, :cond_1b5

    const-string v2, "init workflow"

    .line 1040
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1041
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",WF:INIT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x13000014

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1042
    invoke-virtual {v0, v12, v1, v12, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1044
    :cond_1b5
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v2

    if-eqz v2, :cond_1be

    .line 1045
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->updateDualRcsNetwork(I)V

    :cond_1be
    return-void

    :cond_1bf
    if-eqz v4, :cond_25e

    if-eqz v5, :cond_25e

    const-string/jumbo v4, "reinit workflow"

    .line 1050
    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",WF:REINIT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x13000015

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v10, :cond_1f4

    .line 1054
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIM_CHANGED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v6, v2}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    const-string/jumbo v2, "setting for starting auto config by Message app is clear"

    .line 1055
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1056
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-static {v2, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_242

    .line 1057
    :cond_1f4
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_20a

    .line 1058
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    goto :goto_242

    :cond_20a
    if-eqz v2, :cond_242

    const-string/jumbo v2, "sim info is changed and reset acsSettings"

    .line 1060
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",SIMINFO:CHA,RACS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x13000016

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1063
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 1064
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1065
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(IZ)V

    .line 1066
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1068
    :cond_242
    :goto_242
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->cleanup()V

    .line 1069
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v2, v1, v12}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 1070
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/WorkFlowController;->removeWorkFlow(I)V

    .line 1071
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    const-string v2, "clear WorkFlow/WorkFlowThread and send init msg"

    .line 1072
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1073
    invoke-virtual {v0, v12, v1, v12, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_25e
    return-void
.end method

.method protected onSimRefresh(I)V
    .registers 4

    .line 705
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimRefresh:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 707
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->clear()V

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 709
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->deregisterNetworkCallback(I)V

    .line 710
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 711
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->onSimRefresh(I)V

    return-void
.end method

.method protected onTelephonyCallStatusChanged(II)V
    .registers 8

    .line 715
    iput p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    .line 716
    sget-object p2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTelephonyCallStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 717
    iget p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-nez p2, :cond_9d

    .line 718
    iget-object p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v0, "defaultmsgappinuse"

    invoke-static {p2, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2c

    move p2, v0

    goto :goto_2d

    :cond_2c
    move p2, v1

    .line 719
    :goto_2d
    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    if-eqz v2, :cond_4f

    .line 720
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 721
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 722
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsLastError()I

    move-result p1

    const-string v0, "lastError"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xd

    .line 723
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9d

    .line 724
    :cond_4f
    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    if-eqz v2, :cond_9d

    .line 725
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 726
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5e

    return-void

    .line 731
    :cond_5e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_62
    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 732
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 733
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_91

    const/16 v3, 0x24

    .line 734
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 735
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const-string v4, "MsgApp is changed"

    invoke-interface {v3, v2, v1, v0, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_62

    :cond_91
    if-eqz p2, :cond_62

    .line 737
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    goto :goto_62

    :cond_9d
    :goto_9d
    return-void
.end method

.method processChatPolicyforSMSAppChange(IILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "defaultmsgappinuse"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 1417
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x1300000a

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v3, 0x2

    if-eq p1, v2, :cond_100

    const-string v4, "MsgApp is changed"

    const/16 v5, 0x24

    if-eq p1, v3, :cond_bf

    const/4 v3, 0x3

    const/16 v6, 0xf

    if-eq p1, v3, :cond_72

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_45

    goto/16 :goto_10a

    .line 1465
    :cond_45
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_49
    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1466
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1467
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1468
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto :goto_49

    .line 1460
    :cond_6a
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1461
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAcsWithDelay(I)V

    goto/16 :goto_10a

    .line 1442
    :cond_72
    iget p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-eqz p1, :cond_81

    .line 1443
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 1444
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Pending deregistration on active call when MsgApp is changed"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_10a

    .line 1448
    :cond_81
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_85
    :goto_85
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1449
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    if-eq v3, v6, :cond_b3

    .line 1450
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->cancelUpdateSipDelegateRegistration(I)V

    .line 1451
    invoke-interface {p3, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1452
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, p3, v1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_85

    :cond_b3
    if-eqz v0, :cond_85

    .line 1454
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p3

    invoke-interface {v3, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    goto :goto_85

    .line 1425
    :cond_bf
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c3
    :goto_c3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1426
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v6

    if-eqz v6, :cond_c3

    if-eqz v0, :cond_e9

    .line 1428
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "notifyDefaultSmsChanged - setStateforACS"

    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1429
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1430
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto :goto_c3

    .line 1432
    :cond_e9
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 1433
    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1434
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v6, v3, v1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_c3

    .line 1420
    :cond_100
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->cancelUpdateSipDelegateRegistration(I)V

    .line 1421
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateChatService(II)V

    :cond_10a
    :goto_10a
    return-void
.end method

.method processConnectionChange(IZ)V
    .registers 5

    .line 1694
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1695
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string p2, "No Available network"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1698
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdListIndexOfKey(I)I

    move-result v0

    if-gez v0, :cond_17

    return-void

    .line 1701
    :cond_17
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdList(I)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->checkMsisdnSkipCount(IZ)Z

    move-result p2

    if-nez p2, :cond_29

    iget-boolean p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    if-eqz p2, :cond_51

    .line 1702
    :cond_29
    sget-object p2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network is ready for phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1703
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    const-string/jumbo v1, "resend HANDLE_AUTO_CONFIG_START"

    .line 1704
    invoke-static {p2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 1705
    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_51
    return-void
.end method

.method rcsProfileInit(I)Z
    .registers 8

    .line 947
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b9

    .line 948
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_b9

    .line 953
    :cond_f
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v2

    .line 954
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rcsProfileInit: ConfigDBVer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_3f

    .line 956
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsVersion(I)V

    .line 959
    :cond_3f
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v2

    .line 960
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 961
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "rcsProfileInit: mnoName is not valid"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 962
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",INVMNO"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x13000011

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1

    .line 966
    :cond_6f
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 967
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/config/WorkFlowController;->putRcsProfile(ILjava/lang/String;)V

    .line 968
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autoconfig init: mnoName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rcsProfile = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 969
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 p1, 0x13000000

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 949
    :cond_b9
    :goto_b9
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "rcsProfileInit: no SIM loaded"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 950
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",NOSL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x13000010

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V
    .registers 4

    .line 820
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 821
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 p1, 0x5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method registerNetworkCallback(I)V
    .registers 14

    .line 1621
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerNetworkCallback"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1622
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getNetworkType(I)Ljava/lang/String;

    move-result-object v0

    .line 1623
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1625
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e

    return-void

    :cond_1e
    const-string v4, ","

    .line 1629
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_27
    if-ge v6, v4, :cond_cd

    aget-object v7, v0, v6

    .line 1630
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_37

    .line 1631
    invoke-virtual {p0, p1, v9}, Lcom/sec/internal/ims/config/ConfigModule;->registerNetworkCallbackForNetwork(II)V

    goto/16 :goto_c9

    .line 1635
    :cond_37
    new-instance v8, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v8}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1636
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x2

    sparse-switch v10, :sswitch_data_ce

    :goto_47
    move v7, v3

    goto :goto_6a

    :sswitch_49
    const-string v10, "internet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_52

    goto :goto_47

    :cond_52
    move v7, v11

    goto :goto_6a

    :sswitch_54
    const-string/jumbo v10, "wifi"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5e

    goto :goto_47

    :cond_5e
    move v7, v9

    goto :goto_6a

    :sswitch_60
    const-string v10, "ims"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_69

    goto :goto_47

    :cond_69
    move v7, v5

    :goto_6a
    const/16 v10, 0xc

    packed-switch v7, :pswitch_data_dc

    move v9, v5

    goto :goto_9b

    .line 1639
    :pswitch_71
    invoke-virtual {v8, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    .line 1640
    invoke-virtual {v7, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    .line 1641
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    goto :goto_9b

    .line 1645
    :pswitch_81
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    .line 1646
    invoke-virtual {v7, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v9, 0x3

    goto :goto_9b

    .line 1650
    :pswitch_8a
    invoke-virtual {v8, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    const/4 v9, 0x4

    .line 1651
    invoke-virtual {v7, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    .line 1652
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move v9, v11

    .line 1655
    :goto_9b
    iget-object v7, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v7, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c9

    .line 1656
    invoke-virtual {p0, p1, v9}, Lcom/sec/internal/ims/config/ConfigModule;->createNetworkListener(II)V

    .line 1657
    invoke-virtual {v8}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v8, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_c9
    :goto_c9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_27

    :cond_cd
    return-void

    :sswitch_data_ce
    .sparse-switch
        0x197cf -> :sswitch_60
        0x37af15 -> :sswitch_54
        0x21ffc741 -> :sswitch_49
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_81
        :pswitch_71
    .end packed-switch
.end method

.method registerNetworkCallbackForNetwork(II)V
    .registers 8

    .line 1663
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6e

    .line 1664
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-nez p1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    .line 1667
    :goto_16
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    return-void

    .line 1670
    :cond_1e
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    .line 1671
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->dualRcsPolicyCase(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 1672
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1673
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v4, 0xc

    .line 1674
    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 1675
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 1676
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->createNetworkListener(II)V

    .line 1677
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1678
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1677
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_6e
    return-void
.end method

.method public resetAcsTryReason(I)V
    .registers 2

    .line 1154
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->resetAcsTryReason(I)V

    return-void
.end method

.method public resetReadyStateCommand(I)V
    .registers 3

    .line 1588
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    return-void
.end method

.method public resetTokenDeletedReason(I)V
    .registers 2

    .line 1169
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->resetTokenDeletedReason(I)V

    return-void
.end method

.method public sendConfigMessage(II)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 789
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendConfigMessageDelayed(III)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 794
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendConfigMessageDelayed(IILjava/lang/Object;I)V
    .registers 6

    const/4 v0, 0x0

    .line 799
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendIidToken(Ljava/lang/String;I)V
    .registers 4

    .line 840
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIidToken:Ljava/lang/String;

    .line 841
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/16 p1, 0x1b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .registers 4

    .line 835
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    .line 836
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/16 p1, 0x14

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .registers 4

    .line 830
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    .line 831
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method public setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V
    .registers 3

    .line 1144
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    return-void
.end method

.method public setDualSimRcsAutoConfig(Z)V
    .registers 2

    .line 1479
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setDualSimRcsAutoConfig(Z)V

    return-void
.end method

.method public setMsisdnFromPau(Lcom/sec/ims/ImsRegistration;)V
    .registers 9

    .line 1564
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9d

    const-string v1, "0"

    .line 1566
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1569
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSI_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1570
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v4, ""

    const-string v5, "msisdn_from_pau"

    invoke-static {v2, v3, v5, v1, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    .line 1571
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMsisdnFromPau: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "SET_SP_PAU"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x13000017

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1573
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v5, v1, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    :cond_94
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    :cond_9d
    return-void
.end method

.method public setRcsClientConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 1766
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/config/ConfigTrigger;->setRcsClientConfiguration(ILcom/sec/internal/interfaces/ims/config/IWorkflow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRegisterFromApp(ZI)V
    .registers 3

    .line 751
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setRegisterFromApp(ZI)V

    return-void
.end method

.method public setTokenDeletedReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V
    .registers 3

    .line 1159
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setTokenDeletedReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    return-void
.end method

.method public showMSIDSNDialog()V
    .registers 2

    const/16 v0, 0x10

    .line 1386
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startAcs(I)V
    .registers 4

    const/16 v0, 0xf

    const/4 v1, -0x1

    .line 1214
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method startAcsWithDelay(I)V
    .registers 4

    .line 1218
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1222
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_29

    iget v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    if-lez v0, :cond_29

    add-int/lit8 v0, v0, -0x1

    .line 1223
    iput v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    .line 1224
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SSL Handshake failed. delay 5 minutes"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xf

    const/4 v1, -0x1

    .line 1225
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_29
    return-void
.end method

.method public startAutoConfig(ZLandroid/os/Message;I)V
    .registers 5

    if-nez p2, :cond_12

    .line 805
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "phoneId"

    .line 806
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0xd

    .line 807
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 809
    :cond_12
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 810
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->startAutoConfig(ZLandroid/os/Message;I)V

    return-void
.end method

.method public startAutoConfigDualsim(ILandroid/os/Message;)V
    .registers 4

    .line 815
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 816
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startAutoConfigDualsim(ILandroid/os/Message;)V

    return-void
.end method

.method public triggerAutoConfig(ZILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    const/4 p3, 0x0

    const/16 v0, 0x12

    .line 778
    invoke-virtual {p0, v0, p2, p1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_15
    return-void
.end method

.method public triggerAutoConfiguration(I)V
    .registers 2

    .line 1772
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfiguration(I)V

    return-void
.end method

.method public tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .registers 2

    .line 1484
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V
    .registers 4

    .line 825
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 826
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method updateDualRcsNetwork(I)V
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 1079
    :goto_6
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetworkForNetworkType(II)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1080
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_23

    const/16 v2, 0x18

    .line 1081
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1082
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateDualRcsNetwork : "

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_23
    return-void
.end method

.method public updateMobileNetworkforDualRcs(I)Z
    .registers 4

    .line 975
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq v0, p1, :cond_17

    .line 976
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryAutoConfig: getActiveDataPhoneId() != phoneId ->mobileNetwork = false"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 977
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 979
    :cond_17
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    return p0
.end method

.method updateMsisdn(Lcom/sec/ims/ImsRegistration;)V
    .registers 5

    .line 1230
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1231
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1232
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1233
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_4a

    .line 1234
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const-string v2, "MSISDN is null, SP needs to be set to PAU"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1235
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setMsisdnFromPau(Lcom/sec/ims/ImsRegistration;)V

    :cond_4a
    return-void
.end method

.method public updateTelephonyCallStatus(II)V
    .registers 6

    .line 756
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephonyCallStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 757
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
