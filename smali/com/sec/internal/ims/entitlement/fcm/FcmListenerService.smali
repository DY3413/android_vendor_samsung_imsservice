.class public Lcom/sec/internal/ims/entitlement/fcm/FcmListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FcmListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;->onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
