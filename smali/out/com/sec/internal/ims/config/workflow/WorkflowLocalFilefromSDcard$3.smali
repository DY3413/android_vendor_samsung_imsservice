.class Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
.source "WorkflowLocalFilefromSDcard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_3f

    move-object v0, v2

    goto :goto_43

    :cond_3f
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    :goto_43
    const-string v3, "info/rcs_version"

    invoke-interface {v1, v3, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    move-object v0, v2

    goto :goto_5a

    :cond_56
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    :goto_5a
    const-string v3, "info/rcs_profile"

    invoke-interface {v1, v3, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mClientVendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    move-object v0, v2

    goto :goto_71

    :cond_6d
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mClientVendor:Ljava/lang/String;

    :goto_71
    const-string v3, "info/client_vendor"

    invoke-interface {v1, v3, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_87

    :cond_83
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    :goto_87
    const-string v0, "info/client_version"

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_b6

    .line 78
    :cond_8d
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    if-nez v0, :cond_a6

    iget-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v2, :cond_a4

    goto :goto_a6

    :cond_a4
    const/4 v2, 0x0

    goto :goto_a7

    :cond_a6
    :goto_a6
    const/4 v2, 0x1

    :goto_a7
    iput-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 80
    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 82
    :goto_b6
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
