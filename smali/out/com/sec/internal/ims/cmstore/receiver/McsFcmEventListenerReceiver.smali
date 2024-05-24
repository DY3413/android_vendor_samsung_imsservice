.class public Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "McsFcmEventListenerReceiver.java"


# static fields
.field private static final FROM_FIELD:Ljava/lang/String; = "from"

.field private static final INTENT_RECEIVE_FCM_PUSH_NOTIFICATION:Ljava/lang/String; = "com.sec.internal.ims.fcm.action.RECEIVE_FCM_PUSH_NOTIFICATION"

.field private static final MESSAGE_FIELD:Ljava/lang/String; = "message"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    iput p2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.internal.ims.fcm.action.RECEIVE_FCM_PUSH_NOTIFICATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_287

    .line 41
    sget-object p1, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    const-string v1, "onReceive: INTENT_RECEIVE_FCM_PUSH_NOTIFICATION"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "from"

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    .line 43
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 44
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getFcmSenderId()Ljava/lang/String;

    move-result-object v1

    .line 45
    iget v2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " senderId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_280

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_280

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_280

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_280

    .line 52
    :cond_6b
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 54
    :try_start_70
    const-class v1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;

    if-nez p2, :cond_82

    .line 56
    iget p2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    const-string v0, "onReceive: response is null"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 60
    :cond_82
    iget-object v0, p2, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->mdn:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    .line 62
    invoke-static {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25a

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto/16 :goto_25a

    .line 68
    :cond_a8
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsFcmPushNotificationListener()Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    iget-object v1, p2, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->syncStatus:Lcom/sec/internal/omanetapi/nc/data/SyncStatus;
    :try_end_b0
    .catch Ljava/lang/NullPointerException; {:try_start_70 .. :try_end_b0} :catch_262
    .catch Lcom/google/gson/JsonParseException; {:try_start_70 .. :try_end_b0} :catch_262

    const-string v2, "]"

    if-eqz v1, :cond_fd

    .line 70
    :try_start_b4
    iget-object p2, v1, Lcom/sec/internal/omanetapi/nc/data/SyncStatus;->status:Ljava/lang/String;

    .line 71
    iget v1, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncStatus [status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;

    .line 73
    sget-object v1, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncStatusPushNotification: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;->syncStatusPushNotification(Ljava/lang/String;)V

    goto :goto_d4

    .line 76
    :cond_fd
    iget-object v1, p2, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v1, :cond_13c

    .line 78
    iget p2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    const-string v2, "nmsEventList"

    invoke-static {p1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->isMatchedSubscriptionID(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    if-eqz p1, :cond_287

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_114
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;

    .line 81
    sget-object v0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nmsEventListPushNotification: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    invoke-interface {p2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;->nmsEventListPushNotification(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)V

    goto :goto_114

    .line 85
    :cond_13c
    iget-object v1, p2, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->syncContact:Lcom/sec/internal/omanetapi/nc/data/SyncContact;

    if-eqz v1, :cond_189

    .line 86
    iget-object p2, v1, Lcom/sec/internal/omanetapi/nc/data/SyncContact;->syncType:Ljava/lang/String;

    .line 87
    iget v1, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncContact [syncType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_160
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;

    .line 89
    sget-object v1, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncContactPushNotification: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;->syncContactPushNotification(Ljava/lang/String;)V

    goto :goto_160

    .line 92
    :cond_189
    iget-object v1, p2, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->syncConfig:Lcom/sec/internal/omanetapi/nc/data/SyncConfig;

    if-eqz v1, :cond_1d6

    .line 93
    iget-object p2, v1, Lcom/sec/internal/omanetapi/nc/data/SyncConfig;->configType:Ljava/lang/String;

    .line 94
    iget v1, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncConfig [configType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1ad
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;

    .line 96
    sget-object v1, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncConfigPushNotification: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;->syncConfigPushNotification(Ljava/lang/String;)V

    goto :goto_1ad

    .line 99
    :cond_1d6
    iget-object v1, p2, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->syncMessage:Lcom/sec/internal/omanetapi/nc/data/SyncMessage;

    if-eqz v1, :cond_223

    .line 100
    iget-object p2, v1, Lcom/sec/internal/omanetapi/nc/data/SyncMessage;->syncType:Ljava/lang/String;

    .line 101
    iget v1, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncMessage [syncType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1fa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;

    .line 103
    sget-object v1, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncMessagePushNotification: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;->syncMessagePushNotification(Ljava/lang/String;)V

    goto :goto_1fa

    .line 106
    :cond_223
    iget-object p2, p2, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->largePollingNotification:Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;

    if-eqz p2, :cond_287

    .line 108
    iget v1, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    const-string v2, "largePollingNotification"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_232
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;

    .line 110
    sget-object v1, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "largePollingPushNotification: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;->largePollingPushNotification(Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;)V

    goto :goto_232

    .line 64
    :cond_25a
    :goto_25a
    iget p2, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    const-string v0, "onReceive: mdn is different with userCtn"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_261
    .catch Ljava/lang/NullPointerException; {:try_start_b4 .. :try_end_261} :catch_262
    .catch Lcom/google/gson/JsonParseException; {:try_start_b4 .. :try_end_261} :catch_262

    return-void

    :catch_262
    move-exception p1

    .line 115
    sget-object p2, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_287

    .line 48
    :cond_280
    :goto_280
    iget p0, p0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;->mPhoneId:I

    const-string p2, "onReceive: invalid data"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_287
    :goto_287
    return-void
.end method
