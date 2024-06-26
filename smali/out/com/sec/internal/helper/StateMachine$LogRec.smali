.class public Lcom/sec/internal/helper/StateMachine$LogRec;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRec"
.end annotation


# instance fields
.field private mDstState:Lcom/sec/internal/helper/IState;

.field private mInfo:Ljava/lang/String;

.field private mOrgState:Lcom/sec/internal/helper/IState;

.field private mSm:Lcom/sec/internal/helper/StateMachine;

.field private mState:Lcom/sec/internal/helper/IState;

.field private mTime:J

.field private mWhat:I


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V
    .registers 7

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    invoke-virtual/range {p0 .. p6}, Lcom/sec/internal/helper/StateMachine$LogRec;->update(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 9

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "time="

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 495
    iget-wide v1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mTime:J

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v1, "%tm-%td %tH:%tM:%tS.%tL"

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    .line 496
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " processed="

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mState:Lcom/sec/internal/helper/IState;

    const-string v2, "<null>"

    if-nez v1, :cond_33

    move-object v1, v2

    goto :goto_37

    :cond_33
    invoke-interface {v1}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " org="

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mOrgState:Lcom/sec/internal/helper/IState;

    if-nez v1, :cond_45

    move-object v1, v2

    goto :goto_49

    :cond_45
    invoke-interface {v1}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dest="

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mDstState:Lcom/sec/internal/helper/IState;

    if-nez v1, :cond_56

    goto :goto_5a

    :cond_56
    invoke-interface {v1}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " what="

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-eqz v1, :cond_6d

    iget v2, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    :cond_6d
    const-string v1, ""

    .line 505
    :goto_6f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 506
    iget v1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget v1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mWhat:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 511
    :cond_8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :goto_91
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a3

    const-string v1, " "

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V
    .registers 9

    .line 481
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mSm:Lcom/sec/internal/helper/StateMachine;

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mTime:J

    if-eqz p2, :cond_d

    .line 483
    iget p1, p2, Landroid/os/Message;->what:I

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput p1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mWhat:I

    .line 484
    iput-object p3, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    .line 485
    iput-object p4, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mState:Lcom/sec/internal/helper/IState;

    .line 486
    iput-object p5, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mOrgState:Lcom/sec/internal/helper/IState;

    .line 487
    iput-object p6, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mDstState:Lcom/sec/internal/helper/IState;

    return-void
.end method
