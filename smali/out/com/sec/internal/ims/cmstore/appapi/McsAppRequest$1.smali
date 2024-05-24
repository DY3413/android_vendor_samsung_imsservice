.class Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest$1;
.super Ljava/lang/Object;
.source "McsAppRequest.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest$1;->this$0:Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .registers 7

    .line 36
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 37
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 40
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;

    invoke-direct {v2, v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;-><init>(ILjava/lang/String;)V

    .line 41
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest$1;->this$0:Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onComplete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xc8

    if-eq v0, p1, :cond_48

    const/16 p1, 0xc9

    if-ne v0, p1, :cond_3f

    goto :goto_48

    .line 48
    :cond_3f
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v1, Landroid/os/Message;->what:I

    goto :goto_50

    .line 46
    :cond_48
    :goto_48
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v1, Landroid/os/Message;->what:I

    .line 50
    :goto_50
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest$1;->this$0:Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->-$$Nest$fgetcallBackListener(Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .registers 5

    .line 56
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest$1;->this$0:Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFail"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 58
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;

    const/4 v1, -0x1

    const-string/jumbo v2, "requestFailed"

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;-><init>(ILjava/lang/String;)V

    .line 59
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    iput v1, p1, Landroid/os/Message;->what:I

    .line 61
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest$1;->this$0:Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->-$$Nest$fgetcallBackListener(Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    return-void
.end method
