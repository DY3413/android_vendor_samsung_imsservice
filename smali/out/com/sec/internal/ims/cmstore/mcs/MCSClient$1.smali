.class Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;
.super Lcom/sec/ims/ICentralMsgStoreService$Stub;
.source "MCSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/mcs/MCSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-direct {p0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;-><init>()V

    return-void
.end method

.method private isValidAppType(Ljava/lang/String;)Z
    .registers 3

    const-string p0, "MessageApp"

    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    return v0

    :cond_a
    const-string p0, "VVMDATA"

    .line 214
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    return v0

    :cond_13
    const-string p0, "RCSDATA"

    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private logInvalidAppType()V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string v1, "invalid apptype "

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 129
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->cancelMessageJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 131
    :cond_44
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_47
    return-void
.end method

.method public createParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createParticipant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createParticipant(Ljava/lang/String;)V

    return-void
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSession "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createSession(Ljava/lang/String;)V

    return-void
.end method

.method public deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteMessageJson(Ljava/lang/String;)V

    goto :goto_47

    .line 172
    :cond_44
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_47
    return-void
.end method

.method public deleteOldLegacyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public deleteParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public deleteSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public disableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public downloadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageJson(Ljava/lang/String;)V

    goto :goto_47

    .line 195
    :cond_44
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_47
    return-void
.end method

.method public enableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getAccount(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 425
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string v0, "phoneid is not matched. ignore"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 428
    :cond_1a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string v1, "getAccount"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getRestartScreenName(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getSd(IZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 412
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string p2, "phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 415
    :cond_1a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSd getAll : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "getAll"

    .line 417
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "info"

    .line 418
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public manageSd(IILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 402
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string p2, "phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 405
    :cond_1a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manageSd type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public manualSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
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

    .line 244
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

    .line 247
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9f

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 251
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getIsInitSyncIndicatorRequired()Z

    move-result p1

    if-eqz p1, :cond_90

    .line 252
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_90

    .line 254
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p2

    const-string/jumbo p3, "rowID < 0"

    invoke-static {p1, p2, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->hideIndicator()V

    return-void

    .line 260
    :cond_90
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_b0

    .line 263
    :cond_9f
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string p2, "onBufferDBReadResult ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_b0
    return-void
.end method

.method public onBufferDBReadResultBatch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    const-string v2, "msg app is not Samsung Messages"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmProvisionWorkflow(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->onDefaultSmsPackageChanged()V

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->setProvisionStatus(Z)V

    return-void

    .line 466
    :cond_38
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    const-string v2, "onDefaultSmsPackageChanged"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 467
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 481
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-ne p1, v0, :cond_73

    .line 482
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_73

    .line 483
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 484
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string v1, "It is RCS OFF, so try deregister MCS service"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_73
    return-void
.end method

.method public onFTUriResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFtUriResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 369
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onFtUriResponseJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 371
    :cond_44
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_47
    return-void
.end method

.method public onRCSDBReady(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    const-string v2, "onRCSDBReady"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cms_profile_event"

    .line 310
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sim_status"

    .line 312
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", simStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_4b} :catch_cd

    const-string v1, "SimRemoved"

    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 321
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->setCmsProfileEnabled(Z)V

    .line 322
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->setProvisionStatus(Z)V

    .line 323
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmProvisionWorkflow(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearWorkflow()V

    return-void

    .line 327
    :cond_6c
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmsc(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isSimChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    const-string v2, "isSimChanged clear previous data"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->clearData()V

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmProvisionWorkflow(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearData()V

    :cond_9b
    const-string v0, "CmsProfileEnable"

    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 334
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string v1, "CMS_PROFILE_ENABLE"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->setCmsProfileEnabled(Z)V

    .line 336
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$mstartProvisioning(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V

    .line 337
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onRCSDbReady()V

    :cond_cc
    return-void

    .line 316
    :catch_cd
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string v0, "Json parsing exception"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-ne p1, v0, :cond_3f

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getProvisionStatus()Z

    move-result p1

    if-nez p1, :cond_3f

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$mstartProvisioning(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V

    :cond_3f
    return-void
.end method

.method public onUIButtonProceed(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onUserEnterApp(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onUserLeaveApp(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public readMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->readMessageJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 120
    :cond_45
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_48
    return-void
.end method

.method public receivedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receivedMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->receivedMessageJson(Ljava/lang/String;)V

    goto :goto_48

    .line 98
    :cond_45
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_48
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/sec/ims/ICentralMsgStoreService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public registerCmsProvisioningListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreServiceListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p2, :cond_1b

    .line 493
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo p2, "registerCmsProvisioningListenerByPhoneId phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 496
    :cond_1b
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string/jumbo v1, "registerCmsProvisioningListener from app"

    invoke-static {p2, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->registerCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;Z)V

    return-void
.end method

.method public requestMessageProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestMessageProcess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " function: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_57

    if-eqz p3, :cond_4d

    const/4 p1, 0x1

    if-eq p3, p1, :cond_43

    goto :goto_5a

    .line 144
    :cond_43
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->unStarredRCSMessageList(Ljava/lang/String;)V

    goto :goto_5a

    .line 141
    :cond_4d
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->starredRCSMessageList(Ljava/lang/String;)V

    goto :goto_5a

    .line 150
    :cond_57
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_5a
    return-void
.end method

.method public requestOperation(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p3}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOperation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p3}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p3

    if-eqz p3, :cond_64

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmAppRequestHandler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

    move-result-object p0

    invoke-virtual {p0, p4, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;->processAppRequest(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_75

    .line 207
    :cond_64
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string p2, "Cms Profile is inactive"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_75
    return-void
.end method

.method public restartService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public resumeSync(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public sendTryDeregisterCms(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 392
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string v0, "phoneid is not matched. ignore"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 395
    :cond_1a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string/jumbo v1, "sendTryDeregisterCms"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendTryRegisterCms(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 382
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string p2, "phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 385
    :cond_1a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTryRegisterCms consent_context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 386
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sentMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sentMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sentMessageJson(Ljava/lang/String;)V

    goto :goto_48

    .line 109
    :cond_45
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_48
    return-void
.end method

.method public startContactSyncActivity(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startContactSyncActivity: initialSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq p1, v0, :cond_2f

    .line 446
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "phoneId is not matched. ignore"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_2f
    if-eqz p2, :cond_48

    .line 451
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    move-result-object p0

    const/4 p2, 0x1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5e

    .line 453
    :cond_48
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    move-result-object p0

    const/4 p2, 0x2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_5e
    return-void
.end method

.method public startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public startFullSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public stopSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public unReadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unReadMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->unReadMessageJson(Ljava/lang/String;)V

    goto :goto_48

    .line 161
    :cond_45
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_48
    return-void
.end method

.method public unregisterCmsProvisioningListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreServiceListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p2, :cond_1b

    .line 503
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo p2, "unregisterCmsProvisioningListenerByPhoneId phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 506
    :cond_1b
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string/jumbo v1, "unregisterCmsProvisioningListener from app"

    invoke-static {p2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->unregisterCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;)V

    return-void
.end method

.method public updateAccountInfo(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 435
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string p2, "phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 438
    :cond_1a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string/jumbo v1, "updateAccountInfo"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 439
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public uploadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uploadMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->uploadMessageJson(Ljava/lang/String;)V

    goto :goto_48

    .line 183
    :cond_45
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_48
    return-void
.end method

.method public wipeOutMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
