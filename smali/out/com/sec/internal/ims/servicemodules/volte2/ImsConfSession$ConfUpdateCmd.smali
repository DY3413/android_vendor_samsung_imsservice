.class public final enum Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;
.super Ljava/lang/Enum;
.source "ImsConfSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfUpdateCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

.field public static final enum ADD_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

.field public static final enum REMOVE_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

.field public static final enum UNKNOWN:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;
    .registers 3

    .line 64
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->ADD_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->REMOVE_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 65
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    .line 66
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    const-string v1, "ADD_PARTICIPANT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->ADD_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    .line 67
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    const-string v1, "REMOVE_PARTICIPANT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->REMOVE_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    .line 64
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->$values()[Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->$VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;
    .registers 2

    .line 64
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;
    .registers 1

    .line 64
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->$VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 71
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$1;->$SwitchMap$com$sec$internal$ims$servicemodules$volte2$ImsConfSession$ConfUpdateCmd:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const-string p0, "[Unknown]"

    return-object p0

    :cond_11
    const-string p0, "[REMOVE_PARTICIPANT]"

    return-object p0

    :cond_14
    const-string p0, "[ADD_PARTICIPANT]"

    return-object p0
.end method
