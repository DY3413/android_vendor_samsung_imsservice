.class public Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;
.super Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;
.source "TMOCmStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;,
        Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "TMOCmStrategy"


# instance fields
.field private MSTORE_API_VERSION:Ljava/lang/String;

.field private MSTORE_SERVERROOT:Ljava/lang/String;

.field private MSTORE_STORE_NAME:Ljava/lang/String;

.field private WSG_URI:Ljava/lang/String;

.field private mJanskyProviderAdapter:Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_API_VERSION:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_STORE_NAME:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_SERVERROOT:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->WSG_URI:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    const-string v1, "TMOCmStrategy"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const-string v0, "https"

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mProtocol:Ljava/lang/String;

    const/16 v0, 0x64

    .line 54
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxSearch:I

    .line 55
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->onOmaFlowInitStart()V

    .line 56
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->initSuccessfullCallFlowTranslator()V

    .line 57
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->initFailedCallFlowTranslator()V

    .line 58
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->onOmaFlowInitComplete()V

    .line 59
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->initStandardRetrySchedule()V

    .line 60
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->initMessageAttributeRegistration()V

    .line 61
    new-instance v1, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mJanskyProviderAdapter:Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;

    .line 62
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->getDeviceId()V

    .line 64
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxSearch:I

    return-void
.end method

.method private getDeviceId()V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getImei(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;->DEVICE_ID_VALUE:Ljava/lang/String;

    return-void
.end method

.method private initFailedCallFlowTranslator()V
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->initOmaFailureCommonFlow()V

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    .line 157
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 158
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x191

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 159
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 155
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initMessageAttributeRegistration()V
    .locals 3

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DATE"

    const-string v2, "Date"

    .line 197
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$CONTEXT"

    const-string v2, "Message-Context"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DIRECTION"

    const-string v2, "Direction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$FROM"

    const-string v2, "From"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TO"

    const-string v2, "To"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$BCC"

    const-string v2, "Bcc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CC"

    const-string v2, "Cc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SUBJECT"

    const-string v2, "Subject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->is_cpm_group:Ljava/lang/String;

    const-string v2, "$IS$CPM$GROUP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TEXT$CONTENT"

    const-string v2, "TextContent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->contribution_id:Ljava/lang/String;

    const-string v2, "$CONTRIBUTION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->conversation_id:Ljava/lang/String;

    const-string v2, "$CONVERSATION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->inreplyto_contribution_Id:Ljava/lang/String;

    const-string v2, "$IN$REPLY$TO$CONTRIBUTION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->udh:Ljava/lang/String;

    const-string v2, "$UDH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_disposition:Ljava/lang/String;

    const-string v2, "$CALL$DISPOSTITION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_duration:Ljava/lang/String;

    const-string v2, "$CALL$DURATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_starttimestamp:Ljava/lang/String;

    const-string v2, "$CALL$STARTTIMESTAMP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_type:Ljava/lang/String;

    const-string v2, "$CALL$TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->participating_device:Ljava/lang/String;

    const-string v2, "$PARTICIPATING$DEVICE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_type:Ljava/lang/String;

    const-string v2, "$DISPOSITION$TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_status:Ljava/lang/String;

    const-string v2, "$DISPOSITION$STATUS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_original_message_iD:Ljava/lang/String;

    const-string v2, "$DISPOSITION$ORIGINAL$MESSAGEID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_original_to:Ljava/lang/String;

    const-string v2, "$DISPOSITION$ORIGINAL$TO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->multipartContentType:Ljava/lang/String;

    const-string v2, "$MULTIPARTCONTENTTYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->message_id:Ljava/lang/String;

    const-string v2, "$MESSAGE$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->client_correlator:Ljava/lang/String;

    const-string v2, "$CLIENT$CORRELATOR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->report_requested:Ljava/lang/String;

    const-string v2, "$REPORT$REQUESTED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->content_type:Ljava/lang/String;

    const-string v2, "$CONTENT$TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->mime_version:Ljava/lang/String;

    const-string v2, "$MIME$VERSION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->pwd:Ljava/lang/String;

    const-string v2, "$PWD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->old_pwd:Ljava/lang/String;

    const-string v2, "$OLD$PWD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->x_cns_greeting_type:Ljava/lang/String;

    const-string v2, "$X$CNS$GREETING$TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->Content_Duration:Ljava/lang/String;

    const-string v2, "$CONTENT$DURATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->EmailAddress:Ljava/lang/String;

    const-string v2, "$EMAILADDRESS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->VVMOn:Ljava/lang/String;

    const-string v2, "$VVMOn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->NUT:Ljava/lang/String;

    const-string v2, "$NUT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->IMPORTANCE:Ljava/lang/String;

    const-string v2, "$IMPORTANCE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->SENSITIVITY:Ljava/lang/String;

    const-string v2, "$SENSITIVITY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->V2T_LANGUAGE:Ljava/lang/String;

    const-string v2, "$V2T$LANGUAGE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    return-void
.end method

.method private initStandardRetrySchedule()V
    .locals 3

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    const/16 v1, 0x198

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    const/16 v1, 0x1f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    const/16 v1, 0x257

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    const/16 v1, 0x1f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    const/16 v1, 0x1f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    return-void
.end method

.method private initSuccessfullCallFlowTranslator()V
    .locals 7

    .line 112
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->initOmaSuccessCommonFlow()V

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 118
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc9

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 119
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 125
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 126
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xcc

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_ONE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 127
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 123
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 131
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 132
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPLOAD_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 133
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 129
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v4, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 137
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 138
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-direct {v1, v6, v4, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 143
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 144
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 141
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateUserAgentIDHeader()V
    .locals 3

    .line 431
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "T-Mobile P20"

    .line 432
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 433
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "Android"

    .line 438
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;->USER_AGENT_ID_VALUE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNativeLine()Ljava/lang/String;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mJanskyProviderAdapter:Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->getNativeLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_SERVERROOT:Ljava/lang/String;

    return-object p0
.end method

.method public getOMAApiVersion()Ljava/lang/String;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_API_VERSION:Ljava/lang/String;

    return-object p0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_STORE_NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getTimerValue(I)J
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 189
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    const-string p1, "getTimerValue not found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getTypeUsingMessageContext(Ljava/lang/String;)I
    .locals 2

    .line 289
    sget-object p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTypeUsingMessageContext value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "pager-message"

    .line 290
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const-string p0, "multimedia-message"

    .line 292
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const-string p0, "X-RCS-Chat"

    .line 294
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v0, 0xb

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const-string p0, "X-RCS-FT"

    .line 296
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v1, 0xc

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const-string p0, "X-RCS-PM"

    .line 298
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const-string p0, "X-RCS-LM"

    .line 300
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const-string p0, "imdn-message"

    .line 302
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0xd

    return p0

    :cond_6
    const-string/jumbo p0, "voice-message"

    .line 304
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x11

    return p0

    :cond_7
    const-string/jumbo p0, "x-voice-grtng"

    .line 306
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x12

    return p0

    :cond_8
    const-string p0, "X-RCS-Chat-GSO"

    .line 308
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "X-RCS-Chat-Session"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_0
    const/16 p0, 0x22

    return p0
.end method

.method public getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->isGbaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mJanskyProviderAdapter:Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->getSIT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, ""

    return-object p0

    .line 261
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SIT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected isCarrierStrategyDiffFromCommonRuleByCode(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 1

    const/16 p0, 0x191

    if-ne p3, p0, :cond_0

    .line 398
    sget-object p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "API["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], 401, CREDENTIAL_EXPIRED"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p0

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedEvent(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isGbaSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRetryRequired(I)Z
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mScheduledTimer:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isValidOMARequestUrl()Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_API_VERSION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_STORE_NAME:Ljava/lang/String;

    .line 417
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_SERVERROOT:Ljava/lang/String;

    .line 418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 419
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    const-string v0, "isValidOMARequestUrl: false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setDeviceConfigUsed(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SiTUrl"

    .line 317
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceConfigUsed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_SERVERROOT:Ljava/lang/String;

    .line 325
    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "WSG_URI"

    .line 334
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 335
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->WSG_URI:Ljava/lang/String;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WSG_URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->WSG_URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    const-string v1, "apiVersion"

    .line 339
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 340
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_API_VERSION:Ljava/lang/String;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MSTORE_API_VERSION: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_API_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v1, "storeName"

    .line 344
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_STORE_NAME:Ljava/lang/String;

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MSTORE_STORE_NAME: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_STORE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "MaxBulkDelete"

    .line 349
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 350
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    .line 352
    iget v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxBulkDelete:I

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxBulkDelete:I

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MAX_BULK_DELETE : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxBulkDelete:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "MaxSearch"

    .line 356
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6

    .line 359
    iget v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxSearch:I

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxSearch:I

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MAX_SEARCH : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxSearch:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_7
    sget-object p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "RCSMessageStore"

    .line 366
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 367
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 368
    sput-object p0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mRCSMessageStore:Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRCSMessageStore : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    const-string p0, "VV-Mail/Greetings"

    .line 372
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 373
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 374
    sput-object p0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailGreeting:Ljava/lang/String;

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mVVMailGreeting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    const-string p0, "VV-Mail/Inbox"

    .line 378
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 379
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 380
    sput-object p0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailInbox:Ljava/lang/String;

    .line 381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mVVMailInbox : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    :cond_a
    sget-object p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TmoMessageFolderId values: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldEnableNetAPIPutFlag(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "RCSDATA"

    .line 407
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public shouldEnableNetAPIWorking(ZZZZZ)Z
    .locals 0

    return p1
.end method

.method public updateHTTPHeader()V
    .locals 0

    .line 448
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->updateUserAgentIDHeader()V

    return-void
.end method
