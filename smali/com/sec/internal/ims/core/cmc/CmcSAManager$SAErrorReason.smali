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
.method static constructor <clinit>()V
    .locals 13

    .line 41
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "SERVICE_DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 42
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v3, "NOT_LOGGED_IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 43
    new-instance v3, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v5, "REQUEST_TIMER_EXPIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->REQUEST_TIMER_EXPIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 44
    new-instance v5, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v7, "RESIGN_REQUIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 45
    new-instance v7, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v9, "NETWORK_UNAVAILABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 46
    new-instance v9, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v11, "OTHERS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 40
    sput-object v11, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, ""

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;
    .locals 1

    .line 40
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;
    .locals 1

    .line 40
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    return-object v0
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 2

    .line 58
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
    .locals 0

    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->mDescription:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
