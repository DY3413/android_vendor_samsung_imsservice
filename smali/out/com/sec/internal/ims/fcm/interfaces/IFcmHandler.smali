.class public interface abstract Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
.super Ljava/lang/Object;
.source "IFcmHandler.java"


# virtual methods
.method public abstract onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract onTokenRefresh(Landroid/content/Context;)V
.end method

.method public abstract registerFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V
.end method

.method public abstract unregisterFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V
.end method
