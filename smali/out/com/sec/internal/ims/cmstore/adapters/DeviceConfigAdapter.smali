.class public Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;
.super Ljava/lang/Object;
.source "DeviceConfigAdapter.java"


# static fields
.field private static final DEVICE_CONFIG_UPDATED:Ljava/lang/String; = "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceConfigUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field public mStoreDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    .line 33
    const-class p2, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    .line 34
    new-instance p2, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;-><init>(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mDeviceConfigUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string v0, "onCreate()"

    .line 46
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 48
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private setTmoFolderIdMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig$VVMFolderID;)V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setTmoFolderIdMStoreDataMap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig$VVMFolderID;->mFolderName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig$FolderName;

    .line 55
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig$FolderName;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 56
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig$FolderName;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 57
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig$FolderName;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig$FolderName;->mValue:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_34
    return-void
.end method


# virtual methods
.method public getDeviceConfig()Ljava/lang/String;
    .registers 8

    const-string v0, "device_config"

    .line 107
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 111
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 113
    :try_start_13
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    .line 114
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_22

    .line 116
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_22
    move-exception v0

    .line 111
    :try_start_23
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw v0

    :cond_2c
    if-eqz p0, :cond_31

    .line 116
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public parseDeviceConfig()V
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->getDeviceConfig()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->saveDeviceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public registerDeviceConfigUpdatedReceiver(Landroid/content/Context;)V
    .registers 4

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mDeviceConfigUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public saveDeviceConfig(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_7e

    .line 79
    :try_start_2
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;->parseDeviceConfig(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 80
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mVVMConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig;

    if-nez v0, :cond_d

    goto :goto_6d

    .line 84
    :cond_d
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig;->mWsgUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 85
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mVVMConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig;->mWsgUri:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vvmConfig.WSG_URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    const-string v2, "WSG_URI"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_37
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mVVMConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig;->mRootUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 90
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mVVMConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig;->mRootUrl:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    const-string v2, "SiTUrl"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vvmConfig.rootUtl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_63
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mVVMConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig;->mVVMFolderID:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig$VVMFolderID;

    if-eqz p1, :cond_85

    .line 95
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->setTmoFolderIdMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$VVMConfig$VVMFolderID;)V

    goto :goto_85

    .line 81
    :cond_6d
    :goto_6d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string v0, "deviceConfiguration is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_74} :catch_75

    return-void

    .line 98
    :catch_75
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "saveDeviceConfig: malformed device config xml"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 101
    :cond_7e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string v0, "!!!!Device Config XML is NULL!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_85
    :goto_85
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setDeviceConfigUsed(Ljava/util/Map;)V

    return-void
.end method
