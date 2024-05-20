.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
.super Ljava/lang/Enum;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum HTTP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 46
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 47
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 48
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v5, "SIP_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 49
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v7, "MSRP_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 50
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v9, "HTTP_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->HTTP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 51
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v11, "ENGINE_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 52
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v13, "SESSION_RELEASE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 53
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v15, "NETWORK_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 54
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v14, "SESSION_RSRC_UNAVAILABLE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 55
    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v12, "REMOTE_PARTY_CANCELED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 56
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v10, "DEVICE_UNREGISTERED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 57
    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v8, "SIP_PROVISIONAL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 58
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v6, "UNKNOWN_ERROR"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 59
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v4, "DEDICATED_BEARER_ERROR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 45
    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 1

    .line 45
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 1

    .line 45
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-object v0
.end method
