.class public final enum Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;
.super Ljava/lang/Enum;
.source "NetworkEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/os/NetworkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VopsState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

.field public static final enum DISABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

.field public static final enum ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

.field public static final enum KEEP:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    const-string v1, "KEEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->KEEP:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    new-instance v1, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    new-instance v3, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->DISABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 31
    sput-object v5, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->$VALUES:[Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;
    .locals 1

    .line 31
    sget-object v0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->$VALUES:[Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    return-object v0
.end method
