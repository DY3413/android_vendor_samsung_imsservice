.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$2;
.super Ljava/lang/Object;
.source "SubscriptionChannelScheduler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->registerLargePollingNotificationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public largePollingPushNotification(Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;)V
    .registers 3

    .line 123
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;->channelExpiry:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->hasChannelExpired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->TAG:Ljava/lang/String;

    const-string p1, "Large polling channel has expired"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_12
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;->channelURL:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 131
    :cond_1b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetisDelaySubscriptionUpdateInProgress(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public nmsEventListPushNotification(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)V
    .registers 2

    .line 0
    return-void
.end method

.method public syncConfigPushNotification(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public syncContactPushNotification(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public syncMessagePushNotification(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public syncStatusPushNotification(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method
