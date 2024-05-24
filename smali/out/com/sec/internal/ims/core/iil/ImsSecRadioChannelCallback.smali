.class public Lcom/sec/internal/ims/core/iil/ImsSecRadioChannelCallback;
.super Lvendor/samsung/hardware/radio/channel/ISehRadioChannelCallback$Stub;
.source "ImsSecRadioChannelCallback.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsSecRadioChannelCallback"


# instance fields
.field private final mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannelCallback$Stub;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/ImsSecRadioChannelCallback;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public receive([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "receive"

    const-string v1, "ImsSecRadioChannelCallback"

    .line 20
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lcom/sec/internal/ims/core/iil/IpcUtil;->arrayListToPrimitiveArray([B)[B

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 24
    :try_start_e
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/ImsSecRadioChannelCallback;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->processResponse([BI)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_2b

    :catch_15
    move-exception p0

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void
.end method
