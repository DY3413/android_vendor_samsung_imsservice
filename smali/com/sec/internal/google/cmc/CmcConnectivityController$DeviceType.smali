.class public final enum Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
.super Ljava/lang/Enum;
.source "CmcConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/cmc/CmcConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

.field public static final enum None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

.field public static final enum PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

.field public static final enum SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 75
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string v1, "PDevice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    .line 76
    new-instance v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string v3, "SDevice"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    .line 77
    new-instance v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string v5, "None"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 74
    sput-object v5, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->$VALUES:[Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
    .locals 1

    .line 74
    const-class v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
    .locals 1

    .line 74
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->$VALUES:[Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    invoke-virtual {v0}, [Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    return-object v0
.end method
