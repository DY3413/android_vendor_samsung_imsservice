.class public Lcom/sec/internal/ims/fcm/FcmInstanceIdService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "FcmInstanceIdService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lcom/sec/internal/ims/fcm/FcmInstanceIdService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/fcm/FcmInstanceIdService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .registers 3

    .line 15
    sget-object v0, Lcom/sec/internal/ims/fcm/FcmInstanceIdService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTokenRefresh:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;->onTokenRefresh(Landroid/content/Context;)V

    return-void
.end method
