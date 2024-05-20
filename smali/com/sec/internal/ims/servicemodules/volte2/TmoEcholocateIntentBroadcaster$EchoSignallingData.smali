.class Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;
.super Ljava/lang/Object;
.source "TmoEcholocateIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EchoSignallingData"
.end annotation


# instance fields
.field private networkBand:Ljava/lang/String;

.field private networkSignal:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

.field private time:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    .line 233
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkBand:Ljava/lang/String;

    .line 234
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkSignal:Ljava/lang/String;

    .line 235
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkType:Ljava/lang/String;

    .line 236
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNetworkBand()Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkBand:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkSignal()Ljava/lang/String;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkSignal:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkType:Ljava/lang/String;

    return-object p0
.end method

.method public getSignalMsg()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->time:Ljava/lang/String;

    return-object p0
.end method
