.class public abstract Lcom/sec/internal/ims/core/iil/IpcDispatcher;
.super Ljava/lang/Object;
.source "IpcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;,
        Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;
    }
.end annotation


# static fields
.field static final CHANNEL_GET_SERVICE_DELAY_MILLIS:I = 0xfa0

.field static final CHANNEL_SERVICE_NAME:[Ljava/lang/String;

.field static final EVENT_SEC_CHANNEL_PROXY_DEAD:I = 0x1

.field protected static final EVENT_SEND_IPC:I = 0x1

.field protected static final LOG_TAG:Ljava/lang/String; = "IpcDispatcher"

.field protected static final VOLTE_TYPE_DUAL:I = 0x3

.field protected static final VOLTE_TYPE_SINGLE:I = 0x1


# instance fields
.field protected final mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final mRegistrants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Registrant;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegistrantsForIilConnected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Registrant;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSecChannelHandler:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

.field private mSender:Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;

.field private mSenderThread:Landroid/os/HandlerThread;

.field protected final mSlotId:I

.field protected mSupportVolteType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "imsd"

    const-string v1, "imsd2"

    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->CHANNEL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    const/4 v0, 0x3

    .line 49
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSupportVolteType:I

    goto :goto_19

    .line 51
    :cond_17
    iput v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSupportVolteType:I

    .line 53
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpcDispatcher Support Volte Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSupportVolteType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcDispatcher"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    iput p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrants:Ljava/util/ArrayList;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrantsForIilConnected:Ljava/util/ArrayList;

    .line 58
    new-instance p1, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;-><init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelHandler:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

    return-void
.end method


# virtual methods
.method abstract handleChannelProxyDead(J)V
.end method

.method protected handleChannelProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .line 187
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IpcDispatcher"

    invoke-static {p2, v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->resetProxy()V

    .line 192
    iget-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->publishChannelProxyDeadEvent(J)V

    return-void
.end method

.method abstract handleSendIpc([B)V
.end method

.method abstract initChannel()V
.end method

.method public initDispatcher()V
    .registers 4

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsModemSender"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSenderThread:Landroid/os/HandlerThread;

    .line 102
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;-><init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSender:Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;

    .line 105
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->initChannel()V

    return-void
.end method

.method protected notifyChannelProxyDied(J)V
    .registers 10

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 178
    new-instance v2, Landroid/os/AsyncResult;

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnected from \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->CHANNEL_SERVICE_NAME:[Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_6

    .line 182
    :cond_3d
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string/jumbo v1, "serviceDied"

    const-string v2, "IpcDispatcher"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->publishChannelProxyDeadEvent(J)V

    return-void
.end method

.method processResponse([BI)V
    .registers 6

    .line 121
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/iil/IpcMessage;->parseIpc([BI)Lcom/sec/internal/ims/core/iil/IpcMessage;

    move-result-object p1

    const-string p2, "IpcDispatcher"

    if-nez p1, :cond_10

    .line 123
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string p1, "cannot parse ipc"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 127
    :cond_10
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Rx]: (M)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (S)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (T)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->typeStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " l:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {p2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Rx]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/iil/IpcUtil;->dumpHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrants:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_72
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_88

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Registrant;

    .line 134
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_72

    :cond_88
    return-void
.end method

.method protected publishChannelProxyDeadEvent(J)V
    .registers 5

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelHandler:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method abstract resetProxy()V
.end method

.method public sendGeneralResponse(ILcom/sec/internal/ims/core/iil/IpcMessage;)Z
    .registers 7

    .line 171
    new-instance v0, Lcom/sec/internal/ims/core/iil/IpcMessage;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x80

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/core/iil/IpcMessage;-><init>(III)V

    .line 172
    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/iil/IpcMessage;->encodeGeneralResponse(ILcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 173
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    move-result p0

    return p0
.end method

.method public sendGeneralResponse(ZLcom/sec/internal/ims/core/iil/IpcMessage;)Z
    .registers 3

    if-eqz p1, :cond_6

    const p1, 0x8000

    goto :goto_9

    :cond_6
    const p1, 0x8005

    .line 167
    :goto_9
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendGeneralResponse(ILcom/sec/internal/ims/core/iil/IpcMessage;)Z

    move-result p0

    return p0
.end method

.method public sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z
    .registers 7

    const-string v0, "IpcDispatcher"

    if-nez p1, :cond_e

    .line 140
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string/jumbo p1, "send IPC message error"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 v1, 0x1

    .line 145
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->setDir(I)V

    .line 147
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Tx]: (M)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (S)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (T)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->typeStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " l:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Tx]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/core/iil/IpcUtil;->dumpHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSender:Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;

    if-eqz p0, :cond_7d

    .line 154
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getData()[B

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_7d
    return v1
.end method

.method public setRegistrant(ILandroid/os/Handler;)Z
    .registers 5

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrants:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setRegistrantForIilConnected(ILandroid/os/Handler;)Z
    .registers 5

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrantsForIilConnected:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method
