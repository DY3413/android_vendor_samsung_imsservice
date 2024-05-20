.class public Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallProfileBuilder;
.super Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
.source "IncomingCallProfileBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0
.end method

.method public setCmcDeviceId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 0

    .line 79
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getCmcDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p3, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDeviceId(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setCmcEdCallSlot(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcEdCallSlot(I)V

    return-object p0
.end method

.method public setComposerData(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 2

    .line 63
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getComposerData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getComposerData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallProfileBuilder"

    const-string v1, "setComposerData: Setting composer data incoming flow"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getComposerData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setComposerData(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public setDisplayName(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 2

    .line 17
    sget-object v0, Lcom/sec/internal/constants/Mno;->AVEA_TURKEY:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_6

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_6

    sget-object v0, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_6

    sget-object v0, Lcom/sec/internal/constants/Mno;->GLOBE_PH:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_6

    .line 18
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_6

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELENOR_MM:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_6

    sget-object v0, Lcom/sec/internal/constants/Mno;->UMNIAH_JO:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 20
    sget-object v0, Lcom/sec/internal/constants/Mno;->DU_UAE:Lcom/sec/internal/constants/Mno;

    const-string v1, "CallProfileBuilder"

    if-eq p2, v0, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\\+?[0-9\\-]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onImsIncomingCallEvent: displayName match with phonenumber format, set as DialingNumber"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 24
    sget-object p3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p2, p3, :cond_0

    sget-object p3, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_1

    .line 25
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 27
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_2
    sget-object p3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq p2, p3, :cond_3

    sget-object p3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_4

    :cond_3
    const-string p3, "\\\\"

    const-string v0, "\\"

    .line 30
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "\\\""

    const-string v0, "\""

    .line 31
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 33
    :cond_4
    sget-object p3, Lcom/sec/internal/constants/Mno;->GRAMEENPHONE:Lcom/sec/internal/constants/Mno;

    if-eq p2, p3, :cond_5

    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onImsIncomingCallEvent: displayName is different with phone number, so setting extra mLetteringText "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 34
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p3, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 39
    :cond_5
    sget-object p3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_6

    const-string p2, "RESTRICTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onImsIncomingCallEvent: set displayName to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", dialNumber = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 42
    invoke-virtual {p3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 40
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-object p0
.end method

.method public setEchoCallId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 0

    .line 52
    sget-object p1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p1, :cond_1

    .line 53
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get echo call id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CallProfileBuilder"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setEchoCallId(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method
