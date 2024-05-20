.class public interface abstract Lcom/sec/internal/ims/cmstore/MessageStoreClient;
.super Ljava/lang/Object;
.source "MessageStoreClient.java"


# virtual methods
.method public abstract getBinder()Landroid/os/Binder;
.end method

.method public abstract getClientID()I
.end method

.method public abstract getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
.end method

.method public abstract getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentIMSI()Ljava/lang/String;
.end method

.method public abstract getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;
.end method

.method public abstract getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
.end method

.method public abstract getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
.end method

.method public abstract getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;
.end method

.method public abstract getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
.end method

.method public abstract getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;
.end method

.method public abstract onCreate(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V
.end method

.method public abstract onDestroy()V
.end method
