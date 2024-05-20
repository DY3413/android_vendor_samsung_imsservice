.class public final enum Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
.super Ljava/lang/Enum;
.source "PresenceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PresenceStatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_AT_BAD_EVENT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_AT_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_AT_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_DISABLE_MODE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_NO_SUBSCRIBE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_REQUIRE_RETRY_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_RETRY_EXP_BACKOFF:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field public static final enum PRESENCE_RE_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 219
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->NONE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 220
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v3, "PRESENCE_AT_BAD_EVENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_BAD_EVENT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 221
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v5, "PRESENCE_AT_NOT_PROVISIONED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 222
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v7, "PRESENCE_AT_NOT_REGISTERED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 223
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v9, "PRESENCE_RE_REGISTRATION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RE_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 224
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v11, "PRESENCE_RETRY_EXP_BACKOFF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RETRY_EXP_BACKOFF:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 225
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v13, "PRESENCE_REQUEST_TIMEOUT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 226
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v15, "PRESENCE_REQUIRE_FULL_PUBLISH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 227
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v14, "PRESENCE_NO_SUBSCRIBE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_SUBSCRIBE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 228
    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v12, "PRESENCE_NOT_FOUND"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 229
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v10, "PRESENCE_FORBIDDEN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 230
    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v8, "PRESENCE_DISABLE_MODE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_DISABLE_MODE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 231
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v6, "PRESENCE_NO_RESPONSE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 232
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v4, "PRESENCE_REQUIRE_RETRY_PUBLISH"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_RETRY_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 233
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v2, "PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 234
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const-string v6, "PRESENCE_INTERVAL_TOO_SHORT"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

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

    aput-object v2, v6, v4

    .line 218
    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .locals 1

    .line 218
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .locals 1

    .line 218
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0
.end method
