.class synthetic Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;
.super Ljava/lang/Object;
.source "PresenceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1292
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->values()[Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    :try_start_9
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_BAD_EVENT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RETRY_EXP_BACKOFF:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_DISABLE_MODE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_SUBSCRIBE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_RETRY_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RE_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    return-void
.end method
