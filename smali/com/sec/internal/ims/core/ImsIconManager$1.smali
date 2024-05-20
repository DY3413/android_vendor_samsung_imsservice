.class Lcom/sec/internal/ims/core/ImsIconManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/ImsIconManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method isImsIconSupportedNW(I)Z
    .locals 0

    .line 1101
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x12

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isNWTypeChangedUpdateRequires(I)Z
    .locals 1

    .line 1106
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager$1;->isImsIconSupportedNW(I)Z

    move-result p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager$1;->isImsIconSupportedNW(I)Z

    move-result p0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSeparatedVo5gIcon(I)Z
    .locals 5

    .line 1110
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "separate_vo5g_icon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 1114
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v1, v1, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSeparatedVo5gIcon oldNetworkType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , currentNetworkType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v4, v4, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xd

    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    .line 1115
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v3, v3, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    if-eq v3, v0, :cond_2

    :cond_1
    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    if-ne p0, v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method isUpdateRequires(Landroid/telephony/ServiceState;)Z
    .locals 10

    .line 1120
    new-instance v0, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 1121
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 1122
    iget v2, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    .line 1123
    iget v3, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    .line 1124
    iget-boolean v4, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    .line 1125
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentNetworkType(I)V

    .line 1126
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentServiceState(I)V

    .line 1127
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentVoiceRatType(I)V

    .line 1128
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentRoamingState(Z)V

    .line 1130
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x2

    new-array v6, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {p1, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-boolean p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    if-eq v4, p1, :cond_0

    move p1, v9

    goto :goto_0

    :cond_0
    move p1, v8

    :goto_0
    if-eqz v2, :cond_1

    .line 1132
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-nez v2, :cond_3

    .line 1134
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v9

    goto :goto_1

    :cond_3
    move v0, v8

    .line 1135
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v2, v2, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    new-array v4, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v8

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v9

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v2, v2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    if-eq v3, v2, :cond_4

    move v2, v9

    goto :goto_2

    :cond_4
    move v2, v8

    :goto_2
    if-nez v0, :cond_5

    .line 1137
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$1;->isNWTypeChangedUpdateRequires(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    if-nez v2, :cond_5

    .line 1138
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$1;->isSeparatedVo5gIcon(I)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v8, v9

    :cond_6
    return v8
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .line 1083
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget p2, p2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentPhoneState:I

    if-ne p1, p2, :cond_0

    return-void

    .line 1086
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call state is changed to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1087
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iput p1, p2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentPhoneState:I

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 1089
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "hide_vowifi_icon_when_cs_call"

    .line 1090
    invoke-static {v0, v1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iput-boolean p2, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 1092
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    :cond_2
    if-nez p1, :cond_3

    .line 1095
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager;->getDuringEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1096
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->setDuringEmergencyCall(Z)V

    :cond_3
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    .line 1143
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v1, v1, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1144
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager$1;->isUpdateRequires(Landroid/telephony/ServiceState;)Z

    move-result p1

    .line 1145
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isATTMexico()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1147
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v0, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1148
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->isSuspended(Landroid/net/NetworkInfo;)Z

    move-result p1

    .line 1149
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v1, v1, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v2, "updateRegistrationIcon on RAT change"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1154
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1155
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    :cond_2
    return-void
.end method
