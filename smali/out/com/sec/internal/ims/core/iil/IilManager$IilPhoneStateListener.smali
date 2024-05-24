.class final Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "IilManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IilPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IilManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/iil/IilManager;)V
    .registers 2

    .line 1018
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    .line 1019
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method private doUpdateFeature(I)V
    .registers 6

    .line 1045
    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v0

    if-eqz p1, :cond_52

    .line 1047
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/iil/IilManager;->-$$Nest$fgetmNetworkType(Lcom/sec/internal/ims/core/iil/IilManager;)I

    move-result v1

    if-ne v1, p1, :cond_f

    goto :goto_52

    .line 1050
    :cond_f
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v1, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1051
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_25

    .line 1052
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/iil/IilManager;->-$$Nest$fgetmNetworkClass(Lcom/sec/internal/ims/core/iil/IilManager;)I

    move-result v1

    if-eq v1, v0, :cond_34

    goto :goto_35

    .line 1055
    :cond_25
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/iil/IilManager;->-$$Nest$mdisallowReregistration(Lcom/sec/internal/ims/core/iil/IilManager;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    .line 1059
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->-$$Nest$fputmNetworkType(Lcom/sec/internal/ims/core/iil/IilManager;I)V

    .line 1060
    iget-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->-$$Nest$fputmNetworkClass(Lcom/sec/internal/ims/core/iil/IilManager;I)V

    .line 1061
    iget-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/iil/IilManager;->-$$Nest$fgetmReg(Lcom/sec/internal/ims/core/iil/IilManager;)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_52

    if-eqz v3, :cond_52

    .line 1062
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->-$$Nest$fgetmReg(Lcom/sec/internal/ims/core/iil/IilManager;)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->-$$Nest$mupdateFeature(Lcom/sec/internal/ims/core/iil/IilManager;Lcom/sec/ims/ImsRegistration;)V

    :cond_52
    :goto_52
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 6

    .line 1024
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v0, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged(): state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", networkType "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " old "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/iil/IilManager;->-$$Nest$fgetmNetworkType(Lcom/sec/internal/ims/core/iil/IilManager;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IilManager"

    invoke-static {v1, v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1026
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->doUpdateFeature(I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5

    .line 1031
    new-instance v0, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 1032
    iget-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget p1, p1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged(): data regstate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", network type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    .line 1032
    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1035
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result p1

    if-eqz p1, :cond_3f

    .line 1036
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string p1, "onServiceStateChanged(): not in Service"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1040
    :cond_3f
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result p1

    .line 1041
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->doUpdateFeature(I)V

    return-void
.end method
