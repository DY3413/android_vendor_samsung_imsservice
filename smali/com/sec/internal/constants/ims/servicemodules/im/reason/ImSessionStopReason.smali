.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
.super Ljava/lang/Enum;
.source "ImSessionStopReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum CLOSE_1_TO_1_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;


# instance fields
.field private final mCauseCode:I

.field private final mReasonText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v1, "VOLUNTARILY"

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const-string v4, "Call completed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 19
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v5, "INVOLUNTARILY"

    const/4 v6, 0x1

    const/16 v7, 0x1f7

    const-string v8, "Service Unavailable"

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 21
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v9, "DEDICATED_BEARER_UNAVAILABLE_TIMEOUT"

    const/4 v10, 0x2

    invoke-direct {v5, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 23
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v11, "GC_FORCE_CLOSE"

    const/4 v12, 0x3

    invoke-direct {v9, v11, v12, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 25
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v13, "NO_RESPONSE"

    const/4 v14, 0x4

    invoke-direct {v11, v13, v14, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 27
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v8, "CLOSE_1_TO_1_SESSION"

    const/4 v13, 0x5

    invoke-direct {v7, v8, v13, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->CLOSE_1_TO_1_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    aput-object v0, v3, v2

    aput-object v1, v3, v6

    aput-object v5, v3, v10

    aput-object v9, v3, v12

    aput-object v11, v3, v14

    aput-object v7, v3, v13

    .line 14
    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x25b

    .line 33
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mCauseCode:I

    const-string p1, ""

    .line 34
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mReasonText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mCauseCode:I

    .line 39
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mReasonText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    return-object v0
.end method


# virtual methods
.method public getCauseCode()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mCauseCode:I

    return p0
.end method

.method public getReasonText()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mReasonText:Ljava/lang/String;

    return-object p0
.end method
