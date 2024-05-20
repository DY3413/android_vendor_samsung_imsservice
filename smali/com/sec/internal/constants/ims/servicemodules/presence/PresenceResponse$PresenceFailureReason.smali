.class public final enum Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
.super Ljava/lang/Enum;
.source "PresenceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PresenceFailureReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum BAD_EVENT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum DECLINE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum ENTITY_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum REQUEST_TIMEOUT_RETRY:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum SERVER_INTERNAL_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum UNSPECIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field public static final enum USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 185
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v1, "INVALID_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 186
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v3, "USER_NOT_REGISTERED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 187
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v5, "USER_NOT_PROVISIONED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 188
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v7, "FORBIDDEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 189
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v9, "USER_NOT_FOUND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 190
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v11, "METHOD_NOT_ALLOWED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 191
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v13, "REQUEST_TIMEOUT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 192
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v15, "REQUEST_TIMEOUT_RETRY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT_RETRY:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 193
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v14, "CONDITIONAL_REQUEST_FAILED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 194
    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v12, "ENTITY_TOO_LARGE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->ENTITY_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 195
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v10, "UNSUPPORTED_MEDIA_TYPE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->UNSUPPORTED_MEDIA_TYPE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 196
    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v8, "INTERVAL_TOO_SHORT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 197
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v6, "TEMPORARILY_UNAVAILABLE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 198
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v4, "BUSY_HERE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 199
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v2, "BAD_EVENT"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BAD_EVENT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 200
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v6, "SERVER_INTERNAL_ERROR"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVER_INTERNAL_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 201
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v4, "SERVICE_UNAVAILABLE"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 202
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v2, "BUSY_EVERYWHERE"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 203
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v6, "DECLINE"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 204
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v4, "DOES_NOT_EXIST_ANYWHERE"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 205
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v2, "UNSPECIFIED_ERROR"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->UNSPECIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 206
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const-string v6, "NO_RESPONSE"

    move-object/from16 v24, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/16 v6, 0x16

    new-array v6, v6, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

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

    .line 184
    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .locals 1

    .line 184
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .locals 1

    .line 184
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    return-object v0
.end method


# virtual methods
.method public varargs isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z
    .locals 4

    .line 209
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
