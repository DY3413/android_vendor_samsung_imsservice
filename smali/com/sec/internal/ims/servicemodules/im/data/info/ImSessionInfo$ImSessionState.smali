.class public final enum Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;
.super Ljava/lang/Enum;
.source "ImSessionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImSessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum INITIAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum STARTED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

.field public static final enum STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 78
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 79
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v3, "PENDING_INVITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 80
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v5, "STARTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 81
    new-instance v5, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 82
    new-instance v7, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v9, "ACCEPTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 83
    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v11, "ESTABLISHED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 84
    new-instance v11, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const-string v13, "CLOSING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 77
    sput-object v13, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;
    .locals 1

    .line 77
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;
    .locals 1

    .line 77
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    return-object v0
.end method
