.class synthetic Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;
.super Ljava/lang/Object;
.source "RcsBigDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 308
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ADVERTISEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PAYMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->SUBSCRIPTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PREMIUM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 267
    :catch_4
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    :try_start_5
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->HTTP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
