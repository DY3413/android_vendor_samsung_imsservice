.class public final enum Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
.super Ljava/lang/Enum;
.source "EucSendResponseStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

.field public static final enum FAILURE_INTERNAL:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

.field public static final enum FAILURE_NETWORK:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

.field public static final enum SUCCESS:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->SUCCESS:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    .line 31
    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    const-string v3, "FAILURE_INTERNAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->FAILURE_INTERNAL:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    .line 35
    new-instance v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    const-string v5, "FAILURE_NETWORK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->FAILURE_NETWORK:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 23
    sput-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    .locals 1

    .line 23
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    .locals 1

    .line 23
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    return-object v0
.end method
