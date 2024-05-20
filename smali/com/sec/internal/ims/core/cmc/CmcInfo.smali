.class public Lcom/sec/internal/ims/core/cmc/CmcInfo;
.super Ljava/lang/Object;
.source "CmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final ACTIVATION:Ljava/lang/String; = "activation"

.field public static final CALL_FORKING_ENABLED:Ljava/lang/String; = "call_forking_enabled"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final DUAL_CMC:Ljava/lang/String; = "dual_cmc"

.field public static final EMERGENCY_CALL_SUPPORTED:Ljava/lang/String; = "emergency_call_supported"

.field public static final HAS_SD:Ljava/lang/String; = "has_sd"

.field public static final LINE_ID:Ljava/lang/String; = "line_id"

.field public static final LINE_IMPU:Ljava/lang/String; = "line_impu"

.field public static final LINE_OWNER_DEVICE_ID:Ljava/lang/String; = "line_owner_device_id"

.field public static final LINE_SLOT_INDEX:Ljava/lang/String; = "line_slot_index"

.field public static final NETWORK_PREF:Ljava/lang/String; = "network_pref"

.field public static final OOBE:Ljava/lang/String; = "oobe"

.field public static final PCSCF_ADDR_LIST:Ljava/lang/String; = "pcscf_addr_list"

.field public static final SAME_WIFI_ONLY:Ljava/lang/String; = "same_wifi_only"

.field public static final SA_SERVER_URL:Ljava/lang/String; = "sa_server_url"

.field private static mTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessToken:Ljava/lang/String;

.field mActivation:Z

.field mCallforkingEnabled:Z

.field mDeviceId:Ljava/lang/String;

.field mDeviceType:Ljava/lang/String;

.field mHasSd:Z

.field mIsDualCmc:Z

.field mIsEmergencyCallSupported:Z

.field mIsSameWiFiOnly:Z

.field mLineId:Ljava/lang/String;

.field mLineImpu:Ljava/lang/String;

.field mLineOwnerDeviceId:Ljava/lang/String;

.field mLineSlotIndex:I

.field mNetworkPref:I

.field mOobe:Z

.field mPcscfAddrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSaServerUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    .line 60
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "activation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v3, "line_slot_index"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v4, "device_type"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v4, "device_id"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v4, "access_token"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v4, "line_id"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v4, "line_owner_device_id"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v4, "line_impu"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v4, "sa_server_url"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v4, "pcscf_addr_list"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v3, "call_forking_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v3, "has_sd"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v3, "network_pref"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v2, "oobe"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v2, "emergency_call_supported"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v2, "same_wifi_only"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    const-string v2, "dual_cmc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    .line 21
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    const-string v1, ""

    .line 23
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    .line 32
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    .line 33
    iput v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    .line 34
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsEmergencyCallSupported:Z

    .line 35
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsSameWiFiOnly:Z

    .line 36
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    return-void
.end method

.method public static getInfoNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isDumpPrintAvailable(Ljava/lang/String;)Z
    .locals 3

    .line 88
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "device_type"

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    .line 92
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public checkValidWithName(Ljava/lang/String;)Z
    .locals 3

    .line 131
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValueWithName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 136
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return v2

    .line 141
    :cond_1
    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    .line 142
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 138
    :cond_3
    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public compareWithName(Ljava/lang/String;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 5

    .line 96
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValueWithName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 101
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValueWithName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 103
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 117
    move-object p1, p0

    check-cast p1, Ljava/util/List;

    .line 118
    move-object v2, p2

    check-cast v2, Ljava/util/List;

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 120
    invoke-interface {p1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    if-nez p0, :cond_3

    if-nez p2, :cond_3

    move v1, v0

    :cond_3
    return v1

    :cond_4
    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    .line 110
    check-cast p0, Ljava/lang/String;

    .line 111
    check-cast p2, Ljava/lang/String;

    .line 112
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    if-nez p0, :cond_6

    if-nez p2, :cond_6

    move v1, v0

    :cond_6
    return v1

    .line 107
    :cond_7
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_8

    move v1, v0

    :cond_8
    return v1

    .line 105
    :cond_9
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p0, p1, :cond_a

    move v1, v0

    :cond_a
    return v1
.end method

.method public getValueWithName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "activation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "dual_cmc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "line_slot_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "call_forking_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "emergency_call_supported"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "line_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "oobe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "network_pref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "pcscf_addr_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_a
    const-string v0, "sa_server_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_b
    const-string v0, "same_wifi_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_c
    const-string v0, "has_sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_d
    const-string v0, "device_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_e
    const-string v0, "line_impu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_f
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_10
    const-string v0, "line_owner_device_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :pswitch_0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 166
    :pswitch_1
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 152
    :pswitch_2
    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 161
    :pswitch_3
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 164
    :pswitch_4
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsEmergencyCallSupported:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 156
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    return-object p0

    .line 154
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    return-object p0

    .line 150
    :pswitch_7
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 163
    :pswitch_8
    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 160
    :pswitch_9
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    return-object p0

    .line 159
    :pswitch_a
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    return-object p0

    .line 165
    :pswitch_b
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsSameWiFiOnly:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 162
    :pswitch_c
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 153
    :pswitch_d
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    return-object p0

    .line 158
    :pswitch_e
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    return-object p0

    .line 155
    :pswitch_f
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    return-object p0

    .line 157
    :pswitch_10
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7dca4d33 -> :sswitch_10
        -0x7391c8a2 -> :sswitch_f
        -0x6b12bc6c -> :sswitch_e
        -0x5bf6507d -> :sswitch_d
        -0x48fb5dea -> :sswitch_c
        -0x2a17be03 -> :sswitch_b
        -0x1cc64afc -> :sswitch_a
        -0xa84dbd0 -> :sswitch_9
        -0x12ad26c -> :sswitch_8
        0x342223 -> :sswitch_7
        0x180aba4 -> :sswitch_6
        0xa8b4d46 -> :sswitch_5
        0x159a207b -> :sswitch_4
        0x332ee201 -> :sswitch_3
        0x47b3647c -> :sswitch_2
        0x6cd34af6 -> :sswitch_1
        0x79aa8116 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValueWithName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, ">"

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
