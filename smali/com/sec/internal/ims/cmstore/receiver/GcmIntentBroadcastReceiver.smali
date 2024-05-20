.class public Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GcmIntentBroadcastReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mClients:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->mClients:Ljava/util/Hashtable;

    return-void
.end method

.method private getLastPathFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "/"

    .line 266
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 267
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.nsds.action.RECEIVED_GCM_EVENT_NOTIFICATION"

    .line 49
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->onReceiveNativeChannelNotification(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private handleLargePollingNoti(Lcom/sec/internal/omanetapi/nc/data/NotificationList;Ljava/util/Hashtable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/omanetapi/nc/data/NotificationList;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ">;)V"
        }
    .end annotation

    .line 152
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->largePollingNotification:Lcom/sec/internal/omanetapi/nms/data/LargePollingNotification;

    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/data/LargePollingNotification;->channelURL:Ljava/lang/String;

    .line 153
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/data/LargePollingNotification;->channelExpiry:Ljava/lang/String;

    .line 154
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 155
    :goto_0
    invoke-virtual {p2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 157
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->hasChannelExpired(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    sget-object v3, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "largePollingNotification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelURL(Ljava/lang/String;)V

    .line 163
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->handleLargeDataPolling()V

    goto :goto_1

    .line 165
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v4, "largePollingNotification channel expired"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->updateSubscriptionChannel()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleNmsEvent([Lcom/sec/internal/omanetapi/nc/data/NotificationList;Lcom/sec/internal/omanetapi/nc/data/NotificationList;Ljava/util/Hashtable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sec/internal/omanetapi/nc/data/NotificationList;",
            "Lcom/sec/internal/omanetapi/nc/data/NotificationList;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 173
    :goto_0
    invoke-virtual {p3}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 176
    invoke-static {p2, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->isMatchedSubscriptionID(Lcom/sec/internal/omanetapi/nc/data/NotificationList;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v2

    .line 178
    iget-object v4, p2, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 179
    sget-object v6, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleNmsEvent:  notification curindex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " savedindex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->debugLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    .line 181
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->isEmpty()Z

    move-result v2

    .line 184
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->insertContainer(Ljava/lang/Long;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;)V

    goto/16 :goto_3

    :cond_0
    if-nez v2, :cond_4

    .line 187
    iget-object v2, p2, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    .line 188
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 190
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 191
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->RECEIVE_NOTIFICATION:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 192
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 193
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setNotificationList([Lcom/sec/internal/omanetapi/nc/data/NotificationList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 195
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v3

    .line 196
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 199
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v2

    .line 200
    :cond_1
    :goto_1
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 201
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->peekFirstIndex()J

    move-result-wide v4

    add-long v8, v2, v6

    cmp-long v4, v4, v8

    if-nez v4, :cond_4

    .line 203
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->popFirstEntry()Ljava/util/Map$Entry;

    move-result-object v4

    if-nez v4, :cond_2

    .line 205
    sget-object v4, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleNmsEvent: firstEntry is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    .line 209
    aget-object p2, p1, p0

    .line 210
    iget-object v2, p2, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    .line 211
    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 212
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 214
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 215
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->RECEIVE_NOTIFICATION:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 216
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 217
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setNotificationList([Lcom/sec/internal/omanetapi/nc/data/NotificationList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 219
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v3

    .line 220
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 221
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v2

    .line 223
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    sget-object v2, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "NotificationListContainer is empty, all the disordered notifications have been proceeded, remove UPDATE_SUBSCRIPTION_CHANNEL_DELAY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->removeUpdateSubscriptionChannelEvent()V

    goto :goto_2

    .line 234
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscription url did not match with clientId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    move v2, p0

    :goto_3
    if-eqz v2, :cond_5

    .line 237
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->updateDelayedSubscriptionChannel()V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private isMailBoxReset(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    .line 291
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "notificationList"

    .line 292
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return p0

    .line 296
    :cond_0
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_1

    return p0

    :cond_1
    const-string v0, "nmsEventList"

    .line 300
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return p0

    :cond_2
    const-string v0, "nmsEvent"

    .line 304
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_3

    return p0

    .line 308
    :cond_3
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    const-string v0, "resetBox"

    .line 309
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return p0
.end method

.method private isMatchedSubscriptionID(Lcom/sec/internal/omanetapi/nc/data/NotificationList;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z
    .locals 7

    .line 244
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionResUrl()Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 246
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->getLastPathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 247
    sget-object v0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMatchedSubscriptionID subscriptionID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->link:[Lcom/sec/internal/omanetapi/common/data/Link;

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 249
    iget-object v4, v3, Lcom/sec/internal/omanetapi/common/data/Link;->rel:Ljava/lang/String;

    const-string/jumbo v5, "subscription"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/sec/internal/omanetapi/common/data/Link;->rel:Ljava/lang/String;

    const-string v5, "NmsSubscription"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v3, v3, Lcom/sec/internal/omanetapi/common/data/Link;->href:Ljava/net/URL;

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->getLastPathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    sget-object v4, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMatchedSubscriptionID notiSubID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_2
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isMatchedSubscriptionID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private onReceiveNativeChannelNotification(Landroid/content/Intent;)V
    .locals 9

    .line 55
    sget-object v0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceiveNativeChannelNotification"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->mClients:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 61
    sget-object v4, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get key from clients: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->mClients:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    if-nez v5, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v6

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAMBSActive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->mClients:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionResUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 78
    sget-object p0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p1, "it should not receive gcm notifications here"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "orig_push_message"

    .line 83
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    sget-object v1, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 88
    :try_start_0
    const-class v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    if-eqz v2, :cond_6

    .line 89
    iget-object v2, v2, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    if-nez v2, :cond_5

    goto :goto_1

    .line 94
    :cond_5
    invoke-virtual {p0, v2, v0, p1}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->handlePushNotification([Lcom/sec/internal/omanetapi/nc/data/NotificationList;Ljava/util/Hashtable;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    const-string p0, "response or notificationList is null, polling failed"

    .line 90
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 96
    sget-object p1, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveNativeChannelNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public handlePushNotification([Lcom/sec/internal/omanetapi/nc/data/NotificationList;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sec/internal/omanetapi/nc/data/NotificationList;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    .line 104
    aget-object v1, p1, v0

    move v2, v0

    .line 105
    :goto_0
    invoke-virtual {p2}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 108
    iget-object v4, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->largePollingNotification:Lcom/sec/internal/omanetapi/nms/data/LargePollingNotification;

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/LargePollingNotification;->channelURL:Ljava/lang/String;

    .line 110
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v0

    .line 113
    :goto_1
    iget-object v5, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v5, :cond_1

    .line 114
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->isMatchedSubscriptionID(Lcom/sec/internal/omanetapi/nc/data/NotificationList;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v4

    :cond_1
    if-eqz v4, :cond_2

    .line 117
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isPushNotiProcessPaused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    sget-object p0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Push Notification Processing is paused. Wait for app to come in foreground"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_3
    iget-object v2, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->largePollingNotification:Lcom/sec/internal/omanetapi/nms/data/LargePollingNotification;

    if-eqz v2, :cond_4

    .line 125
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->handleLargePollingNoti(Lcom/sec/internal/omanetapi/nc/data/NotificationList;Ljava/util/Hashtable;)V

    return-void

    .line 129
    :cond_4
    invoke-static {p3}, Lcom/sec/internal/ims/cmstore/helper/MailBoxHelper;->isMailBoxReset(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 130
    sget-object p1, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p3, "MailBoxReset true"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_2
    invoke-virtual {p2}, Ljava/util/Hashtable;->size()I

    move-result p1

    if-ge v0, p1, :cond_6

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 133
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->isMatchedSubscriptionID(Lcom/sec/internal/omanetapi/nc/data/NotificationList;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 134
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p1

    new-instance p3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MAILBOX_RESET:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 136
    invoke-virtual {p3, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p3

    .line 137
    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p3

    .line 135
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 143
    :cond_7
    iget-object p3, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz p3, :cond_8

    .line 146
    invoke-direct {p0, p1, v1, p2}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->handleNmsEvent([Lcom/sec/internal/omanetapi/nc/data/NotificationList;Lcom/sec/internal/omanetapi/nc/data/NotificationList;Ljava/util/Hashtable;)V

    :cond_8
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 42
    sget-object p1, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method
