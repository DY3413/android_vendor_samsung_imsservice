.class Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/ImsServiceStub;
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

    .line 227
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 233
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 235
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get currentPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: MessageApplication is changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->handleEventDefaultAppChanged()V

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmConfigModule(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmConfigModule(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/ConfigModule;->onDefaultSmsPackageChanged()V

    .line 247
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 249
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->handleEventDefaultAppChanged()V

    :cond_2
    return-void
.end method
