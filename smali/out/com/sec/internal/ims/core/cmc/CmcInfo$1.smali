.class synthetic Lcom/sec/internal/ims/core/cmc/CmcInfo$1;
.super Ljava/lang/Object;
.source "CmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

.field static final synthetic $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 103
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    sget-object v5, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    .line 73
    :catch_33
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    :try_start_3c
    sget-object v5, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->OOBE:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->ACTIVATION:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_SLOT_INDEX:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_58

    :catch_58
    :try_start_58
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->DEVICE_TYPE:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->DEVICE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6d
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->ACCESS_TOKEN:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_83} :catch_83

    :catch_83
    :try_start_83
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_OWNER_DEVICE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8f} :catch_8f

    :catch_8f
    :try_start_8f
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_IMPU:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_9b} :catch_9b

    :catch_9b
    :try_start_9b
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->SA_SERVER_URL:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a7} :catch_a7

    :catch_a7
    :try_start_a7
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->PCSCF_ADDR_LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b3} :catch_b3

    :catch_b3
    :try_start_b3
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->CALL_FORKING_ENABLED:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bf} :catch_bf

    :catch_bf
    :try_start_bf
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->HAS_SD:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_cb} :catch_cb

    :catch_cb
    :try_start_cb
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->NETWORK_PREF:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d7} :catch_d7

    :catch_d7
    :try_start_d7
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->EMERGENCY_CALL_SUPPORTED:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e3} :catch_e3

    :catch_e3
    :try_start_e3
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->SAME_WIFI_ONLY:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ef} :catch_ef

    :catch_ef
    :try_start_ef
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->DUAL_CMC:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_fb} :catch_fb

    :catch_fb
    return-void
.end method
