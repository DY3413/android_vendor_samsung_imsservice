.class public Lcom/sec/internal/helper/os/ServiceStateWrapper;
.super Ljava/lang/Object;
.source "ServiceStateWrapper.java"


# static fields
.field public static final NR_5G_BEARER_STATUS_ALLOCATED:I = 0x1

.field public static final NR_5G_BEARER_STATUS_MMW_ALLOCATED:I = 0x2

.field public static final NR_5G_BEARER_STATUS_NOT_ALLOCATED:I = 0x0

.field public static final ROAMING_TYPE_DOMESTIC:I = 0x2

.field public static final ROAMING_TYPE_INTERNATIONAL:I = 0x3

.field public static final ROAMING_TYPE_NOT_ROAMING:I = 0x0

.field public static final ROAMING_TYPE_UNKNOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ServiceStateWrapper"


# instance fields
.field private final mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    return-void
.end method

.method public static rilRadioTechnologyToNetworkType(I)I
    .registers 1

    .line 153
    invoke-static {p0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->describeContents()I

    move-result p0

    return p0
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 1

    .line 117
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 119
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataNetworkType()I
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p0

    return p0
.end method

.method public getDataRegState()I
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p0

    return p0
.end method

.method public getDataRoaming()Z
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    return p0
.end method

.method public getImsVoiceAvail()Z
    .registers 2

    .line 100
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 101
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 102
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public getIsEbSupported()Z
    .registers 2

    .line 109
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 110
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 111
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/VopsSupportInfo;->isEmergencyServiceSupported()Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public getIsManualSelection()Z
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result p0

    return p0
.end method

.method protected getMobileDataNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;
    .registers 3

    .line 133
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMobileDataNetworkType()I
    .registers 1

    .line 125
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 127
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getMobileDataRegState()I
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getMobileDataRegState()I

    move-result p0

    return p0
.end method

.method public getNrFrequencyRange()I
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    return p0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRoaming()Z
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    return p0
.end method

.method public getSnapshotStatus()I
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result p0

    return p0
.end method

.method public getState()I
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    return p0
.end method

.method public getVoiceNetworkType()I
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    return p0
.end method

.method public getVoiceRegState()I
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p0

    return p0
.end method

.method public getVoiceRoaming()Z
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p0

    return p0
.end method

.method public getVoiceRoamingType()I
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result p0

    return p0
.end method

.method public isPsOnlyReg()Z
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isPsOnlyReg()Z

    move-result p0

    return p0
.end method

.method public setIsManualSelection(Z)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 66
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRoaming(Z)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 42
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setState(I)V

    return-void
.end method

.method public setStateOff()V
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->setStateOff()V

    return-void
.end method

.method public setStateOutOfService()V
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 30
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
