.class public Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$TelephonyServiceCallback;
.super Landroid/telephony/TelephonyCallback;
.source "NetAPIWorkingStatusController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TelephonyServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$TelephonyServiceCallback;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$TelephonyServiceCallback;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$TelephonyServiceCallback;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    .line 325
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p1, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 p1, 0x1

    :goto_30
    if-eqz p1, :cond_41

    .line 328
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$TelephonyServiceCallback;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNetworkAvailableTime(J)V

    :cond_41
    return-void
.end method
