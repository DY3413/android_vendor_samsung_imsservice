.class Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;
.super Lcom/sec/ims/ICentralMsgStoreService$Stub;
.source "CentralMsgStoreInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;-><init>(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-direct {p0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createParticipant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createParticipant(Ljava/lang/String;)V

    return-void
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createSession(Ljava/lang/String;)V

    return-void
.end method

.method public deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public deleteOldLegacyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOldLegacyMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " thread:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteParticipant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteParticipant(Ljava/lang/String;)V

    return-void
.end method

.method public deleteSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteSession(Ljava/lang/String;)V

    return-void
.end method

.method public disableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableAutoSync: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public enableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableAutoSync: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getRestartScreenName(Ljava/lang/String;)I
    .locals 2

    .line 389
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restart Screen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public manualSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manualSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manualSync jsonSummary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setImpuFromImsRegistration(Ljava/lang/String;)V

    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCloudMessageUpdate, apptype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " msgType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " rowIDs: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyUIScreen(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferDBReadResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bufferRowID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appMessageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " syncAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    .line 181
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getIsInitSyncIndicatorRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_0

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->hideIndicator()V

    return-void

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ignore"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBufferDBReadResultBatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferDBReadResultBatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferDBReadResultBatch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->bufferDbReadBatchMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public onFTUriResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFtUriResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onFtUriResponseJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public onRCSDBReady(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRCSDBReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cms_profile_event"

    .line 321
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sim_status"

    .line 323
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", simStatus ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "SimRemoved"

    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    return-void

    :cond_0
    const-string v1, "SimReady"

    .line 335
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CmsProfileDisable"

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isSimChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    :cond_1
    const-string v0, "CmsProfileEnable"

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 344
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 345
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 346
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onRCSDbReady()V

    .line 348
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->needToHandleSimSwap()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isSimChanged()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 350
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 327
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public onUIButtonProceed(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUIButtonProceed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " screenName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUIButtonProceed , message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onUIButtonProceed(ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onUserEnterApp(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserEnterApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setMsgAppForegroundStatus(Z)V

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onReturnAppFetchingFailedMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public onUserLeaveApp(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserLeaveApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setMsgAppForegroundStatus(Z)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public readMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->readMessageJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public receivedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receivedMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receivedMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->receivedMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/sec/ims/ICentralMsgStoreService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerCallback "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restartService(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 261
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public resumeSync(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeSync "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sentMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sentMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sentMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sentMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDeltaSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDeltaSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public startFullSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFullSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFullSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startFullSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public stopSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->stopSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public unReadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unReadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unReadMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->unReadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public uploadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->uploadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method

.method public wipeOutMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wipeOutMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wipeOutMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->wipeOutMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    :goto_0
    return-void
.end method
