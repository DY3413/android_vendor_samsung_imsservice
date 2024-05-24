.class public Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;
.super Ljava/lang/Object;
.source "EcholocateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcholocateEmergencyMessage"
.end annotation


# instance fields
.field private callId:Ljava/lang/String;

.field private callNumber:Ljava/lang/String;

.field private isEpdgCall:Z

.field private stateName:Ljava/lang/String;

.field private timerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->callNumber:Ljava/lang/String;

    .line 180
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->timerName:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->stateName:Ljava/lang/String;

    .line 182
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->callId:Ljava/lang/String;

    .line 183
    iput-boolean p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->isEpdgCall:Z

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->callId:Ljava/lang/String;

    return-object p0
.end method

.method public getCallNumber()Ljava/lang/String;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->callNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getStateName()Ljava/lang/String;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->stateName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimerName()Ljava/lang/String;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->timerName:Ljava/lang/String;

    return-object p0
.end method

.method public isEpdgCall()Z
    .registers 1

    .line 174
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->isEpdgCall:Z

    return p0
.end method
