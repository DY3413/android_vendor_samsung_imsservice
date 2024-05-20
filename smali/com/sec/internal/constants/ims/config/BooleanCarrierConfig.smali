.class public final enum Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;
.super Ljava/lang/Enum;
.source "BooleanCarrierConfig.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;",
        ">;",
        "Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum ENABLE_PRESENCE_CAPABILITY_EXCHANGE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum ENABLE_PRESENCE_GROUP_SUBSCRIBE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum ENABLE_PRESENCE_PUBLISH:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum IMS_SINGLE_REGISTRATION_REQUIRED:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum RCS_BULK_CAPABILITY_EXCHANGE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum RCS_REQUEST_FORBIDDEN_BY_SIP_489:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum USE_ACS_FOR_RCS:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;


# instance fields
.field private final mCarrierConfigName:Ljava/lang/String;

.field private final mGlobalSettingsName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$RZQJhjeuWnW2FCH86ZKXLyQBn6w(Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->lambda$putOverrideConfig$0(Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v1, "IMS_SINGLE_REGISTRATION_REQUIRED"

    const/4 v2, 0x0

    const-string v3, "ims_single_registration_required_bool"

    const-string v4, "ims.ims_single_registration_required_bool"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->IMS_SINGLE_REGISTRATION_REQUIRED:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 14
    new-instance v1, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v3, "ENABLE_PRESENCE_PUBLISH"

    const/4 v4, 0x1

    const-string v5, "enable_presence_publish_bool"

    const-string v6, "ims.enable_presence_publish_bool"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->ENABLE_PRESENCE_PUBLISH:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 16
    new-instance v3, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v5, "ENABLE_PRESENCE_CAPABILITY_EXCHANGE"

    const/4 v6, 0x2

    const-string v7, "enable_presence_capability_exchange_bool"

    const-string v8, "ims.enable_presence_capability_exchange_bool"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->ENABLE_PRESENCE_CAPABILITY_EXCHANGE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 18
    new-instance v5, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v7, "RCS_BULK_CAPABILITY_EXCHANGE"

    const/4 v8, 0x3

    const-string v9, "rcs_bulk_capability_exchange_bool"

    const-string v10, "ims.rcs_bulk_capability_exchange_bool"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->RCS_BULK_CAPABILITY_EXCHANGE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 20
    new-instance v7, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v9, "ENABLE_PRESENCE_GROUP_SUBSCRIBE"

    const/4 v10, 0x4

    const-string v11, "enable_presence_group_subscribe_bool"

    const-string v12, "ims.enable_presence_group_subscribe_bool"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->ENABLE_PRESENCE_GROUP_SUBSCRIBE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 22
    new-instance v9, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v11, "RCS_REQUEST_FORBIDDEN_BY_SIP_489"

    const/4 v12, 0x5

    const-string v13, "rcs_request_forbidden_by_sip_489_bool"

    const-string v14, "ims.rcs_request_forbidden_by_sip_489_bool"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->RCS_REQUEST_FORBIDDEN_BY_SIP_489:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 24
    new-instance v11, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v13, "USE_ACS_FOR_RCS"

    const/4 v14, 0x6

    const-string/jumbo v15, "use_acs_for_rcs_bool"

    invoke-direct {v11, v13, v14, v15, v15}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->USE_ACS_FOR_RCS:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 11
    sput-object v13, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->$VALUES:[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->mCarrierConfigName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$putOverrideConfig$0(Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->mCarrierConfigName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;
    .locals 1

    .line 11
    const-class v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;
    .locals 1

    .line 11
    sget-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->$VALUES:[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    return-object v0
.end method


# virtual methods
.method public getGlobalSettingsName()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    return-object p0
.end method

.method public putOverrideConfig(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;Landroid/os/PersistableBundle;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
