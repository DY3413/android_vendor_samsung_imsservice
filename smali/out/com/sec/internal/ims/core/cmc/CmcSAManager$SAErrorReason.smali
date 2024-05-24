.class public final enum Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;
.super Ljava/lang/Enum;
.source "CmcSAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcSAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SAErrorReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

.field public static final enum NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

.field public static final enum NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

.field public static final enum OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

.field public static final enum REQUEST_TIMER_EXPIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

.field public static final enum RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

.field public static final enum SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;


# instance fields
.field mDescription:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;
    .registers 6

    .line 38
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->REQUEST_TIMER_EXPIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    sget-object v5, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "SERVICE_DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 40
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "NOT_LOGGED_IN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 41
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "REQUEST_TIMER_EXPIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->REQUEST_TIMER_EXPIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 42
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "RESIGN_REQUIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 43
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "NETWORK_UNAVAILABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 44
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "OTHERS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 38
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->$values()[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;
    .registers 2

    .line 38
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;
    .registers 1

    .line 38
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    return-object v0
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;
    .registers 2

    if-eqz p1, :cond_4

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->mDescription:Ljava/lang/String;

    :cond_4
    return-object p0
.end method
