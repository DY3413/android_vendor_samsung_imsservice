.class public final enum Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
.super Ljava/lang/Enum;
.source "ImSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum CLOSING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum FAILED_MEDIA:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

.field public static final enum STARTING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 2653
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2654
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v3, "STARTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2655
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v5, "ESTABLISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2656
    new-instance v5, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v7, "CLOSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2657
    new-instance v7, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v9, "CLOSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 2658
    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const-string v11, "FAILED_MEDIA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->FAILED_MEDIA:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2652
    sput-object v11, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2652
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    .locals 1

    .line 2652
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    .locals 1

    .line 2652
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    return-object v0
.end method
