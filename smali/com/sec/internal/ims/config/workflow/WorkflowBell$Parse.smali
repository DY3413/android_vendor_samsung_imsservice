.class public Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;
.super Ljava/lang/Object;
.source "WorkflowBell.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Parse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Parse:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 239
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "root/vers/version"

    .line 248
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "root/vers/validity"

    .line 249
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 258
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Store;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0

    .line 250
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "config xml must contain atleast 2 items(version & validity)."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0

    .line 254
    :cond_3
    new-instance p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v0, "no body & no cookie. something wrong"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_4
    new-instance p0, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v0, "no parsed xml data."

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
