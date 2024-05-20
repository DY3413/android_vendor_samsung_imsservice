.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CapabilityIntentReceiver.java"


# static fields
.field protected static final INTENT_PERIODIC_POLL_PARTIAL:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.options.poll_partial"

.field protected static final INTENT_PERIODIC_POLL_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.options.poll_timeout"

.field protected static final INTENT_THROTTLED_RETRY_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.options.sub_throttled_timeout"

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityIntentReceiver"


# instance fields
.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 30
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.internal.ims.servicemodules.options.poll_timeout"

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.internal.ims.servicemodules.options.sub_throttled_timeout"

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.internal.ims.servicemodules.options.poll_partial"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 41
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    const-string v0, "EXTRA_PHONE_ID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityIntentReceiver"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.internal.ims.servicemodules.options.poll_timeout"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 44
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 46
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.sec.internal.ims.servicemodules.options.poll_partial"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "force"

    .line 47
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 49
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.sec.internal.ims.servicemodules.options.sub_throttled_timeout"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "IS_PERIODIC"

    .line 50
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: subscription throttled timeout. isPeriodic = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_2

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 55
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 57
    :cond_3
    sget-object p1, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_0
    return-void
.end method
