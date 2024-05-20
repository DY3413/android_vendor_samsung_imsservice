.class synthetic Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;
.super Ljava/lang/Object;
.source "VVMScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

.field static final synthetic $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

.field static final synthetic $SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageImportance:[I

.field static final synthetic $SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageSensitivity:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1209
    invoke-static {}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

    sget-object v4, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

    sget-object v6, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

    sget-object v6, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

    sget-object v6, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

    sget-object v6, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 971
    :catch_7
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->values()[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    :try_start_8
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Upload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->UnRead:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Download:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v3, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 254
    :catch_c
    invoke-static {}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->values()[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageImportance:[I

    :try_start_d
    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->NORMAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageImportance:[I

    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->HIGH:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 227
    :catch_e
    invoke-static {}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->values()[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageSensitivity:[I

    :try_start_f
    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->PERSONAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageSensitivity:[I

    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->PRIVATE:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageSensitivity:[I

    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->CONFIDENTIAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
