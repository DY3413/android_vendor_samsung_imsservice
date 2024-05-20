.class Lcom/sec/internal/ims/config/workflow/WorkflowTmo$3;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;
.source "WorkflowTmo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Parse:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "root/vers/version"

    .line 211
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "root/vers/validity"

    .line 212
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->moveHttpParam(Ljava/util/Map;)V

    .line 219
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    const-string v2, "info/raw_config_xml_file"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    const/4 v0, 0x7

    .line 224
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 213
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v0, "config xml must contain at least 2 items(version & validity)."

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_1
    new-instance p0, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v0, "no parsed xml data."

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
