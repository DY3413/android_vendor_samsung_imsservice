.class synthetic Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus$1;
.super Ljava/lang/Object;
.source "NotificationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 68
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    :try_start_9
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
