.class public final enum Lcom/sec/internal/constants/ims/config/IntCarrierConfig;
.super Ljava/lang/Enum;
.source "IntCarrierConfig.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/config/IntCarrierConfig;",
        ">;",
        "Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

.field public static final enum NON_RCS_CAPABILITIES_CACHE_EXPIRATION:Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

.field public static final enum WIFI_OFF_DEFERRING_TIME:Lcom/sec/internal/constants/ims/config/IntCarrierConfig;


# instance fields
.field private final mCarrierConfigName:Ljava/lang/String;

.field private final mGlobalSettingsName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$smWIBpH0d6BrW-qPe_IVfQJk1G4(Lcom/sec/internal/constants/ims/config/IntCarrierConfig;Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->lambda$putOverrideConfig$0(Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

    const-string v1, "WIFI_OFF_DEFERRING_TIME"

    const/4 v2, 0x0

    const-string/jumbo v3, "wifi_off_deferring_time_millis_int"

    const-string v4, "ims.wifi_off_deferring_time_millis_int"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->WIFI_OFF_DEFERRING_TIME:Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

    .line 14
    new-instance v1, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

    const-string v3, "NON_RCS_CAPABILITIES_CACHE_EXPIRATION"

    const/4 v4, 0x1

    const-string v5, "non_rcs_capabilities_cache_expiration_sec_int"

    const-string v6, "ims.non_rcs_capabilities_cache_expiration_sec_int"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->NON_RCS_CAPABILITIES_CACHE_EXPIRATION:Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 11
    sput-object v3, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->$VALUES:[Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->mCarrierConfigName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$putOverrideConfig$0(Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->mCarrierConfigName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/config/IntCarrierConfig;
    .locals 1

    .line 11
    const-class v0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/config/IntCarrierConfig;
    .locals 1

    .line 11
    sget-object v0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->$VALUES:[Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

    return-object v0
.end method


# virtual methods
.method public getGlobalSettingsName()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    return-object p0
.end method

.method public putOverrideConfig(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/constants/ims/config/IntCarrierConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/constants/ims/config/IntCarrierConfig$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/constants/ims/config/IntCarrierConfig;Landroid/os/PersistableBundle;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
