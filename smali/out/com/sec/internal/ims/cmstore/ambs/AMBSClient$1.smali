.class Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;
.super Lcom/sec/ims/ICentralMsgStoreService$Stub;
.source "AMBSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-direct {p0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

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

    .line 363
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createParticipant(Ljava/lang/String;)V

    return-void
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

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

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createSession(Ljava/lang/String;)V

    return-void
.end method

.method public deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteMessageJson(Ljava/lang/String;)V

    goto :goto_45

    .line 152
    :cond_40
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_45
    return-void
.end method

.method public deleteOldLegacyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

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

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

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

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteParticipant(Ljava/lang/String;)V

    return-void
.end method

.method public deleteSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

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

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteSession(Ljava/lang/String;)V

    return-void
.end method

.method public disableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableAutoSync: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageJson(Ljava/lang/String;)V

    goto :goto_45

    .line 175
    :cond_40
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_45
    return-void
.end method

.method public enableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableAutoSync: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAccount(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getRestartScreenName(Ljava/lang/String;)I
    .registers 3

    .line 511
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getRestartScreenName"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_34

    .line 513
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidSim(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServicePause()Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_34

    .line 517
    :cond_2d
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p0

    return p0

    .line 514
    :cond_34
    :goto_34
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AMBS Paused, notify 116"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Disable_PrmptMsg16:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p0

    return p0
.end method

.method public getSd(IZLjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public manageSd(IILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public manualSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manualSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " jsonSummary: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setImpuFromImsRegistration(Ljava/lang/String;)V

    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

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

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyUIScreen(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBufferDBReadResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msgType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bufferRowID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appMessageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " syncAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p6, :cond_53

    .line 247
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmSlotID(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    :cond_53
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a6

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 252
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getIsInitSyncIndicatorRequired()Z

    move-result p1

    if-eqz p1, :cond_97

    .line 253
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_97

    .line 255
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "rowID < 0"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->hideIndicator()V

    return-void

    .line 261
    :cond_97
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_b1

    .line 264
    :cond_a6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ignore"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b1
    return-void
.end method

.method public onBufferDBReadResultBatch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferDBReadResultBatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 274
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->bufferDbReadBatchMessageJson(Ljava/lang/String;)V

    goto :goto_45

    .line 276
    :cond_40
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_45
    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onFTUriResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

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

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onFtUriResponseJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 505
    :cond_40
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_45
    return-void
.end method

.method public onRCSDBReady(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRCSDBReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cms_profile_event"

    .line 400
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sim_status"

    .line 402
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_4e} :catch_226

    const-string v1, "SimRemoved"

    .line 410
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    if-eqz v1, :cond_72

    .line 411
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 412
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void

    :cond_72
    const-string v1, "SimReady"

    .line 417
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "CmsProfileDisable"

    .line 418
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmsc(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isSimChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 421
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    :cond_97
    const-string v0, "CmsProfileEnable"

    .line 425
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_225

    .line 427
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 428
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inserted card is not a ATT or TMO card"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void

    .line 434
    :cond_e7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmsc(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isSimChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMS Account Service Stopped/Paused by server  Stop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v5

    .line 437
    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServiceStop()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Pause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v5

    .line 438
    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServicePause()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Mno: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isSimChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_161

    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v1

    if-eqz v1, :cond_161

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServiceStop()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 443
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void

    .line 448
    :cond_161
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v1

    if-nez v1, :cond_194

    .line 450
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_ENABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    .line 452
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mresetParams(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Lcom/sec/internal/constants/Mno;)V

    .line 453
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 454
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onRCSDbReady()V

    .line 457
    :cond_194
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->needToHandleSimSwap()Z

    move-result v4

    if-eqz v4, :cond_1af

    if-eqz v0, :cond_1af

    .line 459
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    .line 462
    :cond_1af
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e8

    if-eqz v0, :cond_1e8

    const-string/jumbo v0, "ro.product.first_api_level"

    .line 463
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x21

    if-le v0, v4, :cond_1e8

    if-eqz v1, :cond_1e8

    .line 465
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO Esim hotswap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mresetParams(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Lcom/sec/internal/constants/Mno;)V

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onEsimHotswap()V

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onRCSDbReady()V

    .line 471
    :cond_1e8
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-eqz v0, :cond_225

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_216

    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_225

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServiceStop()Z

    move-result p1

    if-nez p1, :cond_225

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServicePause()Z

    move-result p1

    if-nez p1, :cond_225

    .line 474
    :cond_216
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    :cond_225
    return-void

    .line 406
    :catch_226
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Json parsing exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onUIButtonProceed(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUIButtonProceed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " screenName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidSim(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_41

    .line 227
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    const-string p2, "non_pop_up"

    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->notifyAppUIScreen(ILjava/lang/String;I)V

    return v1

    .line 229
    :cond_41
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onUIButtonProceed(ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 232
    :cond_60
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    return v1
.end method

.method public onUserEnterApp(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserEnterApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidSim(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    const-string v0, "non_pop_up"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_5e

    .line 202
    :cond_31
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setMsgAppForegroundStatus(Z)V

    .line 204
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onReturnAppFetchingFailedMsg(Ljava/lang/String;)V

    goto :goto_5e

    .line 206
    :cond_59
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_5e
    return-void
.end method

.method public onUserLeaveApp(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserLeaveApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setMsgAppForegroundStatus(Z)V

    goto :goto_3e

    .line 216
    :cond_39
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_3e
    return-void
.end method

.method public readMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->readMessageJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 120
    :cond_41
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_46
    return-void
.end method

.method public receivedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receivedMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->receivedMessageJson(Ljava/lang/String;)V

    goto :goto_46

    .line 98
    :cond_41
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_46
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/sec/ims/ICentralMsgStoreService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerCallback "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCmsProvisioningListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreServiceListener;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public requestMessageProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestMessageProcess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " function: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestOperation(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestOperation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " operation: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restartService(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restartService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 334
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    goto :goto_36

    .line 336
    :cond_31
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_36
    return-void
.end method

.method public resumeSync(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeSync "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendTryDeregisterCms(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public sendTryRegisterCms(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public sentMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sentMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sentMessageJson(Ljava/lang/String;)V

    goto :goto_46

    .line 109
    :cond_41
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_46
    return-void
.end method

.method public startContactSyncActivity(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDeltaSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 312
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 314
    :cond_39
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_3e
    return-void
.end method

.method public startFullSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFullSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 302
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startFullSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 304
    :cond_41
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_46
    return-void
.end method

.method public stopSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->stopSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 293
    :cond_41
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_46
    return-void
.end method

.method public unReadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unReadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 139
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->unReadMessageJson(Ljava/lang/String;)V

    goto :goto_46

    .line 141
    :cond_41
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_46
    return-void
.end method

.method public unregisterCmsProvisioningListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreServiceListener;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public updateAccountInfo(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public uploadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->uploadMessageJson(Ljava/lang/String;)V

    goto :goto_46

    .line 163
    :cond_41
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_46
    return-void
.end method

.method public wipeOutMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wipeOutMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 190
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->resetVVMPendingRequestCount()V

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->wipeOutMessageJson(Ljava/lang/String;)V

    goto :goto_53

    .line 193
    :cond_4e
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_53
    return-void
.end method
