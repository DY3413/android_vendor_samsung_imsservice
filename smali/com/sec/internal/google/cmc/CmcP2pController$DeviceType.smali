.class public final enum Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;
.super Ljava/lang/Enum;
.source "CmcP2pController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/cmc/CmcP2pController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

.field public static final enum None:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

.field public static final enum PDevice:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

.field public static final enum SDevice:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    new-instance v0, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    const-string v1, "PDevice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    .line 55
    new-instance v1, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    const-string v3, "SDevice"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    .line 56
    new-instance v3, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    const-string v5, "None"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 53
    sput-object v5, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->$VALUES:[Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;
    .locals 1

    .line 53
    const-class v0, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;
    .locals 1

    .line 53
    sget-object v0, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->$VALUES:[Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    invoke-virtual {v0}, [Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    return-object v0
.end method
