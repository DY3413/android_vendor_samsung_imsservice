.class public Lcom/sec/internal/ims/settings/DmConfigModule;
.super Landroid/os/Handler;
.source "DmConfigModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;
    }
.end annotation


# static fields
.field public static final CONFIG_DM_PROVIDER:Ljava/lang/String; = "content://com.samsung.rcs.dmconfigurationprovider/omadm/"

.field public static final DM_PATH:Ljava/lang/String; = "omadm/"

.field private static final DM_SERVER_FETCH_FAIL_SIM0:I = -0x2

.field private static final DM_SERVER_FETCH_FAIL_SIM1:I = -0x3

.field private static final EVT_FINISH_DM_CONFIG:I = 0x1

.field private static final EVT_FINISH_OMADM_PROV_UPDATE:I = 0x2

.field private static final INTENT_ACTION_DM_VALUE_UPDATE:Ljava/lang/String; = "com.samsung.ims.action.DM_UPDATE"

.field public static final INTERNAL_KEY_PROCESS_NAME:Ljava/lang/String; = "INTERNAL_KEY_PROCESS_NAME"

.field private static final KOR_DM_PACKAGE_NAME:Ljava/lang/String; = "com.ims.dm"

.field private static final LOG_TAG:Ljava/lang/String; = "DmConfigModule"

.field private static final VZW_OMADM_PENDING_DELAY:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field mMnoUpdateObserver:Landroid/database/ContentObserver;

.field protected mNvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOmadmProvisioningTransactionId:I

.field protected mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field protected mVzwTestModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$kL3d8egdH9IYnKzpcWqwCoRDO2g(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/DmConfigModule;->lambda$updateConfigValues$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/settings/DmConfigModule;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 5

    .line 78
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, -0x1

    .line 64
    iput p2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    const/4 p2, 0x0

    .line 69
    iput-object p2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mVzwTestModeReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mNvList:Ljava/util/ArrayList;

    .line 74
    iput-object p2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 474
    new-instance p2, Lcom/sec/internal/ims/settings/DmConfigModule$2;

    invoke-direct {p2, p0, p0}, Lcom/sec/internal/ims/settings/DmConfigModule$2;-><init>(Lcom/sec/internal/ims/settings/DmConfigModule;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mMnoUpdateObserver:Landroid/database/ContentObserver;

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    .line 80
    new-instance p1, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-direct {p1}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    .line 81
    iput-object p3, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 82
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object p2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    const-string p3, "DmConfigModule"

    const/16 v0, 0xc8

    invoke-direct {p1, p2, p3, v0}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 6

    const-string v0, "INTERNAL_KEY_PROCESS_NAME"

    .line 407
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 408
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_15
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private static synthetic lambda$updateConfigValues$0(Ljava/lang/String;)V
    .registers 3

    const-string v0, " "

    const-string v1, ""

    .line 270
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    return-void
.end method

.method private registerVzwTestReceiver()V
    .registers 3

    const-string v0, "DmConfigModule"

    const-string/jumbo v1, "registerVzwTestReceiver"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.ims.action.DM_UPDATE"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/sec/internal/ims/settings/DmConfigModule$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/settings/DmConfigModule$1;-><init>(Lcom/sec/internal/ims/settings/DmConfigModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mVzwTestModeReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public dump()V
    .registers 3

    .line 498
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

    const-string v1, "DmConfigModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public finishDmConfig(II)V
    .registers 5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish getting ims-config by OTA-DM with transactionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmConfigModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, ""

    .line 141
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "DmConfigModule"

    if-eqz v1, :cond_17d

    .line 143
    array-length v6, v1

    if-gtz v6, :cond_16

    goto/16 :goto_17d

    .line 147
    :cond_16
    iget-object v6, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 149
    iget-object v7, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    const-string v8, "omadm/*"

    invoke-static {v7, v8, v2}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v7

    .line 150
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 152
    array-length v9, v1

    const/4 v11, 0x0

    :goto_2e
    if-ge v11, v9, :cond_17c

    aget-object v12, v1, v11

    .line 160
    :try_start_32
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_3a

    goto/16 :goto_176

    :cond_3a
    const/16 v15, 0x384

    if-lt v14, v15, :cond_42

    move-object v10, v3

    move-object v13, v10

    const/4 v15, 0x3

    goto :goto_8f

    .line 169
    :cond_42
    sget-object v15, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v15}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getType()I

    move-result v15

    .line 170
    sget-object v10, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v10}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v10

    .line 171
    sget-object v13, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v13}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getPathName()Ljava/lang/String;

    move-result-object v13
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_66} :catch_67

    goto :goto_8f

    .line 175
    :catch_67
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get xNode "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "omadm/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    move-object v10, v12

    const/4 v15, 0x0

    :goto_8f
    if-eqz v15, :cond_10b

    const/4 v13, 0x1

    if-eq v15, v13, :cond_f4

    const/4 v13, 0x3

    if-eq v15, v13, :cond_b7

    const/4 v13, 0x4

    if-eq v15, v13, :cond_a6

    const/4 v13, 0x5

    if-eq v15, v13, :cond_9e

    goto :goto_109

    .line 228
    :cond_9e
    iget-object v13, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v13, v10}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_149

    .line 223
    :cond_a6
    iget-object v13, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v13, v10, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_b3

    const-string v13, "1"

    goto/16 :goto_149

    :cond_b3
    const-string v13, "0"

    goto/16 :goto_149

    :cond_b7
    const-string v13, "74"

    .line 204
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string v15, "ap2001"

    if-ne v13, v14, :cond_cb

    .line 205
    iget-object v13, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v1, "dm_app_id"

    invoke-interface {v13, v2, v1, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_149

    :cond_cb
    const-string v1, "75"

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v14, :cond_dd

    .line 207
    iget-object v1, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v13, "dm_user_disp_name"

    invoke-interface {v1, v2, v13, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_149

    .line 209
    :cond_dd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Segment : Global Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f4
    const-string v1, "91"

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v14, :cond_109

    .line 216
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-nez v1, :cond_103

    goto :goto_109

    .line 217
    :cond_103
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    :cond_107
    :goto_107
    move-object v13, v1

    goto :goto_149

    :cond_109
    :goto_109
    move-object v13, v3

    goto :goto_149

    .line 185
    :cond_10b
    iget-object v1, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 186
    iget-object v1, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v3, v2}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_149

    .line 191
    :cond_11a
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_109

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 192
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11e

    .line 193
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v13, "VOICE_DOMAIN_PREF_EUTRAN"

    .line 194
    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_107

    const-string v13, "com.ims.dm"

    invoke-static {v13, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_107

    const-string v1, "-1"

    goto :goto_107

    .line 236
    :goto_149
    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "result ("

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ") "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " [ "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ]"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_176
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_2e

    :cond_17c
    return-object v4

    :cond_17d
    :goto_17d
    const-string v0, "Error on fields"

    .line 144
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmConfigModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_28

    const-string/jumbo p0, "unknown event"

    .line 470
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_132

    .line 458
    :cond_28
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v3, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getConfigData(II)Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no pending transaction for : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_132

    .line 462
    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVT_FINISH_OMADM_PROV_UPDATE, completing transaction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v3, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->removeConfigData(II)V

    const/4 v1, -0x1

    .line 464
    iput v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    .line 466
    sget-object v1, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_132

    .line 421
    :cond_7d
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 422
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-virtual {v3}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->allTransactionDone()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 423
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->onDmConfigurationComplete(I)V

    goto/16 :goto_132

    .line 427
    :cond_8e
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getConfigData(II)Landroid/content/ContentValues;

    move-result-object v3

    if-nez v3, :cond_b0

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no opt transactionId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 432
    :cond_b0
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6, v5}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->removeConfigData(II)V

    const-string v4, "content://com.samsung.rcs.dmconfigurationprovider/omadm/"

    .line 433
    invoke-static {v4, v0}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 436
    :goto_c0
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getConfigData(II)Landroid/content/ContentValues;

    move-result-object v3

    if-nez v3, :cond_e1

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no nv transactionId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 440
    :cond_e1
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v2}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->removeConfigData(II)V

    .line 441
    sget-object v2, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 445
    :goto_ed
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->onDmConfigurationComplete(I)V

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->allTransactionDone()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all config transaction done, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_12a

    const/4 v0, -0x3

    if-eq p1, v0, :cond_12a

    .line 450
    new-instance p1, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-direct {p1}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    goto :goto_132

    .line 452
    :cond_12a
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p1, "socket timeout, don\'t destroy DmContentValues"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :cond_132
    :goto_132
    return-void
.end method

.method public initSequentially()V
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.ims.settings/mno"

    .line 88
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mMnoUpdateObserver:Landroid/database/ContentObserver;

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isEngMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 91
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DmConfigModule;->registerVzwTestReceiver()V

    :cond_1b
    return-void
.end method

.method public setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-void
.end method

.method public startDmConfig(I)I
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    if-nez v0, :cond_b

    .line 127
    new-instance v0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-direct {v0}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    .line 129
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getNewTransactionId()I

    move-result p0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start getting ims-config by OTA-DM with TransactionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DmConfigModule"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public updateConfigValues(Landroid/content/ContentValues;II)Z
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, " "

    const-string v5, "./3GPP_IMS/"

    const-string v6, ""

    .line 244
    iget-object v7, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {v7, v8}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateConfigValues<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ">: caller ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] updateMap["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "] transactionId ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "DmConfigModule"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 250
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 251
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 252
    invoke-static {}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INDEX;->values()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v3}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v14

    .line 253
    iget-object v15, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "omadm/*"

    invoke-static {v15, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object/from16 v16, v7

    const/16 v17, 0x0

    :goto_7c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const-string v19, "31"

    const-string v20, "94"

    const-string v21, "93"

    if-eqz v18, :cond_212

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Ljava/lang/String;

    .line 256
    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 257
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v1, v22

    check-cast v1, Ljava/lang/String;

    move-object/from16 v22, v14

    .line 261
    :try_start_a0
    sget-object v14, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_a2} :catch_b3

    move-object/from16 v23, v15

    :try_start_a4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_a4 .. :try_end_ae} :catch_b5

    move-object/from16 v24, v2

    move-object/from16 v25, v11

    goto :goto_108

    :catch_b3
    move-object/from16 v23, v15

    .line 264
    :catch_b5
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v18, v14

    check-cast v18, Ljava/lang/String;

    .line 265
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "update xNode "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v14, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    .line 267
    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v2

    move-object/from16 v25, v11

    const/4 v2, -0x1

    const/4 v11, 0x0

    invoke-direct {v14, v2, v11, v15}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const-string v2, "LBO_P-CSCF_Address"

    .line 269
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 270
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v11, Lcom/sec/internal/ims/settings/DmConfigModule$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lcom/sec/internal/ims/settings/DmConfigModule$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v1, :cond_107

    .line 272
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_108

    :cond_107
    move-object v1, v6

    :cond_108
    :goto_108
    move-object/from16 v2, v18

    if-nez v14, :cond_118

    move-object/from16 v1, p1

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    move-object/from16 v2, v24

    move-object/from16 v11, v25

    goto/16 :goto_7c

    .line 283
    :cond_118
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Idx ["

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "], Type ["

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getType()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "], Val ["

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] => ["

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "10"

    .line 285
    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_167

    const-string v11, "72"

    .line 286
    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_167

    const-string v11, "116"

    .line 287
    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_164

    goto :goto_167

    :cond_164
    move-object/from16 v18, v4

    goto :goto_19f

    .line 288
    :cond_167
    :goto_167
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    .line 290
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    .line 292
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "OMADM update : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_19f
    invoke-virtual {v14}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getType()I

    move-result v4

    if-eqz v4, :cond_1c4

    const/4 v2, 0x3

    if-eq v4, v2, :cond_1bc

    const/4 v2, 0x4

    if-eq v4, v2, :cond_1ac

    goto :goto_1f3

    :cond_1ac
    const-string v2, "1"

    .line 322
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 323
    iget-object v2, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1, v3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_1f3

    .line 318
    :cond_1bc
    invoke-virtual {v14}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f3

    .line 299
    :cond_1c4
    iget-object v4, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    .line 301
    invoke-virtual {v14}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 304
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1f1

    .line 305
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1f1

    .line 306
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_1f3

    :cond_1f1
    const/16 v17, 0x1

    :cond_1f3
    :goto_1f3
    move-object/from16 v4, v25

    goto :goto_205

    .line 310
    :cond_1f6
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f3

    .line 311
    invoke-virtual {v14}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v25

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_205
    move-object/from16 v1, p1

    move-object v11, v4

    move-object/from16 v4, v18

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    move-object/from16 v2, v24

    goto/16 :goto_7c

    :cond_212
    move-object v4, v11

    .line 331
    iget-object v1, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMADM update :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v1

    const-string v2, "INTERNAL_KEY_PROCESS_NAME"

    if-lez v1, :cond_237

    move-object/from16 v1, v16

    .line 336
    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_239

    :cond_237
    move-object/from16 v1, v16

    .line 339
    :goto_239
    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_242

    .line 340
    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_242
    if-eqz v17, :cond_326

    .line 351
    invoke-virtual {v12}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 352
    iget v2, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2f2

    .line 353
    iget-object v5, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-virtual {v5, v2, v4, v12}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->addConfigData(IILandroid/content/ContentValues;)V

    .line 354
    iget-object v2, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v5, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v2, v5, v4}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getConfigData(II)Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_25f

    const/4 v5, 0x1

    return v5

    .line 359
    :cond_25f
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_263
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_295

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 360
    iget-object v7, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OMADM update "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " = ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_263

    .line 363
    :cond_295
    sget-object v5, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_324

    sget-object v5, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    .line 364
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_324

    sget-object v5, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    .line 365
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_324

    .line 366
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 367
    iget-object v1, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v5, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v1, v5, v4}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->removeConfigData(II)V

    const/4 v1, -0x1

    .line 368
    iput v1, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    .line 370
    sget-object v1, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-static {v1, v3}, Lcom/sec/internal/helper/UriUtil;->buildUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_324

    .line 373
    :cond_2f2
    iget-object v1, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->getNewTransactionId()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADM update, created transaction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    iget v2, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mOmadmProvisioningTransactionId:I

    invoke-virtual {v1, v2, v4, v12}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->addConfigData(IILandroid/content/ContentValues;)V

    .line 376
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_324
    :goto_324
    const/4 v0, 0x1

    return v0

    :cond_326
    move/from16 v1, p2

    if-gez v1, :cond_34e

    const-string v1, "immediately write DM config"

    .line 382
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-eqz v1, :cond_33e

    const-string v1, "content://com.samsung.rcs.dmconfigurationprovider/omadm/"

    .line 384
    invoke-static {v1, v3}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 386
    :cond_33e
    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-eqz v1, :cond_366

    .line 387
    sget-object v1, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-static {v1, v3}, Lcom/sec/internal/helper/UriUtil;->buildUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Lcom/sec/internal/ims/settings/DmConfigModule;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_366

    .line 390
    :cond_34e
    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_35a

    .line 391
    iget-object v2, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->addConfigData(IILandroid/content/ContentValues;)V

    .line 393
    :cond_35a
    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_366

    .line 394
    iget-object v2, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mDmContentValues:Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v12}, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->addConfigData(IILandroid/content/ContentValues;)V

    .line 399
    :cond_366
    :goto_366
    invoke-virtual {v13}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_378

    .line 400
    iget-object v0, v0, Lcom/sec/internal/ims/settings/DmConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v13, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_378
    const/4 v0, 0x1

    return v0
.end method
