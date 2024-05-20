.class Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerPackageManagerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 420
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "package:"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.samsung.ims.smk"

    .line 427
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    if-eqz p2, :cond_3

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 435
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$mgetSmkVersion(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/lang/String;

    move-result-object p1

    .line 436
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$misPreloadedSmk(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 437
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$mstartDeviceConfigService(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    .line 440
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$mwriteSmkVerData(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p2, "com.samsung.android.messaging"

    .line 446
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 450
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 451
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 452
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "registerPackageManagerReceiver: notify to CapaModule"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->onPackageUpdated(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "registerPackageManagerReceiver:CapaModule not available"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
