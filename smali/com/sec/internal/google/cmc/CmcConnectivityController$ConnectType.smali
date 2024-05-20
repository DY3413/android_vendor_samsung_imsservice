.class public final enum Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;
.super Ljava/lang/Enum;
.source "CmcConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/cmc/CmcConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

.field public static final enum Internet:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

.field public static final enum Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

.field public static final enum Wifi_HS:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 69
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    const-string v1, "Wifi"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    .line 70
    new-instance v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    const-string v3, "Wifi_HS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    .line 71
    new-instance v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    const-string v5, "Internet"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Internet:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 68
    sput-object v5, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->$VALUES:[Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;
    .locals 1

    .line 68
    const-class v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;
    .locals 1

    .line 68
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->$VALUES:[Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-virtual {v0}, [Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    return-object v0
.end method
