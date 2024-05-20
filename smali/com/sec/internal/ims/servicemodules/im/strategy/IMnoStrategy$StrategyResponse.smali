.class public Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.super Ljava/lang/Object;
.source "IMnoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrategyResponse"
.end annotation


# instance fields
.field private final mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

.field private final mStatusCode:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V
    .locals 0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mStatusCode:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 460
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;)V
    .locals 0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mStatusCode:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 455
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    return-void
.end method


# virtual methods
.method public getErrorNotificationId()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    return-object p0
.end method

.method public getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mStatusCode:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0
.end method
