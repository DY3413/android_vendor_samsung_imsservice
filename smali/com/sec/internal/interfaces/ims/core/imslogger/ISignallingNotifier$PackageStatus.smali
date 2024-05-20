.class public final enum Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
.super Ljava/lang/Enum;
.source "ISignallingNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PackageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

.field public static final enum DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

.field public static final enum DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

.field public static final enum EMERGENCY_MODE:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

.field public static final enum INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

.field public static final enum NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    const-string v1, "NOT_INSTALLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 9
    new-instance v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    const-string v3, "INSTALLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 10
    new-instance v3, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    const-string v5, "DM_CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 11
    new-instance v5, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    const-string v7, "DM_DISCONNECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 12
    new-instance v7, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    const-string v9, "EMERGENCY_MODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->EMERGENCY_MODE:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 7
    sput-object v9, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->$VALUES:[Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 1

    .line 7
    const-class v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 1

    .line 7
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->$VALUES:[Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v0}, [Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object v0
.end method
