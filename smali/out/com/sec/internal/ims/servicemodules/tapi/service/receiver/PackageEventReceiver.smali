.class public Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/PackageEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 17
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "package:"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSessionModule()Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    move-result-object p2

    if-nez p2, :cond_22

    return-void

    :cond_22
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 26
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->needRegister(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 27
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->registerApp()V

    goto :goto_45

    :cond_34
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 30
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->needDeRegister(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 31
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->deRegisterApp()V

    :cond_45
    :goto_45
    return-void
.end method
