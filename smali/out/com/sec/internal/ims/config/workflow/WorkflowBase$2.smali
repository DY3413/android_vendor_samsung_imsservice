.class Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;
.super Landroid/database/ContentObserver;
.source "WorkflowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Landroid/os/Handler;)V
    .registers 3

    .line 1476
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    .line 1481
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getIdentityByPhoneId(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9b

    if-eqz p2, :cond_9b

    .line 1482
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 1483
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo p2, "rcs_custom_config_server_url"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1484
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget p2, p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(II)I

    move-result p2

    .line 1485
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "rcs_up_profile"

    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1487
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsCustomServerUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-static {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$fgetmRcsAutoconfigSource(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)I

    move-result v1

    if-ne v1, p2, :cond_61

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsUPProfile:Ljava/lang/String;

    .line 1488
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 1489
    :cond_61
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new rcs_custom_config_server_url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", new rcs_autoconfig_source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", new rcs_up_profile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iput-object p1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsCustomServerUrl:Ljava/lang/String;

    .line 1493
    invoke-static {v0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$fputmRcsAutoconfigSource(Lcom/sec/internal/ims/config/workflow/WorkflowBase;I)V

    .line 1494
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1495
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1498
    :cond_9b
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-boolean p2, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsUsingcheckSetToGS:Z

    if-eqz p2, :cond_a7

    .line 1499
    iget-object p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->checkSetToGS(Ljava/util/Map;)V

    .line 1501
    :cond_a7
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getIdentityByPhoneId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    return-void
.end method
