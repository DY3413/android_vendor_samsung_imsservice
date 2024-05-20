.class public final enum Lcom/sec/internal/constants/ims/config/LongCarrierConfig;
.super Ljava/lang/Enum;
.source "LongCarrierConfig.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/config/LongCarrierConfig;",
        ">;",
        "Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

.field public static final enum RCS_REQUEST_RETRY_INTERVAL:Lcom/sec/internal/constants/ims/config/LongCarrierConfig;


# instance fields
.field private final mCarrierConfigName:Ljava/lang/String;

.field private final mGlobalSettingsName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$1tqlmpSGVkD-enOv6PzARgg9f0M(Lcom/sec/internal/constants/ims/config/LongCarrierConfig;Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->lambda$putOverrideConfig$0(Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    const-string v1, "RCS_REQUEST_RETRY_INTERVAL"

    const/4 v2, 0x0

    const-string v3, "rcs_request_retry_interval_millis_long"

    const-string v4, "ims.rcs_request_retry_interval_millis_long"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->RCS_REQUEST_RETRY_INTERVAL:Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    aput-object v0, v1, v2

    .line 11
    sput-object v1, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->$VALUES:[Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->mCarrierConfigName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$putOverrideConfig$0(Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 30
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->mCarrierConfigName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/config/LongCarrierConfig;
    .locals 1

    .line 11
    const-class v0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/config/LongCarrierConfig;
    .locals 1

    .line 11
    sget-object v0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->$VALUES:[Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    return-object v0
.end method


# virtual methods
.method public getGlobalSettingsName()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    return-object p0
.end method

.method public putOverrideConfig(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/constants/ims/config/LongCarrierConfig$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/constants/ims/config/LongCarrierConfig;Landroid/os/PersistableBundle;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
