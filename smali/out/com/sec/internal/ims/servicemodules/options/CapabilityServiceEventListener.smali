.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;
.super Ljava/lang/Object;
.source "CapabilityServiceEventListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityServiceEventListener"


# instance fields
.field private mListenersList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/options/ICapabilityServiceEventListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    .line 26
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_22

    .line 28
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    return-void
.end method


# virtual methods
.method public notifyCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/util/ImsUri;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Lcom/sec/ims/util/ImsUri;",
            "I)V"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 90
    :try_start_c
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const-string v1, "CapabilityServiceEventListener"

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCapabilitiesChanged: eventListener length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p4, 0x0

    :goto_27
    if-ge p4, v0, :cond_39

    .line 93
    invoke-virtual {p0, p4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/ICapabilityServiceEventListener;

    .line 94
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_32} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_32} :catch_35
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_32} :catch_35

    add-int/lit8 p4, p4, 0x1

    goto :goto_27

    :catch_35
    move-exception p4

    .line 97
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :cond_39
    :try_start_39
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3c
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_41
    if-eqz p3, :cond_7f

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/ImsUri;

    .line 108
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAllServiceModules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_69
    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 110
    instance-of v0, p4, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;

    if-eqz v0, :cond_69

    .line 111
    check-cast p4, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;

    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->onRemoteCapabilitiesChanged(Lcom/sec/ims/options/Capabilities;)V

    goto :goto_69

    :cond_7f
    return-void
.end method

.method public notifyEABServiceAdvertiseResult(II)V
    .registers 7

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 123
    :try_start_c
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const-string v1, "CapabilityServiceEventListener"

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEABServiceAdvertiseResult: eventListener length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x0

    :goto_27
    if-ge p2, v0, :cond_35

    .line 126
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/ICapabilityServiceEventListener;

    .line 127
    invoke-interface {v1, p1}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->onCapabilityAndAvailabilityPublished(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_27

    .line 129
    :cond_35
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_38} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_38} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    return-void
.end method

.method public notifyOwnCapabilitiesChanged(I)V
    .registers 8

    const-string v0, "CapabilityServiceEventListener"

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 67
    :try_start_e
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOwnCapabilitiesChanged: eventListener length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_55

    .line 70
    invoke-virtual {p0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/options/ICapabilityServiceEventListener;

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " notifyOwnCapabilitiesChanged: listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    invoke-interface {v3}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->onOwnCapabilitiesChanged()V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_4e} :catch_51
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_4e} :catch_51
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_4e} :catch_51

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :catch_51
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_55
    :try_start_55
    const-string v1, "notifyOwnCapabilitiesChanged: finishBroadcast()"

    .line 79
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_5d
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_62
    return-void
.end method

.method public registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    .registers 6

    const-string v0, "CapabilityServiceEventListener"

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_41

    .line 36
    monitor-enter v0

    if-eqz p1, :cond_3c

    .line 38
    :try_start_28
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3e

    .line 40
    :try_start_2b
    invoke-interface {p1}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->onOwnCapabilitiesChanged()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3e

    goto :goto_33

    :catch_2f
    move-exception p1

    .line 42
    :try_start_30
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 44
    :goto_33
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_3c
    monitor-exit v0

    goto :goto_41

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_3e

    throw p0

    :cond_41
    :goto_41
    return-void
.end method

.method public unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    .registers 6

    const-string v0, "CapabilityServiceEventListener"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_39

    .line 54
    monitor-enter v0

    if-eqz p1, :cond_34

    .line 56
    :try_start_28
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 57
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_34
    monitor-exit v0

    goto :goto_39

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    throw p0

    :cond_39
    :goto_39
    return-void
.end method
