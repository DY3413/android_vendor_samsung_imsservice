.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;
.super Ljava/lang/Object;
.source "CloudMessageObjectsOpSearch.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$currentLine:Ljava/lang/String;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field final synthetic val$searchCursor:Ljava/lang/String;

.field final synthetic val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$currentLine:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$searchCursor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeSearchCompleteResponse()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .locals 2

    .line 227
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 228
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 230
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 231
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$700(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$currentLine:Ljava/lang/String;

    .line 232
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 233
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p0

    const-string v0, ""

    .line 234
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 9

    const-string v0, "objectList"

    .line 83
    const-class v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    const-string v2, ""

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    .line 84
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x191

    if-ne v3, v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 86
    invoke-static {v4, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/16 v4, 0xce

    const/16 v5, 0xc8

    if-ne v3, v4, :cond_1

    .line 90
    invoke-virtual {p1, v5}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    return-void

    :cond_1
    const/high16 v4, -0x80000000

    const/4 v6, 0x0

    if-ne v3, v5, :cond_7

    .line 97
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    new-instance v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;-><init>()V

    .line 110
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 112
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, "cursor"

    .line 115
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 118
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    iput-object v6, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->objectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    goto :goto_1

    .line 122
    :cond_3
    new-instance v5, Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    invoke-direct {v5}, Lcom/sec/internal/omanetapi/nms/data/ObjectList;-><init>()V

    iput-object v5, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->objectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    .line 123
    iput-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->cursor:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 127
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    iput-object v6, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->objectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    :goto_1
    if-nez v1, :cond_4

    .line 133
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->makeSearchCompleteResponse()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 135
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 134
    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    return-void

    .line 139
    :cond_4
    iget-object v0, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->objectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    if-eqz v0, :cond_6

    .line 142
    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->cursor:Ljava/lang/String;

    .line 143
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    .line 145
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$currentLine:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 147
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$searchCursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 150
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_PARTIAL_SYNC_SUMMARY:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_CONTINUE_SEARCH:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 153
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 154
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    .line 155
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    goto :goto_2

    .line 157
    :cond_5
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 159
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 160
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    .line 162
    :goto_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    goto :goto_3

    .line 164
    :cond_6
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 166
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 169
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 170
    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 171
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 172
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$currentLine:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    goto :goto_3

    :cond_7
    const/16 v0, 0xcc

    if-ne v3, v0, :cond_8

    .line 178
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->makeSearchCompleteResponse()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    :goto_3
    move v5, v4

    move-object v4, v0

    goto/16 :goto_5

    :cond_8
    const/16 v0, 0x195

    if-ne v3, v0, :cond_a

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableATTHeader()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 181
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 185
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->requestError:Lcom/sec/internal/omanetapi/common/data/RequestError;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/common/data/RequestError;->policyException:Lcom/sec/internal/omanetapi/common/data/PolicyException;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/common/data/PolicyException;->messageId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :cond_9
    move-object v0, v6

    goto :goto_4

    :catch_2
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getResponseMessageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_a

    const-string v1, "POL2006"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 196
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remove PersetSearch Filter and resend OpSearch HTTP request"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REQUEST_OPSEARCH_AFTER_PSF_REMOVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedEvent(ILjava/lang/Object;)V

    return-void

    :cond_a
    move v5, v4

    move-object v4, v6

    .line 207
    :goto_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableATTHeader()Z

    move-result v0

    if-nez v0, :cond_b

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryRequired(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-interface {p1, v0, v6, p0, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V

    return-void

    .line 214
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 220
    :cond_c
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->makeSearchCompleteResponse()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 222
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 221
    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Ljava/lang/String;

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

    .line 241
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method
