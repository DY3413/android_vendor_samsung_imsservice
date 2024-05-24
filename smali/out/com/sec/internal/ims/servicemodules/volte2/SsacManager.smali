.class public Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;
.super Landroid/os/Handler;
.source "SsacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SsacManager"

.field private static final UNAVAILABE_FACTOR:I = 0x64


# instance fields
.field mIsAlwaysBarred:[Z

.field private final mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

.field private final mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

.field mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

.field needReRegiAfterCall:[Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;I)V
    .registers 5

    .line 46
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 48
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 50
    new-array p2, p4, [Z

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    .line 51
    new-array p3, p4, [Z

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    const/4 p3, 0x0

    .line 52
    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 53
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 55
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3, p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;-><init>(Landroid/os/Looper;ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    .line 56
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    const/4 p3, 0x2

    invoke-direct {p2, p1, p3, p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;-><init>(Landroid/os/Looper;ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    return-void
.end method

.method private reRegisterBySSAC(I)V
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reRegisterBySSAC : updateRegistrationBySSAC ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean v1, v1, p1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SsacManager"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean p0, p0, p1

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateRegistrationBySSAC(IZ)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1f

    .line 134
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    .line 136
    aput-boolean v1, v0, p1

    const-string v0, "SsacManager"

    const-string v1, "Call Ended. Now update Registration By SSAC."

    .line 137
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->reRegisterBySSAC(I)V

    :cond_1f
    return-void
.end method

.method public isCallBarred(II)Z
    .registers 4

    .line 60
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 62
    :cond_8
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isCallBarred(I)Z

    move-result p0

    return p0

    .line 65
    :cond_15
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isCallBarred(I)Z

    move-result p0

    return p0
.end method

.method public updateSSACInfo(ILcom/sec/internal/ims/servicemodules/volte2/SsacInfo;)V
    .registers 7

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSSACInfo : Voice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceFactor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceTime()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Video("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoFactor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SsacManager"

    .line 76
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceFactor()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_74

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->isKnownVoiceBarringType()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 91
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoFactor()I

    move-result v0

    if-ne v0, v2, :cond_5c

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->isKnownVideoBarringType()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 92
    :cond_5c
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoFactor()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoTime()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    const-string p0, "Update Video SSAC Info."

    .line 93
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6e
    const-string p0, "Voice factor 100 with isVoiceBarred is unavailable value."

    .line 95
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 99
    :cond_74
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceFactor()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceTime()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoFactor()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoTime()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_ae

    .line 104
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceFactor()I

    move-result p2

    if-nez p2, :cond_ae

    const-string/jumbo p2, "set regiMgr.setSSACPolicy as false."

    .line 107
    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aput-boolean v2, p2, p1

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setSSACPolicy(IZ)V

    return-void

    .line 113
    :cond_ae
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    if-eqz v0, :cond_c0

    .line 115
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 117
    :cond_c0
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_e7

    .line 118
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isAlwaysBarred(I)Z

    move-result p2

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean v3, v0, p1

    if-eq v3, p2, :cond_e7

    .line 120
    aput-boolean p2, v0, p1

    .line 121
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getTelephonyCallStatus(I)I

    move-result p2

    if-nez p2, :cond_de

    .line 122
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->reRegisterBySSAC(I)V

    goto :goto_e7

    :cond_de
    const-string p2, "A call is exist now. update Regi after this call terminated."

    .line 124
    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    aput-boolean v2, p0, p1

    :cond_e7
    :goto_e7
    return-void
.end method
