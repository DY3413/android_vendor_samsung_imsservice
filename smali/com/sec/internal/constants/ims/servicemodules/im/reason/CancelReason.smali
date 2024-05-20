.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
.super Ljava/lang/Enum;
.source "CancelReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CANCELED_NOTIFICATION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CONNECTION_LOST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CONTENT_REACHED_DOWNSIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum INVALID_FT_FILE_SIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum INVALID_URL_TEMPLATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum LOCALLY_ABORTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum LOW_MEMORY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum REJECTED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum REJECTED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum REMOTE_BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum TIME_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum UNAUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum VALIDITY_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 24
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v3, "CANCELED_BY_USER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 29
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v5, "CANCELED_BY_REMOTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 34
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v7, "CANCELED_BY_SYSTEM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 39
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v9, "REJECTED_BY_USER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 44
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v11, "REJECTED_BY_REMOTE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 49
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v13, "TIME_OUT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->TIME_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 54
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v15, "LOW_MEMORY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->LOW_MEMORY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 59
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v14, "TOO_LARGE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 64
    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v12, "NOT_AUTHORIZED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 69
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v10, "REMOTE_BLOCKED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 74
    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v8, "VALIDITY_EXPIRED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->VALIDITY_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 79
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "REMOTE_TEMPORARILY_UNAVAILABLE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 84
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v4, "ERROR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 89
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v2, "INVALID_REQUEST"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 94
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "REMOTE_USER_INVALID"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 99
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v4, "FORBIDDEN_NO_RETRY_FALLBACK"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 104
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v2, "CONTENT_REACHED_DOWNSIZE"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 109
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "NO_RESPONSE"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 115
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v4, "LOCALLY_ABORTED"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->LOCALLY_ABORTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 120
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v2, "CONNECTION_RELEASED"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 125
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "DEVICE_UNREGISTERED"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 130
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v4, "DEDICATED_BEARER_UNAVAILABLE_TIMEOUT"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 136
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v4, "MSRP_SESSION_ERROR_NO_RESUME"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 141
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "WIFI_DISCONNECTED"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 146
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "CONNECTION_LOST"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONNECTION_LOST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 151
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "FORBIDDEN_FT_HTTP"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 156
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "INVALID_FT_FILE_SIZE"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_FT_FILE_SIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 161
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "INVALID_URL_TEMPLATE"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_URL_TEMPLATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 166
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "UNAUTHORIZED"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNAUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 171
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v6, "CANCELED_NOTIFICATION"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_NOTIFICATION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v2, 0x1f

    new-array v2, v2, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v25, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v4, v2, v0

    .line 14
    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->mId:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 5

    .line 187
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 188
    iget v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->mId:I

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->mId:I

    return p0
.end method
