.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;
.super Ljava/lang/Object;
.source "CloudMessageDeleteIndividualSubscription.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 7

    .line 35
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    .line 36
    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionTime(J)V

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionChannelDuration(I)V

    .line 49
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    .line 50
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p1

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 0

    return-void
.end method
