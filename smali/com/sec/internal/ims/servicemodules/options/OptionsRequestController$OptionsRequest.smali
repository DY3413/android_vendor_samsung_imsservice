.class Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
.super Ljava/lang/Object;
.source "OptionsRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OptionsRequest"
.end annotation


# static fields
.field static final DONE:I = 0x2

.field static final FAILED:I = 0x3

.field static final INIT:I = 0x0

.field static final REQUESTED:I = 0x1


# instance fields
.field private errorResponseCode:I

.field private isIncoming:Z

.field private lastSeen:I

.field private mExtFeature:Ljava/lang/String;

.field private mMyCaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyFeatures:J

.field private mPhoneId:I

.field private mState:I

.field private mTimestamp:Ljava/util/Date;

.field private final mUri:Lcom/sec/ims/util/ImsUri;

.field private reason:Ljava/lang/String;

.field private txId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V
    .locals 2

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    const/4 v1, 0x0

    .line 466
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 474
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 475
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    .line 476
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    .line 477
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    .line 478
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    const/4 p1, -0x1

    .line 479
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 480
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    const/4 v1, 0x0

    .line 466
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 484
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 485
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    .line 486
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    .line 487
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    .line 488
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    const/4 p1, -0x1

    .line 489
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 490
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    .line 491
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyCaps:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/sec/ims/util/ImsUri;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    const/4 v1, 0x0

    .line 466
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 495
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 496
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    const-wide/16 v2, 0x0

    .line 497
    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    .line 498
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    .line 499
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    const/4 p1, -0x1

    .line 500
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 501
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    .line 502
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyCaps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getErrorResponseCode()I
    .locals 0

    .line 574
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->errorResponseCode:I

    return p0
.end method

.method getExtFeature()Ljava/lang/String;
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    return-object p0
.end method

.method getLastSeen()I
    .locals 0

    .line 554
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    return p0
.end method

.method getMyCaps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 538
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyCaps:Ljava/util/List;

    return-object p0
.end method

.method getMyFeatures()J
    .locals 2

    .line 522
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    return-wide v0
.end method

.method getPhoneId()I
    .locals 0

    .line 518
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->reason:Ljava/lang/String;

    return-object p0
.end method

.method getState()I
    .locals 0

    .line 510
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    return p0
.end method

.method getTimestamp()Ljava/util/Date;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method getTxId()Ljava/lang/String;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    return-object p0
.end method

.method getUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method isIncoming()Z
    .locals 0

    .line 530
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    return p0
.end method

.method public setErrorResponseCode(I)V
    .locals 0

    .line 578
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->errorResponseCode:I

    return-void
.end method

.method setExtFeature(Ljava/lang/String;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    return-void
.end method

.method setIncoming(Z)V
    .locals 0

    .line 542
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    return-void
.end method

.method setLastSeen(I)V
    .locals 0

    .line 558
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->reason:Ljava/lang/String;

    return-void
.end method

.method setState(I)V
    .locals 0

    .line 506
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    return-void
.end method

.method setTxId(Ljava/lang/String;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    return-void
.end method
