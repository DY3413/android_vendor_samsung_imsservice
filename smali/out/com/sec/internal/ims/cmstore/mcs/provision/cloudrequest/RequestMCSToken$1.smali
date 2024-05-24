.class Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;
.super Ljava/lang/Object;
.source "RequestMCSToken.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;ZLorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .registers 16

    const-string/jumbo v0, "server_version"

    const-string v1, "oasis_server_root"

    const-string v2, "oasis_large_file_server_root"

    const-string v3, "oasis_small_file_server_root"

    const-string v4, "max_small_file_size"

    const-string v5, "fcm_sender_id"

    const-string/jumbo v6, "validity"

    const-string v7, "exp"

    .line 53
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v9

    .line 55
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "resultCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "strBody: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_21d

    .line 58
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_240

    .line 60
    :try_start_6a
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "access_token"

    .line 61
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v9, v9, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsAccessToken(Ljava/lang/String;)V

    .line 63
    invoke-static {v8, v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getIntegerPayloadFromToken(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    .line 64
    invoke-static {v8, v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->getIntegerPayloadFromToken(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    .line 65
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v8, v8, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v8}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsAccessTokenExpireTime(J)V

    .line 66
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmWorkFlow(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->setAccessTokenValidityTimer(J)V

    const-string/jumbo v8, "refresh_token"

    .line 68
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69
    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v9, v9, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsRefreshToken(Ljava/lang/String;)V

    .line 70
    invoke-static {v8, v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getIntegerPayloadFromToken(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    .line 71
    invoke-static {v8, v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->getIntegerPayloadFromToken(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 72
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v8, v8, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v8}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsRefreshTokenExpireTime(J)V

    .line 73
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmWorkFlow(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->setRefreshTokenValidityTimer(J)V

    const-string v6, "oasis_config"

    .line 75
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 76
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 77
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v7, v7, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveFcmSenderId(Ljava/lang/String;)V

    :cond_e5
    const-string v5, "cms_data_ttl"

    .line 80
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v7, v7, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v8, v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$mgetInt(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveCmsDataTtl(I)V

    const-string v5, "max_upload_file_size"

    .line 82
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v7, v7, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v8, v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$mgetInt(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMaxUploadFileSize(I)V

    .line 84
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 85
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v7, v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$mgetInt(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMaxSmallFileSize(I)V

    .line 88
    :cond_12e
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_143

    .line 89
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOasisSmallFileServerRoot(Ljava/lang/String;)V

    .line 92
    :cond_143
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 93
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOasisLargeFileServerRoot(Ljava/lang/String;)V

    .line 96
    :cond_158
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_187

    .line 97
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oasis server root: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOasisServerRoot(Ljava/lang/String;)V

    .line 101
    :cond_187
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 102
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOasisServerVersion(Ljava/lang/String;)V

    :cond_19c
    const-string v0, "auto_config"

    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "APPLICATIONS"

    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 108
    :goto_1a9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_201

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "TARGET_INFO"

    .line 110
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "type"

    .line 111
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "primary"

    .line 112
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1fe

    const-string p1, "XMS_MESSAGE"

    .line 113
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "mms_revoke_ttl_secs"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v2, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$mgetInt(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMmsRevokeTtlSecs(I)V

    const-string/jumbo v0, "sms_revoke_ttl_secs"

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$mgetInt(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSmsRevokeTtlSecs(I)V

    goto :goto_201

    :cond_1fe
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a9

    .line 121
    :cond_201
    :goto_201
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goSuccessfulCall(Ljava/lang/Object;)V
    :try_end_207
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_207} :catch_208

    goto :goto_240

    :catch_208
    move-exception p1

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)I

    move-result p0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_240

    .line 126
    :cond_21d
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->isErrorCodeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_23b

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p1

    if-lez p1, :cond_240

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_240

    .line 132
    :cond_23b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    :cond_240
    :goto_240
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http request onFail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    const/16 p1, 0x322

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    return-void
.end method
