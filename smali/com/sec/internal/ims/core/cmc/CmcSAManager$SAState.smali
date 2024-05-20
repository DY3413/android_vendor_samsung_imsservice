.class final enum Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;
.super Ljava/lang/Enum;
.source "CmcSAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcSAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SAState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

.field public static final enum IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

.field public static final enum REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

.field public static final enum SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

.field public static final enum SERVICE_CONNECTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const-string v3, "SERVICE_CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    new-instance v3, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const-string v5, "SERVICE_CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    new-instance v5, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const-string v7, "REQUESTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 36
    sput-object v7, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;
    .locals 1

    .line 36
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;
    .locals 1

    .line 36
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    return-object v0
.end method
