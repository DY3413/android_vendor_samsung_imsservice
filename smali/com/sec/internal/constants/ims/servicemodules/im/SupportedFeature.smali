.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
.super Ljava/lang/Enum;
.source "SupportedFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum GEOLOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum GROUP_SESSION_MANAGEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum HTTP_FT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum IMDN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum ISCOMPOSING_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum TEXT_PLAIN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "TEXT_PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->TEXT_PLAIN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 29
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v3, "ISCOMPOSING_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->ISCOMPOSING_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 34
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v5, "IMDN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->IMDN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 39
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v7, "HTTP_FT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->HTTP_FT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 44
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v9, "GEOLOCATION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->GEOLOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 49
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v11, "MULTIMEDIA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 54
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v13, "GROUP_SESSION_MANAGEMENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->GROUP_SESSION_MANAGEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 19
    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    return-object v0
.end method
