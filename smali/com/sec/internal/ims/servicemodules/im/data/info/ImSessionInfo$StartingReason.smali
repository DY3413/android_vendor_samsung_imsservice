.class public final enum Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;
.super Ljava/lang/Enum;
.source "ImSessionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartingReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

.field public static final enum AUTOMATIC_REJOINING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

.field public static final enum EXTENDING_1_1_TO_GROUP:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

.field public static final enum NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

.field public static final enum RESTARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

.field public static final enum RESTARTING_WITH_NEW_ID:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 88
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    .line 89
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const-string v3, "RESTARTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->RESTARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    .line 90
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const-string v5, "AUTOMATIC_REJOINING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->AUTOMATIC_REJOINING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    .line 91
    new-instance v5, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const-string v7, "RESTARTING_WITH_NEW_ID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->RESTARTING_WITH_NEW_ID:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    .line 92
    new-instance v7, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const-string v9, "EXTENDING_1_1_TO_GROUP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->EXTENDING_1_1_TO_GROUP:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 87
    sput-object v9, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;
    .locals 1

    .line 87
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;
    .locals 1

    .line 87
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    return-object v0
.end method
