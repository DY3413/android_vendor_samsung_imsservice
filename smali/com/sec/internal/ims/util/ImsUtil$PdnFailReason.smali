.class public final enum Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
.super Ljava/lang/Enum;
.source "ImsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/ImsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PdnFailReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum DETACH_WITH_REATTACH_LTE_NW_DETACH:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum NETWORK_SELECTION_ONGOING:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum NOT_DEFINED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum NO_IMS_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum PDN_MAX_TIMEOUT:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum PDN_THROTTLED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum PROTOCOL_ERRORS:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum UNKNOWN_PDP_ADDRESS_TYPE:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;


# instance fields
.field private final mFailCause:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 402
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "NETWORK_SELECTION_ONGOING"

    const/4 v2, 0x0

    const/16 v3, -0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->NETWORK_SELECTION_ONGOING:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 403
    new-instance v1, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v3, "PDN_MAX_TIMEOUT"

    const/4 v4, 0x1

    const/16 v5, -0x16

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PDN_MAX_TIMEOUT:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 404
    new-instance v3, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v5, "PDN_THROTTLED"

    const/4 v6, 0x2

    const/4 v7, -0x8

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PDN_THROTTLED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 405
    new-instance v5, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v7, "INSUFFICIENT_RESOURCES"

    const/4 v8, 0x3

    const/16 v9, 0x1a

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->INSUFFICIENT_RESOURCES:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 406
    new-instance v7, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v9, "MISSING_UNKNOWN_APN"

    const/4 v10, 0x4

    const/16 v11, 0x1b

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->MISSING_UNKNOWN_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 407
    new-instance v9, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v11, "UNKNOWN_PDP_ADDRESS_TYPE"

    const/4 v12, 0x5

    const/16 v13, 0x1c

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 408
    new-instance v11, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v13, "ACTIVATION_REJECT_GGSN"

    const/4 v14, 0x6

    const/16 v15, 0x1e

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->ACTIVATION_REJECT_GGSN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 409
    new-instance v13, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v15, "SERVICE_OPTION_NOT_SUPPORTED"

    const/4 v14, 0x7

    const/16 v12, 0x20

    invoke-direct {v13, v15, v14, v12}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 410
    new-instance v12, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v15, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v14, 0x8

    const/16 v10, 0x21

    invoke-direct {v12, v15, v14, v10}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 411
    new-instance v10, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v15, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    const/16 v14, 0x9

    const/16 v8, 0x37

    invoke-direct {v10, v15, v14, v8}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 412
    new-instance v8, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v15, "DETACH_WITH_REATTACH_LTE_NW_DETACH"

    const/16 v14, 0xa

    const/16 v6, 0x869

    invoke-direct {v8, v15, v14, v6}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->DETACH_WITH_REATTACH_LTE_NW_DETACH:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 413
    new-instance v6, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v15, "PROTOCOL_ERRORS"

    const/16 v14, 0xb

    const/16 v4, 0x6f

    invoke-direct {v6, v15, v14, v4}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PROTOCOL_ERRORS:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 414
    new-instance v4, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v15, "NO_IMS_APN"

    const/16 v14, 0xc

    const/4 v2, -0x1

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->NO_IMS_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 415
    new-instance v15, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v14, "NOT_DEFINED"

    move-object/from16 v16, v4

    const/16 v4, 0xd

    invoke-direct {v15, v14, v4, v2}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->NOT_DEFINED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const/16 v2, 0xe

    new-array v2, v2, [Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const/4 v14, 0x0

    aput-object v0, v2, v14

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

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    aput-object v15, v2, v4

    .line 401
    sput-object v2, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->$VALUES:[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 420
    iput p3, p0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->mFailCause:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
    .locals 6

    .line 428
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->NOT_DEFINED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 429
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->values()[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 430
    iget v5, v4, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->mFailCause:I

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
    .locals 1

    .line 401
    const-class v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
    .locals 1

    .line 401
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->$VALUES:[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    return-object v0
.end method


# virtual methods
.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 0

    .line 424
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getCause()I
    .locals 0

    .line 440
    iget p0, p0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->mFailCause:I

    return p0
.end method
