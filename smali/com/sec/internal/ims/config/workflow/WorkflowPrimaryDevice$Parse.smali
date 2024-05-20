.class Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;
.super Ljava/lang/Object;
.source "WorkflowPrimaryDevice.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Parse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 439
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "root/vers/version"

    .line 447
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "root/vers/validity"

    .line 448
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 457
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "info/raw_config_xml_file"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnValue(Ljava/lang/String;)V

    .line 461
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    return-object v0

    .line 449
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "config xml must contain atleast 2 items(version & validity)."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Authorize;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    return-object v0

    .line 453
    :cond_3
    new-instance p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v0, "no body & no cookie. something wrong"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 444
    :cond_4
    new-instance p0, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v0, "no parsed xml data."

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
