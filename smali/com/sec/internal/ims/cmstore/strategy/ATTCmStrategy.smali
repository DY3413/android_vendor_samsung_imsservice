.class public Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;
.super Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;
.source "ATTCmStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;
    }
.end annotation


# instance fields
.field private final ATT_API_VERSION:Ljava/lang/String;

.field private final ATT_STORE_NAME:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private mApiFailCount:I

.field private mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private mLastFailedAPI:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 62
    const-class v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "v1"

    .line 64
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->ATT_API_VERSION:Ljava/lang/String;

    const-string v0, "base"

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->ATT_STORE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 70
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v0, "ATTCmStrategy"

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object p1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const-string p1, "https"

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mProtocol:Ljava/lang/String;

    const-string p1, "application/json"

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mContentType:Ljava/lang/String;

    .line 80
    sget-object p1, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;->JSON:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mNotificationFormat:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    .line 82
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->onOmaFlowInitStart()V

    .line 83
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initSuccessfulCallFlowTranslator()V

    .line 84
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initFailedCallFlowTranslator()V

    .line 85
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->onOmaFlowInitComplete()V

    .line 86
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initStandardRetrySchedule()V

    .line 87
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initMessageAttributeRegistration()V

    .line 88
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOmaRetryVariables()V

    return-void
.end method

.method private clearOmaRetryVariables()V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clear oma retry variables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 958
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 959
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    const/4 v0, 0x0

    .line 960
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOmaRetryCounter(I)V

    return-void
.end method

.method private increaseFailedCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V
    .locals 2

    .line 875
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    iget p1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    .line 877
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed count increment 1, failed count: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOmaRetryCounter(I)V

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 881
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 882
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail count keep same["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], lastFailedAPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 883
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", currentFailedAPI: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 882
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initFailedCallFlowTranslator()V
    .locals 0

    .line 312
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initProvisionFailedCallFlowTranslator()V

    .line 313
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOMAFailedCallFlowTranslator()V

    return-void
.end method

.method private initMessageAttributeRegistration()V
    .locals 3

    .line 760
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DATE"

    const-string v2, "Date"

    .line 762
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$CONTEXT"

    const-string v2, "Message-Context"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DIRECTION"

    const-string v2, "Direction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$FROM"

    const-string v2, "From"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TO"

    const-string v2, "To"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$BCC"

    const-string v2, "Bcc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CC"

    const-string v2, "Cc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SUBJECT"

    const-string v2, "Subject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->is_cpm_group:Ljava/lang/String;

    const-string v2, "$IS$CPM$GROUP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->is_open_group:Ljava/lang/String;

    const-string v2, "$IS$OPEN$GROUP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TEXT$CONTENT"

    const-string v2, "TextContent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->contribution_id:Ljava/lang/String;

    const-string v2, "$CONTRIBUTION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->conversation_id:Ljava/lang/String;

    const-string v2, "$CONVERSATION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->inreplyto_contribution_Id:Ljava/lang/String;

    const-string v2, "$IN$REPLY$TO$CONTRIBUTION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->udh:Ljava/lang/String;

    const-string v2, "$UDH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->call_disposition:Ljava/lang/String;

    const-string v2, "$CALL$DISPOSTITION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->call_duration:Ljava/lang/String;

    const-string v2, "$CALL$DURATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_type:Ljava/lang/String;

    const-string v2, "$DISPOSITION$TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_status:Ljava/lang/String;

    const-string v2, "$DISPOSITION$STATUS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_original_message_iD:Ljava/lang/String;

    const-string v2, "$DISPOSITION$ORIGINAL$MESSAGEID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_original_to:Ljava/lang/String;

    const-string v2, "$DISPOSITION$ORIGINAL$TO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->multipartContentType:Ljava/lang/String;

    const-string v2, "$MULTIPARTCONTENTTYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    return-void
.end method

.method private initOMAFailedCallFlowTranslator()V
    .locals 6

    .line 677
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOmaFailureCommonFlow()V

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    .line 698
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 699
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x199

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 700
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 696
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    .line 704
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 705
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12e

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 706
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 702
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    .line 716
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 717
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x194

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 718
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 714
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    .line 722
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Landroid/os/Handler;

    .line 723
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 720
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    .line 731
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/os/Handler;

    .line 732
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 733
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 729
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initOMASuccessfulCallFlowTranslator()V
    .locals 7

    .line 259
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->initOmaSuccessCommonFlow()V

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    .line 280
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 281
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 282
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 278
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    .line 288
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Landroid/os/Handler;

    .line 289
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc9

    invoke-direct {v1, v6, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 286
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    .line 296
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Landroid/os/Handler;

    .line 297
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 294
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    .line 305
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/os/Handler;

    .line 306
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 307
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 303
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initOmaRetryVariables()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOmaRetryCounter()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMA fail count is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initProvisionFailedCallFlowTranslator()V
    .locals 23

    move-object/from16 v0, p0

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->sErrorMsgsTranslator:Ljava/util/Map;

    .line 347
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->sErrorMsgsTranslator:Ljava/util/Map;

    .line 349
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v9, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->PROVISIONING:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    const/4 v3, 0x0

    invoke-direct {v9, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;-><init>(Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;I)V

    .line 366
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v16, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ZCODE_ERROR_201:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 368
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 369
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "201"

    move-object v4, v2

    move-object/from16 v6, v16

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 366
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v17, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 375
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    sget-object v18, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 376
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "default_error_type"

    const/4 v15, 0x0

    move-object v10, v2

    move-object/from16 v12, v17

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 372
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v19, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 381
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 382
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    const/4 v9, 0x0

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 379
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 388
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    .line 389
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 394
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 395
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 391
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ATS_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 399
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 400
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 397
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v20, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 417
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 414
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 422
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 423
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "201"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 420
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 428
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 429
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "202"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 426
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 433
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 434
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 431
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    sget-object v15, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->PROVISIONING_BLOCKED:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    invoke-direct {v2, v15, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;-><init>(Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;I)V

    .line 457
    new-instance v10, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 459
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    sget-object v18, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CpsDefaultError"

    move-object v4, v10

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 457
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v21, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CPS_PROVISION_SHUTDOWN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 463
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "CPS.SVC-1015"

    const/4 v13, -0x1

    move-object v10, v4

    move-object/from16 v12, v16

    move-object v9, v15

    move-object v15, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 461
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCOUNT_NOT_ELIGIBLE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 466
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "not eligible"

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 464
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v22, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ACCOUNT_ELIGIBILITY:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 476
    invoke-virtual/range {v22 .. v22}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 477
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    const/4 v10, 0x0

    move-object v4, v2

    move-object/from16 v6, v19

    move-object v11, v9

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 474
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v15, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    invoke-direct {v15, v11, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;-><init>(Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;I)V

    .line 495
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 497
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CpsDefaultError"

    const/4 v9, 0x0

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 495
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 500
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "CPS.SVC-1015"

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 498
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 504
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 501
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SERVICE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 508
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 509
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 506
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 515
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 520
    invoke-virtual/range {v22 .. v22}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 521
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "ENCOREESB.SECURITY-6014"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 517
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->LAST_RETRY_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 525
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 526
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "Last_Retry_Create_Account"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 523
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 530
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "ERR_HUITOKEN_JSON"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 528
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 535
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 532
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 539
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 540
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 537
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 547
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 562
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 563
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CpsDefaultError"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 560
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 566
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    const-string v11, "CPS.SVC-1015"

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 564
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 570
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 568
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 586
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 587
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CPS.SVC-1007"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 585
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 590
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 591
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CPS.SVC-1008"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 589
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 595
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CpsDefaultError"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 593
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 599
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 600
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 597
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 606
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 612
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->STOP_BACKUP_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 609
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 616
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 618
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 614
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 627
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 632
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 629
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 635
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string/jumbo v5, "wrong sessionID"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 633
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 639
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 637
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    return-void
.end method

.method private initProvisionSuccessfullCallFlowTranslator()V
    .locals 8

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v3, "HAP.DEF"

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ACCOUNT_ELIGIBILITY:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v4, "HAP.STEADY.STATE.REQ.HUIMSTOKEN"

    invoke-direct {v1, v4, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v5, "HAP.DELETE.ACCOUNT"

    invoke-direct {v1, v5, v4}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v5, "HAP.CREATE.ACCOUNT"

    invoke-direct {v1, v5, v4}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SERVICE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "HAP.GET.SVC.ACCOUNT"

    invoke-direct {v1, v6, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v7, "HAP.GET.TC"

    invoke-direct {v1, v7, v6}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v6, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    invoke-direct {v1, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v5, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->READY_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->DELETE_ACCOUNT_SUCCESS:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    .line 254
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    return-void
.end method

.method private initStandardRetrySchedule()V
    .locals 8

    .line 738
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    .line 740
    sget-boolean v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    const/4 v2, 0x5

    .line 754
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    .line 752
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    .line 751
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    .line 750
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    .line 749
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    .line 748
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v1, :cond_0

    .line 741
    invoke-interface {v0, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v1, 0x2714

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 748
    :cond_0
    invoke-interface {v0, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v1, 0x493e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v1, 0xdbba00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v1, 0x2932e00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v1, 0x5265c00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    return-void
.end method

.method private initSuccessfulCallFlowTranslator()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initProvisionSuccessfullCallFlowTranslator()V

    .line 160
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOMASuccessfulCallFlowTranslator()V

    return-void
.end method


# virtual methods
.method public clearOmaRetryData()V
    .locals 0

    .line 966
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->clearOmaRetryVariables()V

    return-void
.end method

.method public getAdaptedRetrySchedule(I)I
    .locals 4

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 122
    :cond_0
    sget-boolean v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    if-eqz v1, :cond_1

    .line 124
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->getRetryTimeLine(I)I

    move-result p0

    return p0

    .line 135
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 136
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    return p0

    :cond_2
    int-to-float p0, p0

    .line 146
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 147
    div-int/lit16 p0, p0, 0x3e8

    mul-int/lit16 p0, p0, 0x3e8

    return p0

    :cond_3
    const/16 p1, 0x3d

    .line 141
    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr p0, p1

    return p0
.end method

.method public getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 948
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method public getLastFailedApi()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation

    .line 953
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    return-object p0
.end method

.method public getNativeLine()Ljava/lang/String;
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNcHost()Ljava/lang/String;
    .locals 3

    .line 810
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNcHost()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    .line 815
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NC Host value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 818
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNcHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 4

    .line 794
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use host for gcm, NMS Host value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAcsNmsHost()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 800
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_NMS_HOST:Ljava/lang/String;

    :cond_0
    return-object v0

    .line 805
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMAApiVersion()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "v1"

    return-object p0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 0

    const-string p0, "base"

    return-object p0
.end method

.method public getTypeUsingMessageContext(Ljava/lang/String;)I
    .locals 0

    const-string p0, "pager-message"

    .line 838
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const-string p0, "multimedia-message"

    .line 840
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const-string p0, "chat-message"

    .line 842
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xb

    return p0

    :cond_2
    const-string p0, "file-message"

    .line 844
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0xc

    return p0

    :cond_3
    const-string/jumbo p0, "standalone-message"

    .line 846
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0xe

    return p0

    :cond_4
    const-string p0, "imdn-message"

    .line 848
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xd

    return p0

    :cond_5
    const-string/jumbo p0, "voice-message"

    .line 850
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x11

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bearer PAT_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initOmaFailureCommonFlow()V
    .locals 0

    return-void
.end method

.method protected isCarrierStrategyBreakCommonRule(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 3

    .line 925
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isCarrierStrategyBreakCommonRule()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    const/16 v1, 0x12e

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq p2, v1, :cond_0

    return v2

    .line 932
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_1

    return v2

    .line 938
    :cond_1
    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    if-eqz p1, :cond_2

    .line 940
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string p1, "CloudMessageCreateLargeDataPolling, other status code"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 7

    const/4 v0, 0x0

    .line 892
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 893
    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getMaxRetryCounter()I

    move-result v1

    const-string v2, "OMA API failed "

    if-lt v0, v1, :cond_0

    .line 894
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " times before, OMA API retired more than "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getMaxRetryCounter()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " times, pop up error screen"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 894
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->clearOmaRetryVariables()V

    .line 898
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaFailExceedMaxCount()V

    return-void

    .line 901
    :cond_0
    iget p2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->getAdaptedRetrySchedule(I)I

    move-result p2

    int-to-long v0, p2

    const-wide/16 v3, 0x3e8

    if-lez p4, :cond_1

    int-to-long v5, p4

    mul-long/2addr v5, v3

    .line 903
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 905
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times beforeGo ahead fallback to SessionGen after "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, v0, v3

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 908
    sget-object p4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p4

    iput p4, p2, Landroid/os/Message;->what:I

    .line 909
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iput-object p4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 910
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    .line 911
    invoke-direct {p0, p3, p1}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->increaseFailedCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V

    return-void
.end method

.method public onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 917
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 918
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->clearOmaRetryVariables()V

    :cond_0
    return-void
.end method

.method public shouldEnableNetAPIWorking(ZZZZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
