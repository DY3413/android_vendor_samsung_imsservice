.class Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;
.super Ljava/lang/Object;
.source "TmoEcholocateIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EcholocateHandoverMessage"
.end annotation


# instance fields
.field private callId:Ljava/lang/String;

.field private callNumber:Ljava/lang/String;

.field private callState:Ljava/lang/String;

.field private cellId:Ljava/lang/String;

.field private networkBand:Ljava/lang/String;

.field private networkSignal:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->callNumber:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->callState:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->networkType:Ljava/lang/String;

    .line 184
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->networkBand:Ljava/lang/String;

    .line 185
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->networkSignal:Ljava/lang/String;

    .line 186
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->callId:Ljava/lang/String;

    .line 187
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->time:Ljava/lang/String;

    .line 188
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->cellId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->callId:Ljava/lang/String;

    return-object p0
.end method

.method public getCallNumber()Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->callNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getCallState()Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->callState:Ljava/lang/String;

    return-object p0
.end method

.method public getCellId()Ljava/lang/String;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->cellId:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkBand()Ljava/lang/String;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->networkBand:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkSignal()Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->networkSignal:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->networkType:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->time:Ljava/lang/String;

    return-object p0
.end method

.method public setTime(J)V
    .locals 0

    .line 224
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->time:Ljava/lang/String;

    return-void
.end method
