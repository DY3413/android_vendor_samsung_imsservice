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
.method public static synthetic $r8$lambda$_McPnrLn5QistmFe-xs-d9TT1lY(Lcom/sec/internal/ims/config/ConfigModule;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->lambda$dumpEncrAcsDb$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/config/ConfigModule;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 102
    const-class v0, Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 3

    .line 163
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    .line 111
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIidToken:Ljava/lang/String;

    const/4 p1, 0x0

    .line 115
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    .line 120
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 121
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 122
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    .line 123
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    .line 125
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 126
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 127
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 128
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsConfigModuleBootUp:Z

    .line 129
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsMessagingReady:Z

    .line 131
    iput p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    const/4 v0, 0x1

    .line 135
    iput v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    .line 136
    iput p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "capdiscoveryallowedprefixes"

    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "capinfoexpiry"

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "defaultdisc"

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const-string p1, "disableInitialAddressBookScan"

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v1, v0

    const-string p1, "nonRCScapInfoExpiry"

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v1, v0

    const-string p1, "pollingperiod"

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    aput-object p1, v1, v0

    const-string p1, "imMsgTech"

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, v1, v0

    const-string p1, "ChatAuth"

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, v1, v0

    const-string p1, "GroupChatAuth"

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    aput-object p1, v1, v0

    const-string p1, "ftAuth"

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x9

    aput-object p1, v1, v0

    const-string/jumbo p1, "standaloneMsgAuth"

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    aput-object p1, v1, v0

    const-string p1, "cancelmessageux"

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    aput-object p1, v1, v0

    const-string/jumbo p1, "validity"

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xc

    aput-object p1, v1, v0

    const-string/jumbo p1, "version"

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xd

    aput-object p1, v1, v0

    const-string p1, "rcsDisabledState"

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xe

    aput-object p1, v1, v0

    const-string p1, "geolocPushAuth"

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xf

    aput-object p1, v1, v0

    const-string/jumbo p1, "source-throttlepublish"

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    aput-object p1, v1, v0

    const-string p1, "max-number-ofsubscriptions-inpresence-list"

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x11

    aput-object p1, v1, v0

    .line 143
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mAcsEncrNeededParams:Ljava/util/List;

    .line 164
    iput-object p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    .line 165
    iput-object p3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 166
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string p3, "Autoconfig"

    const/16 v0, 0x64

    invoke-direct {p1, p2, p3, v0}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private checkChatPolicyforSMSAppChange(I)I
    .locals 6

    .line 1389
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1390
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    .line 1391
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_MSG_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    const-string/jumbo v2, "support_chat_on_default_mms_app"

    const/4 v3, 0x0

    .line 1393
    invoke-static {p1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 1394
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-static {v4, v5, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1397
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "jibe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1400
    :goto_1
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
    .locals 8

    const-string v0, "Autoconf"

    const/4 v1, 0x1

    .line 1342
    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 1344
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 1345
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1346
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

    goto :goto_0

    .line 1348
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    if-ge p1, v1, :cond_2

    const-string p1, "  DB is empty"

    .line 1349
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p1, "  DB is not available"

    .line 1352
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_4

    .line 1354
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    if-eqz p0, :cond_3

    .line 1342
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p0, "  Skip dump auto conf db"

    .line 1355
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_4
    return-void
.end method

.method private dumpEncrAcsDb(Landroid/net/Uri;)V
    .locals 9

    const-string v0, "Autoconf"

    const/4 v1, 0x1

    .line 1318
    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    .line 1321
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    .line 1322
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1323
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    .line 1324
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/config/ConfigModule$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/sec/internal/ims/config/ConfigModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " "

    .line 1325
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

    .line 1327
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v4, v1, :cond_1

    .line 1336
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1333
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 1334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->dumpEncryptedACS(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    if-eqz p1, :cond_5

    .line 1336
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_4

    .line 1318
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    const-string p0, "  Skip dump encr auto conf db"

    .line 1337
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private isWifiSwitchOn()Z
    .locals 1

    .line 1127
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 1128
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$dumpEncrAcsDb$0(Ljava/lang/String;)Z
    .locals 0

    .line 1324
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mAcsEncrNeededParams:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onADSChanged(I)V
    .locals 2

    .line 1699
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onADSChanged"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 1700
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1701
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1703
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->onADSChanged()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetMsisdnFromPau(I)V
    .locals 3

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "RES_SP_PAU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000018

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "reset to MSISDN_FROM_PAU"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1572
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "msisdn_from_pau"

    const-string v2, ""

    invoke-static {p1, p0, v1, v0, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIsGcEnabledChange(ZI)V
    .locals 3

    .line 1744
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsGcEnabledChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1745
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string p1, "imsswitch"

    const-string v0, "isGcEnabledChange"

    const/4 v1, 0x0

    invoke-static {p2, p0, p1, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public changeOpMode(ZII)V
    .locals 6

    .line 838
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    .line 839
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

    .line 840
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

    .line 842
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 843
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 844
    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v2, :cond_0

    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 849
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsProfile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 850
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    if-nez p1, :cond_4

    .line 852
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p1

    .line 853
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p3

    const-string v1, "jibe"

    .line 854
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->isValidConfigDb(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    const-string v5, "root/token/token"

    invoke-interface {p3, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 855
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "force autoconfig for supporting up profile"

    .line 856
    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 857
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p1, v3, v4, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 858
    invoke-virtual {p0, v2, v4, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    goto :goto_0

    :cond_3
    const-string p0, "not to trigger a config because of invalid config"

    .line 860
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void

    .line 865
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v3, v4, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tcPopupUserAccept: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p3, :cond_5

    if-eqz p1, :cond_5

    .line 868
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    const-string p1, "force autoconfig in case tcPopupUserAccept is zero"

    .line 869
    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 870
    invoke-virtual {p0, v2, v4, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    const-string p0, "changeOpMode: it is not supported"

    .line 845
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method checkMsisdnSkipCount(IZ)Z
    .locals 4

    .line 1360
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1361
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 1363
    sget-object p2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v0, p2, :cond_2

    const-string p2, "jibe"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1368
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getMsisdnSkipCount(I)I

    move-result p2

    .line 1369
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

    if-ne p2, p1, :cond_1

    .line 1370
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 1364
    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string p2, "no need to check MsisdnSkipCount"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method clearWorkFlow(I)V
    .locals 4

    .line 1076
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v0

    .line 1077
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1078
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->isConfigOngoing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1079
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "clearWorkFlow started"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1080
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->stopWorkFlow()V

    .line 1081
    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    .line 1082
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    const-string p0, "clearWorkFlow done"

    .line 1083
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method clearWorkFlowThread(I)V
    .locals 3

    .line 1088
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1090
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "clearWorkFlowThread: workflowThread is null"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1093
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "clearWorkFlowThread: started"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1094
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    const-wide/16 v1, 0x64

    .line 1096
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1098
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1102
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "clearWorkFlowThread: done"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1100
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1101
    throw v0
.end method

.method createNetworkListener(II)V
    .locals 3

    .line 1581
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNetworkListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1582
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
    .locals 3

    .line 1673
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deregisterNetworkCallback"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1675
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1676
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1679
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public dump()V
    .locals 6

    .line 1286
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

    .line 1287
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    const-string v1, "Autoconfig History:"

    .line 1288
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1290
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v1

    const-string v2, "*"

    if-nez v1, :cond_2

    .line 1291
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "Autoconf"

    if-eqz v1, :cond_1

    .line 1292
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Dump of configuration db for simslot0:"

    .line 1294
    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1295
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

    .line 1297
    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1298
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

    goto :goto_0

    :cond_0
    const-string v1, "Dump of configuration db:"

    .line 1301
    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1302
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

    goto :goto_0

    :cond_1
    const-string v1, "Dump of configuration db: mContext is null!"

    .line 1305
    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "Dump of ACS Encr : "

    .line 1309
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
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

    .line 1312
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1314
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/WorkFlowController;->dump()V

    return-void
.end method

.method public getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;
    .locals 0

    .line 743
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p0

    return-object p0
.end method

.method public getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    .locals 0

    .line 1138
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableNetwork(I)Landroid/util/Pair;
    .locals 4
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

    .line 1710
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1711
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 1712
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1713
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1715
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

    .line 1717
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1718
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1719
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

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1722
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 1723
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

    .line 1725
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableNetworkForNetworkType(II)Landroid/net/Network;
    .locals 0

    .line 1731
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 1734
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    return-object p0
.end method

.method public getRcsConfVersion(I)Ljava/lang/Integer;
    .locals 1

    .line 908
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
    .locals 3

    .line 882
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 883
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 884
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getRcsConfigMark: no SIM loaded"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 887
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    .line 888
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 889
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 890
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 891
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getRcsConfigMark()Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 893
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRcsConfigMark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method public getRcsProfile(I)Ljava/lang/String;
    .locals 0

    .line 876
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getRcsProfile(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 0

    .line 1750
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getTokenDeletedReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .locals 0

    .line 1153
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getTokenDeletedReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16

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

    if-eq v3, v5, :cond_1

    const/16 v6, 0x11

    if-eq v3, v6, :cond_1

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    const/16 v6, 0x15

    if-ne v3, v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v6, 0xd

    if-ne v3, v6, :cond_2

    .line 212
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 213
    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 211
    :cond_1
    :goto_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 216
    :cond_2
    :goto_1
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

    if-eqz v9, :cond_3

    .line 221
    invoke-interface {v9, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v10

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 223
    :goto_2
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

    const-string v15, "rcsNetworkType: "

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

    packed-switch v14, :pswitch_data_0

    const-string/jumbo v0, "unknown message"

    .line 697
    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_15

    :pswitch_0
    if-eqz v3, :cond_3d

    .line 524
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIidToken:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendIidToken(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 693
    :pswitch_1
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->sendRcsAutoconfigStart(I)V

    goto/16 :goto_15

    .line 684
    :pswitch_2
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_4

    const-string v1, "dual_simhandling"

    .line 685
    invoke-interface {v9, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Clear workflow"

    .line 686
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 687
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlow(I)V

    .line 689
    :cond_4
    invoke-virtual {v0, v2, v12}, Lcom/sec/internal/ims/config/ConfigModule;->processConnectionChange(IZ)V

    goto/16 :goto_15

    .line 679
    :pswitch_3
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

    .line 680
    invoke-virtual {v0, v2, v12}, Lcom/sec/internal/ims/config/ConfigModule;->processConnectionChange(IZ)V

    goto/16 :goto_15

    .line 668
    :pswitch_4
    iput-boolean v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsConfigModuleBootUp:Z

    .line 669
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/WorkFlowController;->onBootCompleted()V

    goto/16 :goto_15

    :pswitch_5
    if-eqz v3, :cond_3d

    .line 674
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->FORBIDDEN_ERROR:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    goto/16 :goto_15

    :pswitch_6
    if-eqz v3, :cond_3d

    .line 518
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendMsisdnNumber(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_7
    const-string v1, "HANDLE_AUTO_CONFIG_RESTART:"

    .line 381
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v2, v10}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    if-nez v3, :cond_5

    const-string/jumbo v1, "workflow is null. skip autoconfig"

    .line 385
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_15

    .line 389
    :cond_5
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

    if-eqz v1, :cond_3d

    .line 392
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, v2, v12}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_15

    :pswitch_8
    if-eqz v3, :cond_6

    .line 662
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->onDefaultSmsPackageChanged()V

    .line 664
    :cond_6
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->notifyDefaultSmsChanged(I)V

    goto/16 :goto_15

    :pswitch_9
    const-string v1, "HANDLE_AUTO_CONFIG_START_WITH_SUITABLE_NETWORK retrigger ACS with best network"

    .line 398
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, v2, v10}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    goto/16 :goto_15

    .line 654
    :pswitch_a
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->init(I)V

    if-eqz v3, :cond_3d

    .line 656
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->handleMSISDNDialog()V

    goto/16 :goto_15

    .line 636
    :pswitch_b
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 637
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3

    :cond_7
    move v1, v10

    .line 638
    :goto_3
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 640
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 642
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->isRcsDormantMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 643
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 644
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 645
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto/16 :goto_15

    .line 646
    :cond_8
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {v2, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->hasChatbotService(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 647
    :cond_9
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto/16 :goto_15

    .line 632
    :pswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->onTelephonyCallStatusChanged(II)V

    goto/16 :goto_15

    :pswitch_d
    const/4 v3, -0x1

    .line 586
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 587
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 590
    :cond_a
    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-eqz v1, :cond_b

    const-string v1, "Pending Autoconfig comlete event on active call"

    .line 591
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 592
    iput-boolean v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 593
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsLastError(I)V

    goto/16 :goto_15

    .line 595
    :cond_b
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 597
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 598
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    iget v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    invoke-virtual {v4, v3, v2, v1, v5}, Lcom/sec/internal/ims/config/ConfigComplete;->setStateforACSComplete(IILjava/util/List;I)V

    .line 599
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v3, v5}, Lcom/sec/internal/ims/config/ConfigComplete;->handleAutoconfigurationComplete(ILjava/util/List;ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V

    .line 601
    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v6, v1, :cond_3d

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNeedRetryOverWifi = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mWifiNetwork = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", lastErrorCode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 604
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    if-eqz v1, :cond_3d

    if-eqz v3, :cond_d

    const/16 v1, 0x320

    if-eq v3, v1, :cond_d

    const/16 v1, 0x321

    if-eq v3, v1, :cond_d

    const/16 v1, 0x322

    if-eq v3, v1, :cond_d

    const/16 v1, 0x323

    if-eq v3, v1, :cond_d

    const/16 v1, 0x324

    if-eq v3, v1, :cond_d

    const/16 v1, 0x325

    if-ne v3, v1, :cond_c

    goto :goto_4

    :cond_c
    const-string v1, "clear mNeedRetryOverWifi to false"

    .line 613
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 614
    iput-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    goto/16 :goto_15

    .line 608
    :cond_d
    :goto_4
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    if-eqz v1, :cond_3d

    const-string v1, "reset AcsSettings for KT over Wifi"

    .line 609
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 610
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    goto/16 :goto_15

    .line 619
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 620
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_f

    .line 621
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_5

    .line 624
    :cond_10
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ADS set to other SIM"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_15

    .line 576
    :pswitch_e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 577
    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->onSimRefresh(I)V

    .line 578
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "sim state changed, reset to MSISDN_FROM_PAU"

    .line 579
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->resetMsisdnFromPau(I)V

    goto/16 :goto_15

    .line 551
    :pswitch_f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 552
    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 553
    invoke-virtual {v0, v1, v12}, Lcom/sec/internal/ims/config/ConfigModule;->onSimReady(IZ)V

    goto/16 :goto_15

    .line 557
    :pswitch_10
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    .line 558
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 559
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 561
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 562
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_11

    .line 563
    sget-object v4, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "task is set as IDLE because of ads change."

    invoke-static {v4, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 564
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_6

    .line 568
    :cond_12
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    new-array v1, v10, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v6, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 569
    iput-boolean v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    .line 571
    :cond_14
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->onADSChanged(I)V

    .line 572
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Network configs are reset"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_15

    .line 546
    :pswitch_11
    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/config/ConfigModule;->setDualSimRcsAutoConfig(Z)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 547
    invoke-virtual {v0, v11, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_15

    :pswitch_12
    if-eqz v3, :cond_3d

    .line 530
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsProfile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 531
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    if-nez v1, :cond_16

    .line 532
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    if-nez v1, :cond_15

    .line 533
    iput-boolean v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 535
    :cond_15
    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->changeOpMode(Z)V

    goto/16 :goto_15

    .line 537
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pending AutoConfig mIsRcsEnabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_15

    .line 540
    :cond_17
    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->changeOpMode(Z)V

    goto/16 :goto_15

    :pswitch_13
    if-eqz v3, :cond_3d

    .line 512
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendVerificationCode(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_14
    if-eqz v3, :cond_3d

    .line 506
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IAutoConfigurationListener;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    goto/16 :goto_15

    :pswitch_15
    if-eqz v3, :cond_3d

    .line 500
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IAutoConfigurationListener;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    goto/16 :goto_15

    .line 274
    :pswitch_16
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    sget-object v4, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-eq v6, v4, :cond_18

    move v4, v10

    goto :goto_7

    :cond_18
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setNeedResetConfig(Z)V

    .line 275
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 277
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 278
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 279
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/16 v5, 0x8f

    invoke-interface {v4, v5, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(II)V

    goto :goto_8

    .line 283
    :cond_1a
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/config/params/ACSConfig;->setIsTriggeredByNrcr(Z)V

    .line 286
    :pswitch_17
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->PUSH_SMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    goto/16 :goto_e

    :pswitch_18
    const-string v7, "HANDLE_AUTO_CONFIG_COMPLETE:"

    .line 403
    invoke-static {v13, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    iget v7, v1, Landroid/os/Message;->arg1:I

    .line 405
    iget v1, v1, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_1b

    const/16 v3, 0x2c4

    goto :goto_9

    .line 406
    :cond_1b
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->getLastErrorCode()I

    move-result v3

    .line 408
    :goto_9
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v14

    .line 410
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

    const v8, 0x13000006

    .line 412
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",OV:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",NV:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",LEC:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v12, :cond_1d

    if-lez v1, :cond_1d

    const/16 v8, 0x3b

    if-ne v1, v8, :cond_1c

    goto :goto_a

    :cond_1c
    const/4 v8, 0x0

    goto :goto_b

    :cond_1d
    :goto_a
    move v8, v10

    .line 416
    :goto_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "localConfigUsedState: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v2, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v11, 0x1300000c

    .line 417
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",LCUS:"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v9, :cond_1e

    .line 419
    invoke-interface {v9, v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateLocalConfigUsedState(Z)V

    .line 422
    :cond_1e
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

    if-eq v3, v8, :cond_20

    .line 425
    iget-object v8, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    invoke-virtual {v8, v1, v3, v2}, Lcom/sec/internal/ims/config/ConfigComplete;->sendRCSAInfoToHQM(III)V

    .line 427
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const/16 v9, 0xc8

    if-ne v3, v9, :cond_1f

    const/4 v9, 0x1

    .line 429
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "RACC"

    invoke-virtual {v8, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_c

    :cond_1f
    const/4 v9, 0x1

    .line 431
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "RACF"

    invoke-virtual {v8, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    :goto_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "overwrite_mode"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    iget-object v9, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v10, "DRCS"

    invoke-static {v2, v9, v10, v8}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_20
    const/16 v8, 0x320

    if-ne v3, v8, :cond_21

    const-string v1, "SSL Handshake failed"

    .line 438
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 439
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->startAcsWithDelay(I)V

    .line 440
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_3d

    .line 441
    sget-object v7, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_3d

    .line 442
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 443
    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    invoke-virtual {v6, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 446
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 447
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_15

    :cond_21
    if-eqz v14, :cond_22

    .line 452
    invoke-interface {v14}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v8

    if-nez v8, :cond_22

    const/16 v8, 0x2c4

    if-ne v3, v8, :cond_22

    const-string v0, "autoconfiguration failed because sim is unavailable."

    .line 453
    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_15

    .line 457
    :cond_22
    iget-object v8, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    if-eqz v8, :cond_24

    const-string v7, "send complete message"

    .line 459
    invoke-static {v13, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v1, :cond_23

    .line 460
    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 461
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 463
    :cond_23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 464
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    iput-object v1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 467
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 469
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_d

    :cond_24
    if-eqz v12, :cond_25

    const-string v1, "complete autoconfiguration and send EVENT_AUTOCONFIGURATION_COMPLETE msg"

    .line 471
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x1300000d

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",CONINFO:CHA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 473
    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->onNewRcsConfigurationAvailable(II)V

    goto :goto_d

    .line 475
    :cond_25
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_26

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v4, :cond_26

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v6, v4, :cond_26

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-nez v4, :cond_26

    if-ne v7, v1, :cond_26

    const v1, 0x1300000e

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",CONINFO:NONCHA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 478
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "same version. no event"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_d

    :cond_26
    const v1, 0x1300000f

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",NEEDRECON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 481
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v4, "no exist complete message. send EVENT_RECONFIGURATION"

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 482
    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->onNewRcsConfigurationAvailable(II)V

    .line 485
    :goto_d
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    .line 486
    iput-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 487
    iget-boolean v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    if-eqz v3, :cond_3d

    .line 488
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    const/16 v3, 0x8

    .line 489
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v4, 0x0

    .line 490
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x2

    .line 491
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_15

    :pswitch_19
    move v4, v10

    goto :goto_f

    .line 289
    :goto_e
    :pswitch_1a
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(Z)V

    .line 292
    :goto_f
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    if-nez v3, :cond_29

    .line 294
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "workflow is null"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 296
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_10

    :cond_27
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

    goto/16 :goto_15

    :cond_28
    :goto_10
    const-string/jumbo v0, "sim is not ready, start config finished"

    .line 297
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 305
    :cond_29
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "HANDLE_AUTO_CONFIG_START:"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->isGcEnabledChange(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 308
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getGlobalGcEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "Change the GC RCS policy, set enableRcs"

    .line 309
    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->setEnableRcsByMigration()V

    goto :goto_11

    :cond_2a
    const-string v4, "Change the GC RCS policy, clear AutoConfig Storage"

    .line 312
    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->GCPOLICY_CHANGE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    :goto_11
    const/4 v4, 0x0

    .line 315
    invoke-direct {v0, v4, v2}, Lcom/sec/internal/ims/config/ConfigModule;->setIsGcEnabledChange(ZI)V

    .line 318
    :cond_2b
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->checkNetworkConnectivity()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 319
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, v2, v12}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_15

    :cond_2c
    if-eqz v12, :cond_2d

    const-string v4, "need CurConfig"

    .line 325
    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->startCurConfig()V

    .line 327
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    goto/16 :goto_15

    :cond_2d
    const/4 v4, 0x0

    const-string v5, "rcs_auto_config_pdn"

    .line 331
    invoke-static {v2, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v5

    const-string v4, "ps_only_network"

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2e

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

    if-eqz v5, :cond_34

    .line 333
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2, v7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto/16 :goto_13

    .line 336
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isMobileDataOn()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->isRoamingMobileDataOn(I)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_12

    :cond_2f
    if-eqz v9, :cond_34

    .line 359
    invoke-interface {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isMobileDataOn()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isWifiSwitchOn()Z

    move-result v5

    if-eqz v5, :cond_34

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

    goto :goto_13

    :cond_30
    :goto_12
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

    if-eqz v7, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isWifiSwitchOn()Z

    move-result v7

    if-nez v7, :cond_31

    goto/16 :goto_14

    :cond_31
    const-string v7, "Mobile Data is off but WiFi is on"

    .line 344
    invoke-static {v1, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 345
    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_32

    const/4 v7, 0x0

    .line 346
    iput-boolean v7, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    :cond_32
    if-eqz v9, :cond_33

    .line 349
    invoke-interface {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

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

    goto :goto_13

    :cond_33
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
    :cond_34
    :goto_13
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

    if-eqz v5, :cond_35

    .line 371
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_15

    :cond_35
    if-eqz v9, :cond_36

    .line 373
    invoke-interface {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    :cond_36
    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v6, v3, :cond_3d

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_3d

    :cond_37
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

    goto/16 :goto_15

    :cond_38
    :goto_14
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

    goto/16 :goto_15

    :pswitch_1b
    if-nez v3, :cond_3c

    const-string v1, "HANDLE_AUTO_CONFIG_INIT:"

    .line 229
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->rcsProfileInit(I)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v0, "SIM is not ready. skip init workflow"

    .line 232
    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_15

    .line 236
    :cond_39
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

    if-nez v3, :cond_3a

    const-string/jumbo v1, "workflow is null. skip init workflow, regard old version and new version as 0"

    .line 245
    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->removeWorkFlow(I)V

    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    .line 250
    :cond_3a
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/WorkFlowController;->initWorkflow(ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V

    const v1, 0x1300000b

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",WF:CR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v12, :cond_3b

    .line 253
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3b

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
    :cond_3b
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3d

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

    goto :goto_15

    :cond_3c
    const-string v0, "re-init Workflow if needed."

    .line 266
    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->reInitIfNeeded()V

    :cond_3d
    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_17
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method init(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 972
    invoke-virtual {p0, v0, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public initSequentially()V
    .locals 5

    .line 171
    new-instance v0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    .line 173
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 174
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_0

    .line 175
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->addActionAirplaneMode()V

    :cond_0
    const/16 v3, 0xc

    .line 177
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 178
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v3, 0xb

    .line 179
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 185
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, " Registering for ADS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    .line 186
    invoke-static {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    :cond_2
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 190
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

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

    goto :goto_1

    .line 195
    :cond_3
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
    .locals 0

    .line 1483
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsConfigModuleBootUp:Z

    return p0
.end method

.method isGcEnabledChange(I)Z
    .locals 3

    .line 1738
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v0, "imsswitch"

    const-string v1, "isGcEnabledChange"

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 1739
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
    .locals 0

    .line 1488
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsMessagingReady:Z

    return p0
.end method

.method isMobileDataOn()Z
    .locals 2

    .line 1106
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRcsEnabled(I)Z
    .locals 1

    .line 1478
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v0, "rcs"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method isRoamingMobileDataOn(I)Z
    .locals 6

    .line 1110
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1114
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    .line 1115
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1117
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "is in Home Network"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 1120
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    invoke-virtual {v2, v4, v5, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getbySubId(Landroid/content/Context;II)I

    move-result v0

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-eq v0, v4, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    .line 1121
    invoke-virtual {v2, p0, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-ne p0, v0, :cond_3

    :cond_2
    move v1, v3

    .line 1122
    :cond_3
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
    .locals 0

    .line 903
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isValidAcsVersion(I)Z

    move-result p0

    return p0
.end method

.method public isValidConfigDb(I)Z
    .locals 9

    .line 913
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 917
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 919
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "info/next_autoconfig_time"

    .line 920
    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 919
    invoke-static {p0, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 922
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 924
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 926
    :catch_0
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid next autoconfig time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    move-wide v5, v3

    .line 930
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 931
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remainingValidity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    cmp-long p0, v5, v3

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method

.method public isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public notifyDefaultSmsChanged(I)V
    .locals 2

    .line 1379
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyDefaultSmsChanged:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1380
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1384
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->checkChatPolicyforSMSAppChange(I)I

    move-result v1

    .line 1385
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/config/ConfigModule;->processChatPolicyforSMSAppChange(IILjava/util/List;)V

    return-void
.end method

.method public obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;
    .locals 0

    .line 776
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 4

    .line 1492
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDefaultSmsPackageChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 1494
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 1495
    invoke-virtual {p0, v2, v1, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNewRcsConfigurationAvailable(II)V
    .locals 2

    .line 758
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phoneId"

    .line 759
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "lastError"

    .line 760
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xd

    .line 761
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNewRcsConfigurationNeeded(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1183
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    invoke-static {p3}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1189
    invoke-interface {v0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1192
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->startAcs(I)V

    const/4 p0, 0x1

    .line 1193
    iput p0, p3, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 1195
    iput p0, p3, Landroid/os/Message;->arg1:I

    .line 1198
    :goto_1
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRegistrationStatusChanged(ZILcom/sec/ims/ImsRegistration;)V
    .locals 6

    .line 1232
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    if-eqz p1, :cond_0

    .line 1235
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/config/ConfigModule;->updateMsisdn(Lcom/sec/ims/ImsRegistration;)V

    .line 1238
    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1239
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

    const v3, 0x13000009

    .line 1241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",EC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",CNT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1243
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    const/4 v4, 0x0

    if-nez p1, :cond_3

    .line 1245
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "jibe"

    .line 1246
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1247
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    if-ne p2, p1, :cond_5

    .line 1248
    iget p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    const-string p1, "Two consecutive 403 errors. Permanently prohibited."

    .line 1250
    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1251
    iput v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    goto :goto_1

    :cond_1
    const-string p1, "403 error. Restart ACS"

    .line 1253
    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1254
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->startAcs(I)V

    goto :goto_1

    .line 1257
    :cond_2
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->UNAUTHORIZED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    if-ne p2, p1, :cond_5

    .line 1267
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    sget-object p2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIPERROR_UNAUTHORIZED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/WorkFlowController;->deleteConfiguration(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    goto :goto_1

    .line 1270
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "VoLTE regi. is done. It\'s time for RCS registration!"

    .line 1271
    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1272
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1275
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    goto :goto_0

    .line 1279
    :cond_4
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1280
    iput v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    :cond_5
    :goto_1
    return-void
.end method

.method onSimReady(IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 976
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onSimReady:"

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 978
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->deregisterNetworkCallback(I)V

    .line 979
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->registerNetworkCallback(I)V

    .line 980
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, v1, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    .line 981
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result v5

    .line 982
    iget-object v6, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v6

    .line 983
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v7

    .line 984
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v8

    const-string v9, "rcs_default_enabled"

    const/4 v10, -0x1

    .line 985
    invoke-static {v1, v9, v10}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v9

    .line 987
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

    .line 988
    invoke-virtual {v13, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " rcsDefaultEnabled: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 987
    invoke-static {v3, v1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 990
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

    .line 991
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

    .line 993
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v11

    .line 994
    iget-object v12, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v13, "OMCNW_CODE"

    const-string v14, "CODE"

    const-string v15, ""

    invoke-static {v1, v12, v13, v14, v15}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 995
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    const/4 v10, 0x1

    xor-int/2addr v15, v10

    .line 996
    iget-object v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v13, v14, v11}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onSimReady: OMCNW_CODE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " => "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 998
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "jibe"

    .line 999
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    if-nez v2, :cond_0

    if-eqz v4, :cond_3

    if-eqz v10, :cond_3

    .line 1001
    :cond_0
    iget-object v11, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1002
    invoke-virtual {v11, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_1

    if-eqz v15, :cond_3

    :cond_1
    const-string/jumbo v2, "sim info is refreshed and reset acsSettings"

    .line 1003
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v2, 0x13000013

    .line 1004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",SIMINFO:REF,RACS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1005
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "SIM info is refreshed or OMCNW_CODE changed. Reset ACS settings"

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-nez v10, :cond_2

    .line 1008
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_0

    .line 1010
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1012
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 1013
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1014
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(Z)V

    .line 1015
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1016
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    return-void

    :cond_3
    if-eqz v4, :cond_4

    .line 1020
    sget-object v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v0, v1, v11}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 1021
    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "changed sim info, reset to MSISDN_FROM_PAU"

    .line 1022
    invoke-static {v3, v1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1023
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->resetMsisdnFromPau(I)V

    .line 1026
    :cond_4
    iget-object v11, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v1, v12}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v6, :cond_8

    .line 1028
    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "init workflow"

    .line 1029
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v2, 0x13000014

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",WF:INIT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1031
    invoke-virtual {v0, v12, v1, v12, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1033
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1034
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->updateDualRcsNetwork(I)V

    :cond_7
    return-void

    :cond_8
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    const-string v4, "reinit workflow"

    .line 1039
    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v4, 0x13000015

    .line 1040
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",WF:REINIT"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v10, :cond_9

    .line 1043
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIM_CHANGED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v6, v2}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    const-string/jumbo v2, "setting for starting auto config by Message app is clear"

    .line 1044
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1045
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-static {v2, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_1

    .line 1046
    :cond_9
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v8, v4, :cond_a

    .line 1047
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    goto :goto_1

    :cond_a
    if-eqz v2, :cond_b

    const-string/jumbo v2, "sim info is changed and reset acsSettings"

    .line 1049
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v2, 0x13000016

    .line 1050
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",SIMINFO:CHA,RACS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1052
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 1053
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1054
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(Z)V

    .line 1055
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1057
    :cond_b
    :goto_1
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->cleanup()V

    .line 1058
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v2, v1, v12}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 1059
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/WorkFlowController;->removeWorkFlow(I)V

    .line 1060
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    const-string v2, "clear WorkFlow/WorkFlowThread and send init msg"

    .line 1061
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1062
    invoke-virtual {v0, v12, v1, v12, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    return-void
.end method

.method protected onSimRefresh(I)V
    .locals 2

    .line 702
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimRefresh:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 704
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->clear()V

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 706
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->deregisterNetworkCallback(I)V

    .line 707
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 708
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->onSimRefresh(I)V

    return-void
.end method

.method protected onTelephonyCallStatusChanged(II)V
    .locals 5

    .line 712
    iput p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    .line 713
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

    .line 714
    iget p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-nez p2, :cond_5

    .line 715
    iget-object p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v0, "defaultmsgappinuse"

    invoke-static {p2, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 716
    :goto_0
    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    if-eqz v2, :cond_1

    .line 717
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 718
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 719
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsLastError()I

    move-result p1

    const-string v0, "lastError"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xd

    .line 720
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 721
    :cond_1
    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    if-eqz v2, :cond_5

    .line 722
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 723
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 728
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 729
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 730
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_4

    const/16 v3, 0x24

    .line 731
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 732
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const-string v4, "MsgApp is changed"

    invoke-interface {v3, v2, v1, v0, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_3

    .line 734
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method processChatPolicyforSMSAppChange(IILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation

    .line 1405
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "defaultmsgappinuse"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v3, 0x1300000a

    .line 1406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v3, 0x2

    if-eq p1, v2, :cond_b

    const-string v4, "MsgApp is changed"

    const/16 v5, 0x24

    if-eq p1, v3, :cond_8

    const/4 v6, 0x3

    const/16 v7, 0xf

    if-eq p1, v6, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto/16 :goto_4

    .line 1454
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1455
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1456
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1457
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto :goto_1

    .line 1449
    :cond_3
    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1450
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAcsWithDelay(I)V

    goto/16 :goto_4

    .line 1431
    :cond_4
    iget p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-eqz p1, :cond_5

    .line 1432
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 1433
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Pending deregistration on active call when MsgApp is changed"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_4

    .line 1437
    :cond_5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    new-array v6, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1438
    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v6, v1

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v6, v2

    invoke-interface {p3, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v6

    if-eq v6, v7, :cond_7

    .line 1439
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v6, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->cancelUpdateSipDelegateRegistration(I)V

    .line 1440
    invoke-interface {p3, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1441
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v6, p3, v1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_6

    .line 1443
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p3

    invoke-interface {v6, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    goto :goto_2

    .line 1414
    :cond_8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1415
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v0, :cond_a

    .line 1417
    sget-object v6, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v7, "notifyDefaultSmsChanged - setStateforACS"

    invoke-static {v6, p2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1418
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1419
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto :goto_3

    :cond_a
    new-array v7, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1421
    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v1

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v2

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1422
    invoke-interface {v6, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1423
    iget-object v7, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v7, v6, v1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_3

    .line 1409
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->cancelUpdateSipDelegateRegistration(I)V

    .line 1410
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateChatService(II)V

    :cond_c
    :goto_4
    return-void
.end method

.method processConnectionChange(IZ)V
    .locals 2

    .line 1683
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1684
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string p2, "No Available network"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdListIndexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 1690
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdList(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->checkMsisdnSkipCount(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    if-eqz p2, :cond_3

    .line 1691
    :cond_2
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

    .line 1692
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    const-string v1, "resend HANDLE_AUTO_CONFIG_START"

    .line 1693
    invoke-static {p2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 1694
    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method rcsProfileInit(I)Z
    .locals 6

    .line 936
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 937
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 942
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v2

    .line 943
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rcsProfileInit: ConfigDBVer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_1

    .line 945
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsVersion(I)V

    .line 948
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v2

    .line 949
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_2

    .line 950
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "rcsProfileInit: mnoName is not valid"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const p0, 0x13000011

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",INVMNO"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1

    .line 955
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/config/WorkFlowController;->putRcsProfile(ILjava/lang/String;)V

    .line 957
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

    const/high16 p0, 0x13000000

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 938
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "rcsProfileInit: no SIM loaded"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const p0, 0x13000010

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",NOSL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 813
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 p1, 0x5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method registerNetworkCallback(I)V
    .locals 12

    .line 1610
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerNetworkCallback"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1611
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getNetworkType(I)Ljava/lang/String;

    move-result-object v0

    .line 1612
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1614
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    const-string v4, ","

    .line 1618
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v0, v6

    .line 1619
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 1620
    invoke-virtual {p0, p1, v9}, Lcom/sec/internal/ims/config/ConfigModule;->registerNetworkCallbackForNetwork(II)V

    goto/16 :goto_4

    .line 1624
    :cond_1
    new-instance v8, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v8}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1625
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x2

    sparse-switch v10, :sswitch_data_0

    :goto_1
    move v7, v3

    goto :goto_2

    :sswitch_0
    const-string v10, "internet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v11

    goto :goto_2

    :sswitch_1
    const-string/jumbo v10, "wifi"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v9

    goto :goto_2

    :sswitch_2
    const-string v10, "ims"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move v7, v5

    :goto_2
    const/16 v10, 0xc

    packed-switch v7, :pswitch_data_0

    move v9, v5

    goto :goto_3

    .line 1628
    :pswitch_0
    invoke-virtual {v8, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    .line 1629
    invoke-virtual {v7, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    .line 1630
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    goto :goto_3

    :pswitch_1
    const/4 v7, 0x3

    .line 1634
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v9

    .line 1635
    invoke-virtual {v9, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move v9, v7

    goto :goto_3

    .line 1639
    :pswitch_2
    invoke-virtual {v8, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    const/4 v9, 0x4

    .line 1640
    invoke-virtual {v7, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    .line 1641
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move v9, v11

    .line 1644
    :goto_3
    iget-object v7, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v7, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1645
    invoke-virtual {p0, p1, v9}, Lcom/sec/internal/ims/config/ConfigModule;->createNetworkListener(II)V

    .line 1646
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

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x197cf -> :sswitch_2
        0x37af15 -> :sswitch_1
        0x21ffc741 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method registerNetworkCallbackForNetwork(II)V
    .locals 5

    .line 1652
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1653
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1656
    :goto_0
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return-void

    .line 1659
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    .line 1660
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->dualRcsPolicyCase(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1661
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1662
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v4, 0xc

    .line 1663
    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 1664
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 1665
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->createNetworkListener(II)V

    .line 1666
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1667
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1666
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_2
    return-void
.end method

.method public resetAcsTryReason(I)V
    .locals 0

    .line 1143
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->resetAcsTryReason(I)V

    return-void
.end method

.method public resetReadyStateCommand(I)V
    .locals 1

    .line 1577
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    return-void
.end method

.method public resetTokenDeletedReason(I)V
    .locals 0

    .line 1158
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->resetTokenDeletedReason(I)V

    return-void
.end method

.method public sendConfigMessage(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 781
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendConfigMessageDelayed(III)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 786
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendConfigMessageDelayed(IILjava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 791
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendIidToken(Ljava/lang/String;I)V
    .locals 1

    .line 832
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIidToken:Ljava/lang/String;

    .line 833
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/16 p1, 0x1b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .locals 1

    .line 827
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    .line 828
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/16 p1, 0x14

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .locals 1

    .line 822
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    .line 823
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method public setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V
    .locals 0

    .line 1133
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    return-void
.end method

.method public setDualSimRcsAutoConfig(Z)V
    .locals 0

    .line 1468
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setDualSimRcsAutoConfig(Z)V

    return-void
.end method

.method public setMsisdnFromPau(Lcom/sec/ims/ImsRegistration;)V
    .locals 7

    .line 1553
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "0"

    .line 1555
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1556
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

    .line 1558
    :cond_0
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

    .line 1559
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v4, "msisdn_from_pau"

    const-string v5, ""

    invoke-static {v2, v3, v4, v1, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1560
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMsisdnFromPau: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const v2, 0x13000017

    .line 1561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "SET_SP_PAU"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1562
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4, v1, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    :cond_2
    return-void
.end method

.method public setRcsClientConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1755
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
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setRegisterFromApp(ZI)V

    return-void
.end method

.method public setTokenDeletedReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V
    .locals 0

    .line 1148
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setTokenDeletedReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    return-void
.end method

.method public showMSIDSNDialog()V
    .locals 1

    const/16 v0, 0x10

    .line 1375
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startAcs(I)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, -0x1

    .line 1203
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method startAcsWithDelay(I)V
    .locals 2

    .line 1207
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1211
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 1212
    iput v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    .line 1213
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SSL Handshake failed. delay 5 minutes"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xf

    const/4 v1, -0x1

    .line 1214
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public startAutoConfig(ZLandroid/os/Message;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 797
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "phoneId"

    .line 798
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0xd

    .line 799
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 802
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->startAutoConfig(ZLandroid/os/Message;I)V

    return-void
.end method

.method public startAutoConfigDualsim(ILandroid/os/Message;)V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 808
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startAutoConfigDualsim(ILandroid/os/Message;)V

    return-void
.end method

.method public triggerAutoConfig(ZILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation

    .line 771
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)V

    return-void
.end method

.method public triggerAutoConfiguration(I)V
    .locals 0

    .line 1761
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfiguration(I)V

    return-void
.end method

.method public tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 1473
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 818
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method updateDualRcsNetwork(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1068
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetworkForNetworkType(II)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1069
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    const/16 v2, 0x18

    .line 1070
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1071
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateDualRcsNetwork : "

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateMobileNetworkforDualRcs(I)Z
    .locals 2

    .line 964
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 965
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryAutoConfig: getActiveDataPhoneId() != phoneId ->mobileNetwork = false"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 966
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 968
    :cond_0
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    return p0
.end method

.method updateMsisdn(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1219
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const-string v2, "MSISDN is null, SP needs to be set to PAU"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1224
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setMsisdnFromPau(Lcom/sec/ims/ImsRegistration;)V

    :cond_0
    return-void
.end method

.method public updateTelephonyCallStatus(II)V
    .locals 3

    .line 753
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

    .line 754
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
