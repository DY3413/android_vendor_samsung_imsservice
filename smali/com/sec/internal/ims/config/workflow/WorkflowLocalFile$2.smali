.class Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;
.source "WorkflowLocalFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 175
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "salesCode from mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_up"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getXml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->parseJson(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "root/vers/version"

    .line 191
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "root/vers/validity"

    .line 192
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->parseParamForLocalFile(Ljava/util/Map;)V

    .line 196
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 197
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 193
    :cond_2
    new-instance p0, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v0, "config xml must contain atleast 2 items(version & validity)."

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_3
    new-instance p0, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v0, "no parsed xml data."

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
