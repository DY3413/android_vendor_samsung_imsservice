.class synthetic Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;
.super Ljava/lang/Object;
.source "BaseDeviceDataUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 89
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->values()[Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    :try_start_9
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_START:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_PAUSE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_STOP:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PUT_OBJECT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_ONE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_NEXT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ONE_LINE_FLAG_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MSTORE_REDIRECT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_WORKINGQUEUE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_QUEUE_BULKDELETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_QUEUE_BULKUPDATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->FALLBACK_ONE_UPDATE_OR_DELETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->BULK_UPDATE_OR_DELETE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SELF_RETRY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    :catch_d8
    :try_start_d8
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e4
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_f0

    :catch_f0
    :try_start_f0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fc

    :catch_fc
    :try_start_fc
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_FALLBACK_TO_LAST_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_108

    :catch_108
    :try_start_108
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_114

    :catch_114
    return-void
.end method