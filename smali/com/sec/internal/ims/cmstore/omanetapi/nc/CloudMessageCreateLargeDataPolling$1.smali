.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;
.super Ljava/lang/Object;
.source "CloudMessageCreateLargeDataPolling.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 10

    .line 49
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0xce

    if-ne v0, v2, :cond_0

    .line 50
    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 54
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 58
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMAApiResponseParam response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " response.notificationList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 71
    iget-object v4, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    .line 73
    iget-object v0, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 86
    :cond_2
    array-length v1, v0

    const/4 v3, 0x0

    if-lez v1, :cond_6

    .line 87
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/helper/MailBoxHelper;->isMailBoxReset(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 88
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MailBoxReset true"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MAILBOX_RESET:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 90
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 89
    invoke-interface {p1, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    return-void

    .line 96
    :cond_3
    aget-object p1, v0, v3

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->isMatchedSubscriptionID(Lcom/sec/internal/omanetapi/nc/data/NotificationList;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 97
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v4

    .line 98
    aget-object p1, v0, v3

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 100
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curindex: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",savedindex: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    cmp-long p1, v6, v4

    if-lez p1, :cond_4

    .line 103
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->isEmpty()Z

    move-result v3

    .line 106
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->insertContainer(Ljava/lang/Long;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;)V

    goto/16 :goto_1

    :cond_4
    if-nez p1, :cond_6

    .line 109
    aget-object p1, v0, v3

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 113
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->RECEIVE_NOTIFICATION:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 114
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setNotificationList([Lcom/sec/internal/omanetapi/nc/data/NotificationList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CLOUD_UPDATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    .line 119
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v0

    .line 120
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$700(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    .line 121
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$800(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->peekFirstIndex()J

    move-result-wide v4

    add-long/2addr v0, v8

    cmp-long p1, v4, v0

    if-nez p1, :cond_6

    .line 122
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$900(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->popFirstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    .line 123
    aget-object v0, p1, v3

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    .line 124
    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$1000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$1100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 128
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->RECEIVE_NOTIFICATION:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 129
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setNotificationList([Lcom/sec/internal/omanetapi/nc/data/NotificationList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CLOUD_UPDATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$1200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v0

    .line 134
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->access$1300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 135
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REMOVE_UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    .line 146
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const-wide/32 v3, 0xea60

    invoke-interface {p1, v0, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    .line 149
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p1, p0, v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    return-void

    .line 74
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occurred "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    return-void

    .line 153
    :cond_9
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 154
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p1, p0, v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    return-void

    .line 158
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    return-void
.end method
