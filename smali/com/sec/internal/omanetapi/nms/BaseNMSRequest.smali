.class public abstract Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.super Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.source "BaseNMSRequest.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# static fields
.field private static final serialVersionUID:J = 0x70a00cc1a98bb2baL


# instance fields
.field private final JSON_MESSAGE_ID_TAG:Ljava/lang/String;

.field private final JSON_POLICY_EXCEPTION_TAG:Ljava/lang/String;

.field private final JSON_REQUEST_ERROR_TAG:Ljava/lang/String;

.field private final JSON_SERVICE_EXCEPTION_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field protected mAuthorization:Ljava/lang/String;

.field protected mBaseUrl:Ljava/lang/String;

.field private mBoxId:Ljava/lang/String;

.field protected mChallenge:Ljava/lang/String;

.field protected transient mNMSRequestHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    const-string v0, "requestError"

    .line 40
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_REQUEST_ERROR_TAG:Ljava/lang/String;

    const-string v0, "serviceException"

    .line 41
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_SERVICE_EXCEPTION_TAG:Ljava/lang/String;

    const-string v0, "policyException"

    .line 42
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_POLICY_EXCEPTION_TAG:Ljava/lang/String;

    const-string v0, "messageId"

    .line 43
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_MESSAGE_ID_TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    .line 49
    const-class v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 93
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 94
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    const-string v0, "requestError"

    .line 40
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_REQUEST_ERROR_TAG:Ljava/lang/String;

    const-string v0, "serviceException"

    .line 41
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_SERVICE_EXCEPTION_TAG:Ljava/lang/String;

    const-string v0, "policyException"

    .line 42
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_POLICY_EXCEPTION_TAG:Ljava/lang/String;

    const-string v0, "messageId"

    .line 43
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_MESSAGE_ID_TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    .line 49
    const-class v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    :try_start_0
    const-string/jumbo v0, "utf-8"

    .line 101
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 103
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoded telUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mBaseUrl: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "uri encode failed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    const-string v0, "requestError"

    .line 40
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_REQUEST_ERROR_TAG:Ljava/lang/String;

    const-string v0, "serviceException"

    .line 41
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_SERVICE_EXCEPTION_TAG:Ljava/lang/String;

    const-string v0, "policyException"

    .line 42
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_POLICY_EXCEPTION_TAG:Ljava/lang/String;

    const-string v0, "messageId"

    .line 43
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_MESSAGE_ID_TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    .line 49
    const-class v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    const-string v1, "constructor1"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p5, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->buildBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    const-string v0, "requestError"

    .line 40
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_REQUEST_ERROR_TAG:Ljava/lang/String;

    const-string v0, "serviceException"

    .line 41
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_SERVICE_EXCEPTION_TAG:Ljava/lang/String;

    const-string v0, "policyException"

    .line 42
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_POLICY_EXCEPTION_TAG:Ljava/lang/String;

    const-string v0, "messageId"

    .line 43
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_MESSAGE_ID_TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    .line 49
    const-class v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    const-string v1, "constructor2"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p7, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    if-eqz p2, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 83
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    :cond_1
    invoke-interface {p7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 87
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->buildBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    const-string v0, "requestError"

    .line 40
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_REQUEST_ERROR_TAG:Ljava/lang/String;

    const-string v0, "serviceException"

    .line 41
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_SERVICE_EXCEPTION_TAG:Ljava/lang/String;

    const-string v0, "policyException"

    .line 42
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_POLICY_EXCEPTION_TAG:Ljava/lang/String;

    const-string v0, "messageId"

    .line 43
    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->JSON_MESSAGE_ID_TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    .line 49
    const-class v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    const-string v1, "constructor3"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p6, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 66
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->buildBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->buildBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method private buildBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 112
    iput-object p4, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    .line 114
    new-instance p4, Landroid/net/Uri$Builder;

    invoke-direct {p4}, Landroid/net/Uri$Builder;-><init>()V

    .line 116
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p4, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "nms"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    .line 121
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 125
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private buildBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 130
    iget-object p3, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNcHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, ", This constructor is just for subscription"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p4, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    .line 132
    new-instance p3, Landroid/net/Uri$Builder;

    invoke-direct {p3}, Landroid/net/Uri$Builder;-><init>()V

    .line 136
    iget-object p4, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getProtocol()Ljava/lang/String;

    move-result-object p4

    .line 138
    invoke-virtual {p3, p4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p4, "pubsub"

    .line 139
    invoke-virtual {p1, p4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p4, "oma_b"

    invoke-virtual {p1, p4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p4, "nms"

    .line 140
    invoke-virtual {p1, p4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    .line 142
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 144
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 146
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getGbaAuthorization()Ljava/lang/String;
    .locals 7

    .line 432
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mChallenge:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->queryPathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mChallenge:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getGbaResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 442
    iget-object v3, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGbaResponse failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorization = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->replaceUriOfAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    .line 263
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract buildAPISpecificURLFromBase()V
.end method

.method public getBoxId()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    .line 325
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    return-object p0
.end method

.method public getResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    .locals 2

    .line 309
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 312
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 315
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResponseMessageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string p0, "policyException"

    const-string v0, "serviceException"

    const-string v1, "requestError"

    const/4 v2, 0x0

    .line 389
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 391
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 392
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "messageId"

    if-nez v1, :cond_0

    .line 393
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 395
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 400
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 405
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public getRetryInstance(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0

    return-object p0
.end method

.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getBoxId()Ljava/lang/String;

    move-result-object p1

    .line 288
    iput-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 290
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRetryInstance: the box id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0

    return-object p0
.end method

.method protected handleUnAuthorized(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getChallengeFromHttpResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mChallenge:Ljava/lang/String;

    .line 454
    invoke-direct {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getGbaAuthorization()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mAuthorization:Ljava/lang/String;

    .line 455
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    .line 456
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initCommonDeleteRequest()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 253
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 254
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method protected initCommonGetRequest()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 245
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 246
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "application/json"

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "application/xml"

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p1, v0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v1, "Accept"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result p1

    const-string v0, "Authorization"

    if-eqz p1, :cond_3

    .line 165
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mAuthorization:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 166
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mAuthorization:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableATTHeader()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 177
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string p2, "Connection"

    const-string v0, "Keep-Alive"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    const-string/jumbo v0, "x-att-clientVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->getHttpClientID()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "x-att-clientId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->BUILD_INFO:Ljava/lang/String;

    const-string/jumbo v0, "x-att-contextInfo"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "x-att-deviceId"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 189
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableTMOHeader()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 190
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->updateHTTPHeader()V

    .line 191
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result p1

    const-string p2, "User-Agent"

    if-eqz p1, :cond_6

    .line 192
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v0, "3gpp-gba"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 194
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;->USER_AGENT_ID_VALUE:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    sget-object p1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;->DEVICE_ID_VALUE:Ljava/lang/String;

    const-string p2, "device_id"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nms/data/PathList;Z)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 413
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    if-eqz p2, :cond_0

    .line 418
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 421
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 422
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_1
    return-void
.end method

.method public initSubscribeRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "application/json"

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "application/xml"

    .line 205
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p1, v0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v1, "Accept"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v0, "Authorization"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableATTHeader()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string p2, "Connection"

    const-string v0, "close"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    const-string/jumbo v0, "x-att-clientVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->getHttpClientID()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "x-att-clientId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->BUILD_INFO:Ljava/lang/String;

    const-string/jumbo v0, "x-att-contextInfo"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "x-att-deviceId"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableTMOHeader()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 236
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->updateHTTPHeader()V

    .line 237
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    sget-object p2, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;->USER_AGENT_ID_VALUE:Ljava/lang/String;

    const-string v0, "User-Agent"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    sget-object p1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;->DEVICE_ID_VALUE:Ljava/lang/String;

    const-string p2, "device_id"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method

.method public replaceUrlPrefix()V
    .locals 4

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaceUrlPrefix with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->replaceUrlPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 365
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_1
    :goto_0
    return-void
.end method

.method public setMultipleContentType(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 268
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 269
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    if-nez p2, :cond_2

    .line 277
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    .line 280
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z
    .locals 8

    .line 371
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 372
    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldCareAfterPreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p0

    return p0
.end method

.method public updateServerRoot(Ljava/lang/String;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->replaceHostOfURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 381
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public updateToken()Z
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateToken: the box id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mAuthorization:Ljava/lang/String;

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    return p0

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public updateToken(Ljava/lang/String;)Z
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 352
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set box id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBoxId:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    move-result p0

    return p0
.end method
