.class Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;
.super Landroid/content/BroadcastReceiver;
.source "MStoreDebugTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/MStoreDebugTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 73
    sget-object p1, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVVMIntentReceiver: onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.shiqg.action.VVM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13e

    const-string v0, "com.shiqg.action.TESTAPI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_14d

    .line 80
    :cond_3b
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Landroid/content/Context;

    move-result-object v2

    .line 82
    invoke-static {v2, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/TESTAPI/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "FileName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 86
    :try_start_90
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$mgetTextFromSD(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "API"

    .line 87
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content"

    .line 88
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "preferred_line"

    .line 89
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, 0x5077a65f

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v4, :cond_db

    const v0, 0x5593991a

    if-eq v1, v0, :cond_d0

    const v0, 0x79f4f6c6

    if-eq v1, v0, :cond_c5

    goto :goto_e4

    :cond_c5
    const-string/jumbo v0, "uploadMessage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    move v0, v6

    goto :goto_e5

    :cond_d0
    const-string/jumbo v0, "setupSIM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    move v0, v5

    goto :goto_e5

    :cond_db
    const-string v1, "downloadMessage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_e1} :catch_133

    if-eqz v1, :cond_e4

    goto :goto_e5

    :cond_e4
    :goto_e4
    const/4 v0, -0x1

    :goto_e5
    const-string v1, "VVMDATA"

    if-eqz v0, :cond_119

    if-eq v0, v6, :cond_fe

    if-eq v0, v5, :cond_ee

    goto :goto_14d

    .line 107
    :cond_ee
    :try_start_ee
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    const-string p1, "Type"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->setupSim(Lorg/json/JSONObject;)V
    :try_end_fd
    .catch Lorg/json/JSONException; {:try_start_ee .. :try_end_fd} :catch_133

    goto :goto_14d

    .line 101
    :cond_fe
    :try_start_fe
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmCentralMsgStoreWrapper(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->getBinder()Lcom/sec/ims/ICentralMsgStoreService$Stub;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->uploadMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_10f} :catch_110
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_10f} :catch_133

    goto :goto_14d

    .line 103
    :catch_110
    :try_start_110
    sget-object p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "uploadMessage  error"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_118
    .catch Lorg/json/JSONException; {:try_start_110 .. :try_end_118} :catch_133

    goto :goto_14d

    .line 94
    :cond_119
    :try_start_119
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmCentralMsgStoreWrapper(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->getBinder()Lcom/sec/ims/ICentralMsgStoreService$Stub;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->downloadMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12a
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_12a} :catch_12b
    .catch Lorg/json/JSONException; {:try_start_119 .. :try_end_12a} :catch_133

    goto :goto_14d

    .line 96
    :catch_12b
    :try_start_12b
    sget-object p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    const-string p1, "downloadMessage error"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catch Lorg/json/JSONException; {:try_start_12b .. :try_end_132} :catch_133

    goto :goto_14d

    :catch_133
    move-exception p0

    .line 111
    sget-object p1, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14d

    .line 77
    :cond_13e
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->vvmNormalSyncRequest()V

    goto :goto_14d

    :cond_148
    const-string p0, "cms profile is not enabled"

    .line 117
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14d
    :goto_14d
    return-void
.end method
