.class public Lcom/sec/internal/ims/imsservice/ImsServiceStub$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/ImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootCompleteReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2386
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 2388
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 2389
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2390
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ACTION_BOOT_COMPLETED received"

    invoke-static {p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_0

    const-string v0, "rcs"

    .line 2394
    invoke-static {p1, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2398
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->startNsdBind()V

    .line 2401
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2402
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->startP2pBind()V

    :cond_1
    return-void
.end method
