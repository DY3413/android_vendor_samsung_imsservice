.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;
.super Ljava/lang/Object;
.source "ReqSession.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const-string v1, "default_error_type"

    const/16 v2, 0x12e

    if-ne v0, v2, :cond_c

    .line 54
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "location"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, -0x1

    if-eqz v0, :cond_2

    .line 71
    sget-object p1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_TARGET_URL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const-string v2, "errorCode"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move v4, v2

    move v2, p1

    move p1, v4

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    if-ltz p1, :cond_3

    const/16 p1, 0x26

    const-string v1, "errorCode="

    .line 76
    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->findErrorCode(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    return-void

    :cond_3
    if-ltz v2, :cond_e

    .line 82
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    .line 83
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p1

    const-string v0, "HAP.STEADY.STATE.REQ.HUIMSTOKEN"

    if-nez p1, :cond_5

    .line 85
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 86
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "not steady state"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)V

    :goto_1
    return-void

    .line 93
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastFailedApiName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SteadyState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    .line 95
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v1

    const-string v2, "HAP.DELETE.ACCOUNT"

    if-eqz v1, :cond_a

    .line 97
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    const-string p1, "HAP.CREATE.ACCOUNT"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$800(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_2

    .line 100
    :cond_6
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    const-string p1, "HAP.GET.SVC.ACCOUNT"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$900(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_2

    .line 103
    :cond_7
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_8
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    const-string p1, "HAP.GET.TC"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_2

    .line 109
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :cond_a
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_2

    .line 116
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)V

    :goto_2
    return-void

    .line 121
    :cond_c
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_d

    .line 122
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_e

    .line 123
    :cond_d
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p1

    if-lez p1, :cond_e

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v1, "RetryAfterRule"

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    return-void

    .line 130
    :cond_e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "all other responses"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

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

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)V

    return-void
.end method
