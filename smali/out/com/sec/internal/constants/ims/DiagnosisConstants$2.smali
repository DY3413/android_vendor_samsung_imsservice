.class synthetic Lcom/sec/internal/constants/ims/DiagnosisConstants$2;
.super Ljava/lang/Object;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/DiagnosisConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$core$SimConstants$SIM_STATE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 406
    invoke-static {}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->values()[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$2;->$SwitchMap$com$sec$internal$constants$ims$core$SimConstants$SIM_STATE:[I

    :try_start_9
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$2;->$SwitchMap$com$sec$internal$constants$ims$core$SimConstants$SIM_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
