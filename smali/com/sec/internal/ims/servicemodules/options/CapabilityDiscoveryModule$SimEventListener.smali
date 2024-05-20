.class Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;
.super Ljava/lang/Object;
.source "CapabilityDiscoveryModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 0

    .line 1326
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(IZ)V
    .locals 6

    .line 1333
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1334
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    :goto_0
    const-string v1, ""

    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_1

    .line 1335
    :cond_1
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p2

    .line 1337
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capdiscovery_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1338
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "imsi"

    .line 1339
    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1341
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CapabilityDiscModule"

    if-nez v1, :cond_2

    const-string v1, "imsi changed"

    .line 1342
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 1344
    invoke-interface {v3, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string p2, "SimEventListener,onReady,EVT_SYNC_CONTACT"

    .line 1347
    invoke-static {v2, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1348
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1350
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    invoke-static {p2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fputmAvailablePhoneId(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)V

    .line 1351
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmAvailablePhoneId(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p2, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fputmAvailablePhoneId(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)V

    .line 1353
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmAvailablePhoneId(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p2

    if-eq p2, p1, :cond_4

    const-string p0, "SimEventListener : contact sync of opposite sim is blocked."

    .line 1354
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1358
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
