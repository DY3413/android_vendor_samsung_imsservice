.class public final enum Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
.super Ljava/lang/Enum;
.source "IMnoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum DISPLAY_ERROR_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum FALLBACK_TO_LEGACY_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum FALLBACK_TO_SLM_FILE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum RETRY_AFTER_REGI:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum RETRY_AFTER_SESSION:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

.field public static final enum SUCCESS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 429
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v1, "DISPLAY_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 430
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v3, "DISPLAY_ERROR_CFS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 431
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v5, "FALLBACK_TO_LEGACY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 432
    new-instance v5, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v7, "FALLBACK_TO_LEGACY_CFS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 433
    new-instance v7, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v9, "FALLBACK_TO_SLM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 434
    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v11, "FALLBACK_TO_SLM_FILE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM_FILE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 435
    new-instance v11, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v13, "NONE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 436
    new-instance v13, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v15, "NO_RETRY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 437
    new-instance v15, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v14, "RETRY_IMMEDIATE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 438
    new-instance v14, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v12, "RETRY_AFTER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 439
    new-instance v12, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v10, "RETRY_AFTER_SESSION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_SESSION:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 440
    new-instance v10, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v8, "RETRY_AFTER_REGI"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_REGI:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 441
    new-instance v8, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const-string v6, "SUCCESS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->SUCCESS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    aput-object v0, v6, v2

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

    aput-object v8, v6, v4

    .line 428
    sput-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 428
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1

    .line 428
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1

    .line 428
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0
.end method
