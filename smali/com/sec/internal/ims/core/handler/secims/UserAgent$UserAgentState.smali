.class public final enum Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
.super Ljava/lang/Enum;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserAgentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum DEFAULT:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum EMERGENCY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum PROHIBITTED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum READY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum REGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 116
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEFAULT:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v3, "INITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v5, "READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->READY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v7, "REGISTERING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v7, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v9, "REGISTERED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v9, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v11, "REREGISTERING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v11, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v13, "DEREGISTERING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v13, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v15, "TERMINATING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 117
    new-instance v15, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v14, "EMERGENCY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->EMERGENCY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v14, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v12, "PROHIBITTED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->PROHIBITTED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 115
    sput-object v12, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->$VALUES:[Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    .locals 1

    .line 115
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    .locals 1

    .line 115
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->$VALUES:[Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    return-object v0
.end method
