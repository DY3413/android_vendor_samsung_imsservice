.class Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;
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
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 344
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

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

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 337
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

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

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 302
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 358
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

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

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 351
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

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

    .line 467
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

.method public getRestartScreenName(Ljava/lang/String;)I
    .locals 1

    .line 483
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getRestartScreenName"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 485
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidSim(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServicePause()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p0

    return p0

    .line 486
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AMBS Paused, notify 116"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Disable_PrmptMsg16:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p0

    return p0
.end method

.method public manualSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

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

    .line 329
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 223
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

    .line 226
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p6, :cond_0

    .line 228
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmSlotID(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getIsInitSyncIndicatorRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "rowID < 0"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->hideIndicator()V

    return-void

    .line 242
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

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

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->bufferDbReadBatchMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onFtUriResponseJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public onRCSDBReady(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 380
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cms_profile_event"

    .line 381
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sim_status"

    .line 383
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "SimRemoved"

    .line 391
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void

    :cond_0
    const-string v1, "SimReady"

    .line 398
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CmsProfileDisable"

    .line 399
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isSimChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    :cond_1
    const-string v0, "CmsProfileEnable"

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 408
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 409
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 411
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS Account Service Stopped/Paused by server  Stop: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v4

    .line 417
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServiceStop()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Pause: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v4

    .line 418
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServicePause()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServiceStop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_ENABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isSimChanged()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRCSDBReady: isSimChanged Carrier: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mresetParams(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Lcom/sec/internal/constants/Mno;)V

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onRCSDbReady()V

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->needToHandleSimSwap()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isSimChanged()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    .line 443
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    .line 444
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServiceStop()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    .line 445
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServicePause()Z

    move-result p1

    if-nez p1, :cond_8

    .line 446
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    :cond_8
    return-void

    .line 387
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Json parsing exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUIButtonProceed(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidSim(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 208
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    const-string p2, "non_pop_up"

    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->notifyAppUIScreen(ILjava/lang/String;I)V

    return v1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onUIButtonProceed(ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 213
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    return v1
.end method

.method public onUserEnterApp(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidSim(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "non_pop_up"

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setMsgAppForegroundStatus(Z)V

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onReturnAppFetchingFailedMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setMsgAppForegroundStatus(Z)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->readMessageJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receivedMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->receivedMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 264
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

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

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 307
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeSync "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sentMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sentMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sentMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 292
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startFullSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->stopSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->unReadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->uploadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

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

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

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

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->wipeOutMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method
