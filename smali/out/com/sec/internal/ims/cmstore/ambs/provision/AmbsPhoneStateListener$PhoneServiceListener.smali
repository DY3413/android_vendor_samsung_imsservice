.class public Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;
.super Landroid/telephony/TelephonyCallback;
.source "AmbsPhoneStateListener.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5

    .line 62
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mZCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->-$$Nest$fgetmZcodeRequested(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->-$$Nest$fgetmSlotId(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Landroid/content/Context;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 p1, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    move p1, v1

    :goto_51
    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->-$$Nest$fputmIsPhoneServiceReady(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;Z)V

    .line 66
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->-$$Nest$fgetmIsPhoneServiceReady(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Z

    move-result p1

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->-$$Nest$fgetmZcodeRequested(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Z

    move-result p1

    if-nez p1, :cond_78

    .line 67
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->-$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-static {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->-$$Nest$fputmZcodeRequested(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;Z)V

    :cond_78
    return-void
.end method
