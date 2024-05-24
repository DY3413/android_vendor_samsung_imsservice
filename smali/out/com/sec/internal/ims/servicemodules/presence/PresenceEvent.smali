.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceEvent;
.super Ljava/lang/Object;
.source "PresenceEvent.java"


# static fields
.field static final EVT_BAD_EVENT_TIMEOUT:I = 0xe

.field public static final EVT_DEFAULT_MSG_APP_CHANGED:I = 0x13

.field static final EVT_NEW_NOTIFY_INFO:I = 0x10

.field static final EVT_NEW_NOTIFY_STATUS:I = 0x11

.field static final EVT_NEW_PRESENCE_INFO:I = 0xa

.field static final EVT_NEW_PRESENCE_INFO_DELAYED:I = 0xb

.field static final EVT_NEW_WATCHER_INFO:I = 0xc

.field static final EVT_PERIODIC_PUBLISH:I = 0x4

.field public static final EVT_PUBLISH_CAPABILITIES:I = 0xf

.field static final EVT_PUBLISH_COMPLETE:I = 0x2

.field public static final EVT_PUBLISH_REQUEST:I = 0x1

.field static final EVT_RETRY_PUBLISH_TIMEOUT:I = 0x12

.field static final EVT_SUBSCRIBE_COMPLETE:I = 0x6

.field static final EVT_SUBSCRIBE_LIST_REQUESTED:I = 0x7

.field static final EVT_SUBSCRIBE_REQUESTED:I = 0x5

.field static final EVT_SUBSCRIBE_RETRY:I = 0x8

.field static final EVT_SUBSCRIPTION_TERMINATED:I = 0x9

.field static final EVT_UNPUBLISH_REQUEST:I = 0x3

.field static final EVT_WAKE_LOCK_TIMEOUT:I = 0xd

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceEvent"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;I)Z
    .registers 5

    .line 38
    iget p3, p0, Landroid/os/Message;->what:I

    packed-switch p3, :pswitch_data_116

    const/4 p0, 0x0

    return p0

    .line 139
    :pswitch_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onDefaultSmsPackageChanged()V

    goto/16 :goto_113

    .line 134
    :pswitch_c
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 135
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onRetryPublishTimeout(I)V

    goto/16 :goto_113

    .line 128
    :pswitch_19
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 129
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    .line 130
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onNewNotifyStatus(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V

    goto/16 :goto_113

    .line 122
    :pswitch_2a
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 123
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;

    .line 124
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onNewNotifyInfo(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;I)V

    goto/16 :goto_113

    .line 117
    :pswitch_3b
    iget p2, p0, Landroid/os/Message;->arg1:I

    .line 118
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p3

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p3, p2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;ILjava/lang/String;)V

    goto/16 :goto_113

    .line 97
    :pswitch_4a
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 98
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onBadEventTimeout(I)V

    goto/16 :goto_113

    .line 109
    :pswitch_57
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    goto/16 :goto_113

    .line 85
    :pswitch_5c
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 86
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/ims/presence/PresenceInfo;

    .line 87
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result p1

    .line 88
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result v0

    invoke-static {p3, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object p3

    .line 87
    invoke-virtual {p2, p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->onNewWatcherInformation(Lcom/sec/ims/presence/PresenceInfo;ILcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto/16 :goto_113

    .line 102
    :pswitch_79
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/presence/PresenceInfo;

    .line 103
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 105
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object p3

    .line 104
    invoke-virtual {p2, p1, p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;ILcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto/16 :goto_113

    .line 78
    :pswitch_8c
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 79
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/ims/presence/PresenceInfo;

    .line 80
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result p1

    .line 81
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result v0

    invoke-static {p3, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object p3

    .line 80
    invoke-virtual {p2, p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;ILcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto :goto_113

    .line 113
    :pswitch_a8
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscriptionTerminated(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto :goto_113

    .line 61
    :pswitch_b0
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto :goto_113

    .line 55
    :pswitch_b8
    iget p2, p0, Landroid/os/Message;->arg1:I

    .line 56
    iget-object p3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, p3, p2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeListRequested(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V

    goto :goto_113

    .line 65
    :pswitch_c4
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 66
    iget-object p2, p0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_113

    .line 51
    :pswitch_d4
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeRequested(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;)V

    goto :goto_113

    .line 46
    :pswitch_dc
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 47
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPeriodicPublish(I)V

    goto :goto_113

    .line 92
    :pswitch_e8
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 93
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->unpublish(I)V

    goto :goto_113

    .line 70
    :pswitch_f4
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 71
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    .line 72
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getPhoneId()I

    move-result p2

    .line 73
    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V

    goto :goto_113

    .line 41
    :pswitch_104
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 42
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;I)V

    :goto_113
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_104
        :pswitch_f4
        :pswitch_e8
        :pswitch_dc
        :pswitch_d4
        :pswitch_c4
        :pswitch_b8
        :pswitch_b0
        :pswitch_a8
        :pswitch_8c
        :pswitch_79
        :pswitch_5c
        :pswitch_57
        :pswitch_4a
        :pswitch_3b
        :pswitch_2a
        :pswitch_19
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method
