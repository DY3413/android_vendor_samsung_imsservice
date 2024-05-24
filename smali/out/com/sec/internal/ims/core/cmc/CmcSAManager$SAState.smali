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
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;
    .registers 4

    .line 34
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const-string v1, "SERVICE_CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const-string v1, "SERVICE_CONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const-string v1, "REQUESTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 34
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->$values()[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;
    .registers 2

    .line 34
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;
    .registers 1

    .line 34
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    return-object v0
.end method
