.class Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$2;
.super Ljava/lang/Object;
.source "McsContactSync.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->registerContactPushEventListPushListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public largePollingPushNotification(Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;)V
    .registers 2

    .line 0
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
    .registers 3

    .line 133
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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
