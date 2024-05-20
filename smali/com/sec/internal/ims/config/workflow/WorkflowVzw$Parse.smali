.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;
.super Ljava/lang/Object;
.source "WorkflowVzw.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Parse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 1327
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1330
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp2Profile(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "utf-8"

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mXmlMultipleParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "root/vers/version"

    .line 1333
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "root/vers/validity"

    .line 1334
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1337
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse: parsedXml is received from the network server: version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " validity: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rcsDisabledState: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    .line 1340
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1337
    invoke-static {v3, v4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1341
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->checkSetToGS(Ljava/util/Map;)V

    .line 1342
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 1343
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-object v0

    .line 1335
    :cond_1
    new-instance p0, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v0, "parse: parsedXml is invalid!"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
