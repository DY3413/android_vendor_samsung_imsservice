.class public final enum Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
.super Ljava/lang/Enum;
.source "CshErrorReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum ACK_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum ACK_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum BEARER_LOST:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum FILE_IO:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum FORMAT_NOT_SUPPORTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum NORMAL:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum NOT_REACHABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum REJECTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum REMOTE_CONNECTION_CLOSED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum REQUEST_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum TEMPORAIRLY_NOT_AVAILABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum USER_BUSY:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum USER_NOT_FOUND:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 16
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 17
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v3, "USER_BUSY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_BUSY:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 18
    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v5, "TEMPORAIRLY_NOT_AVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->TEMPORAIRLY_NOT_AVAILABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 19
    new-instance v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v7, "REQUEST_TIMED_OUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 20
    new-instance v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v9, "USER_NOT_FOUND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_NOT_FOUND:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 21
    new-instance v9, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v11, "CANCELED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 22
    new-instance v11, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v13, "REJECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REJECTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 23
    new-instance v13, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v15, "ENGINE_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 24
    new-instance v15, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v14, "FILE_IO"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FILE_IO:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 25
    new-instance v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v12, "REMOTE_CONNECTION_CLOSED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REMOTE_CONNECTION_CLOSED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 26
    new-instance v12, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v10, "FORMAT_NOT_SUPPORTED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORMAT_NOT_SUPPORTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 27
    new-instance v10, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v8, "ACK_TIMEOUT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ACK_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 28
    new-instance v8, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v6, "FORBIDDEN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 29
    new-instance v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v4, "NOT_REACHABLE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NOT_REACHABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 30
    new-instance v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v2, "BEARER_LOST"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->BEARER_LOST:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 31
    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v6, "ACK_TIMED_OUT"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ACK_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 32
    new-instance v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v4, "RTP_RTCP_TIMEOUT"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 33
    new-instance v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v2, "MSRP_TIMEOUT"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 34
    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v6, "CSH_CAM_ERROR"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 35
    new-instance v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v4, "NORMAL"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 36
    new-instance v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v2, "UNKNOWN"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 38
    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v6, "NONE"

    move-object/from16 v24, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NONE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/16 v6, 0x16

    new-array v6, v6, [Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    const/16 v0, 0x14

    aput-object v24, v6, v0

    aput-object v2, v6, v4

    .line 15
    sput-object v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0
.end method
