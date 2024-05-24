.class Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;
.super Landroid/telephony/TelephonyCallback;
.source "ImsIconManager.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyCallbackImpl"
.end annotation


# instance fields
.field private mPhoneId:I

.field final synthetic this$0:Lcom/sec/internal/ims/core/ImsIconManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;I)V
    .registers 3

    .line 151
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 152
    iput p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;ILcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;I)V

    return-void
.end method

.method private isUpdateRequires(Landroid/telephony/ServiceState;)Z
    .registers 10

    .line 166
    new-instance v0, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 167
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 168
    iget v2, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    .line 169
    iget v3, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    .line 170
    iget-boolean v4, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    .line 171
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentNetworkType(I)V

    .line 172
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentServiceState(I)V

    .line 173
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentVoiceRatType(I)V

    .line 174
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentRoamingState(Z)V

    .line 175
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    const/4 v5, 0x0

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 176
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isATTMexico()Z

    move-result p1

    if-nez p1, :cond_7f

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-nez p1, :cond_7f

    return v5

    .line 179
    :cond_7f
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    const/4 v6, 0x1

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-boolean p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    if-eq v4, p1, :cond_9a

    move p1, v6

    goto :goto_9b

    :cond_9a
    move p1, v5

    :goto_9b
    if-eqz v2, :cond_a3

    .line 181
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v4

    if-eqz v4, :cond_ab

    :cond_a3
    if-nez v2, :cond_ad

    .line 183
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_ad

    :cond_ab
    move v0, v6

    goto :goto_ae

    :cond_ad
    move v0, v5

    .line 184
    :goto_ae
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v2, v2, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v4, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_c8

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v2, v2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    if-eq v3, v2, :cond_c8

    move v2, v6

    goto :goto_c9

    :cond_c8
    move v2, v5

    :goto_c9
    if-nez v0, :cond_db

    .line 186
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->isNWTypeChangedUpdateRequires(I)Z

    move-result v0

    if-nez v0, :cond_db

    if-nez p1, :cond_db

    if-nez v2, :cond_db

    .line 187
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->isSeparatedVo5gIcon(II)Z

    move-result p0

    if-eqz p0, :cond_dc

    :cond_db
    move v5, v6

    :cond_dc
    return v5
.end method


# virtual methods
.method isImsIconSupportedNW(I)Z
    .registers 2

    .line 195
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-nez p0, :cond_d

    const/16 p0, 0x12

    if-ne p1, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method isNWTypeChangedUpdateRequires(I)Z
    .registers 3

    .line 191
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->isImsIconSupportedNW(I)Z

    move-result p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->isImsIconSupportedNW(I)Z

    move-result p0

    if-eq p1, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method isSeparatedVo5gIcon(II)Z
    .registers 7

    .line 200
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    const-string/jumbo v1, "separate_vo5g_icon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    return v2

    :cond_d
    const/16 v0, 0x12

    if-eq p1, v0, :cond_12

    goto :goto_13

    :cond_12
    move p1, p2

    .line 205
    :goto_13
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v1, p2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    if-eq v1, v0, :cond_1a

    goto :goto_1c

    :cond_1a
    iget v1, p2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    .line 207
    :goto_1c
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSeparatedVo5gIcon oldCellularNetworkType :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , newCellularNetworkType :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eq p1, v1, :cond_47

    .line 209
    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-eqz p0, :cond_47

    const/4 v2, 0x1

    :cond_47
    return v2
.end method

.method public onCallStateChanged(I)V
    .registers 6

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentPhoneState:I

    if-ne p1, v0, :cond_7

    return-void

    .line 217
    :cond_7
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call state is changed to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iput p1, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentPhoneState:I

    const/4 v0, 0x0

    if-nez p1, :cond_44

    .line 220
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    if-nez v1, :cond_3d

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    const-string v2, "hide_vowifi_icon_when_cs_call"

    .line 221
    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 222
    :cond_3d
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iput-boolean v0, v1, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 223
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_44
    if-nez p1, :cond_53

    .line 226
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager;->getDuringEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 227
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setDuringEmergencyCall(Z)V

    :cond_53
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6

    .line 157
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->isUpdateRequires(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    const-string/jumbo v1, "updateRegistrationIcon on RAT change"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_31
    return-void
.end method
