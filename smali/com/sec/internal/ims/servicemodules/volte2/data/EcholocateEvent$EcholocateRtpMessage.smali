.class public Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;
.super Ljava/lang/Object;
.source "EcholocateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcholocateRtpMessage"
.end annotation


# instance fields
.field delay:Ljava/lang/String;

.field dir:Ljava/lang/String;

.field id:Ljava/lang/String;

.field jitter:Ljava/lang/String;

.field lossrate:Ljava/lang/String;

.field measuredperiod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->dir:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->id:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->lossrate:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->delay:Ljava/lang/String;

    .line 108
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->jitter:Ljava/lang/String;

    .line 109
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->measuredperiod:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDelay()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->delay:Ljava/lang/String;

    return-object p0
.end method

.method public getDir()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->dir:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getJitter()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->jitter:Ljava/lang/String;

    return-object p0
.end method

.method public getLossrate()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->lossrate:Ljava/lang/String;

    return-object p0
.end method

.method public getMeasuredperiod()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->measuredperiod:Ljava/lang/String;

    return-object p0
.end method
