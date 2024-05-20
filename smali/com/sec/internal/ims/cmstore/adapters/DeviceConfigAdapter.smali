.class public Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;
.super Ljava/lang/Object;
.source "DeviceConfigAdapter.java"


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "APPLICATION"

.field private static final DEVICE_CONFIG_UPDATED:Ljava/lang/String; = "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

.field private static final MESSAGE_STORE:Ljava/lang/String; = "MessageStore"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeviceConfigUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private mResolver:Landroid/content/ContentResolver;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

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
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    .line 35
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;-><init>(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mDeviceConfigUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 117
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 119
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    return-void
.end method

.method private setParmsMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;)V
    .locals 6

    .line 42
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "SiTUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ": "

    const-string v3, "AKAUrl"

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_1
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 50
    :cond_2
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 52
    :cond_3
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "PushSyncDelay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 54
    :cond_4
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "serverRoot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 56
    :cond_5
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "apiVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 58
    :cond_6
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string/jumbo v1, "storeName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 60
    :cond_7
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "disableDirectionHeader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 63
    :cond_8
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "SyncTimer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 65
    :cond_9
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "DataConnectionSyncTimer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 69
    :cond_a
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "AuthProt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 71
    :cond_b
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "UserName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 72
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 73
    :cond_c
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "UserPwd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 74
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 75
    :cond_d
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "EventRpting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 77
    :cond_e
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "SMSStore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 79
    :cond_f
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "MMSStore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 81
    :cond_10
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "MaxBulkDelete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 83
    :cond_11
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "MaxSearch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 84
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_2
    return-void
.end method

.method private setTmoFolderIdMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTmoFolderIdMStoreDataMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;

    .line 92
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v2, "RCSMessageStore"

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v2, "VV-Mail/Greetings"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v2, "VV-Mail/Inbox"

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getDeviceConfig()Ljava/lang/String;
    .locals 7

    const-string v0, "device_config"

    .line 184
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 188
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 190
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 191
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 188
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    if-eqz p0, :cond_1

    .line 193
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public parseDeviceConfig()V
    .locals 5

    .line 139
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->getDeviceConfig()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 144
    :try_start_0
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;->parseDeviceConfig(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deviceConfiguration is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mJanskyConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;->mWsgUri:Ljava/lang/String;

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mJanskyConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;->mWsgUri:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "janskyConfig.WSG_URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    const-string v3, "WSG_URI"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mRCSConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;->mWapProvisioningDoc:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc;->mCharacteristics:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;

    .line 165
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mType:Ljava/lang/String;

    const-string v3, "APPLICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mCharacteristics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;

    .line 167
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mType:Ljava/lang/String;

    const-string v4, "MessageStore"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->setMstoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    .line 174
    :catch_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string v1, "parseDeviceConfig: malformed device config xml"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 177
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string v1, "!!!!Device Config XML is NULL!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setDeviceConfigUsed(Ljava/util/Map;)V

    return-void
.end method

.method public registerDeviceConfigUpdatedReceiver(Landroid/content/Context;)V
    .locals 2

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mDeviceConfigUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setMstoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMstoreDataMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 202
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;

    if-eqz v1, :cond_0

    .line 203
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 204
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->setParmsMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mCharacteristics:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 211
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mCharacteristics:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;

    .line 212
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mType:Ljava/lang/String;

    const-string v2, "FolderID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->setTmoFolderIdMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;)V

    goto :goto_1

    .line 219
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    return-object p0
.end method
