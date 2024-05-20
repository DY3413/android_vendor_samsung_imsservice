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
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 45
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 47
    new-array p1, p3, [Z

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    .line 48
    new-array p2, p3, [Z

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    const/4 p2, 0x0

    .line 49
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 50
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 52
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;-><init>(ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    .line 53
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;-><init>(ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    return-void
.end method

.method private reRegisterBySSAC(I)V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reRegisterBySSAC["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] : updateRegistrationBySSAC ("

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

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean p0, p0, p1

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateRegistrationBySSAC(IZ)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 131
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 133
    aput-boolean v1, v0, p1

    const-string v0, "SsacManager"

    const-string v1, "Call Ended. Now update Registration By SSAC."

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->reRegisterBySSAC(I)V

    :cond_0
    return-void
.end method

.method public isCallBarred(II)Z
    .locals 1

    .line 57
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 59
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isCallBarred(I)Z

    move-result p0

    return p0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isCallBarred(I)Z

    move-result p0

    return p0
.end method

.method public updateSSACInfo(IIIZIIZ)V
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSSACInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] : Voice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Video("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SsacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    if-eqz p4, :cond_2

    if-ne p5, v0, :cond_0

    if-nez p7, :cond_1

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p0, p1, p5, p6}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    const-string p0, "Update Video SSAC Info."

    .line 90
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p0, "Voice factor 100 with isVoiceBarred is unavailable value."

    .line 92
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_2
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p4, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    .line 97
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p3, p1, p5, p6}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    .line 99
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p3

    const/4 p4, 0x1

    if-nez p3, :cond_3

    if-nez p2, :cond_3

    const-string p2, "set regiMgr.setSSACPolicy as false."

    .line 104
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aput-boolean p4, p2, p1

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setSSACPolicy(IZ)V

    return-void

    .line 110
    :cond_3
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    if-eqz p3, :cond_4

    .line 112
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 114
    :cond_4
    sget-object p3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_6

    .line 115
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isAlwaysBarred(I)Z

    move-result p2

    .line 116
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean p5, p3, p1

    if-eq p5, p2, :cond_6

    .line 117
    aput-boolean p2, p3, p1

    .line 118
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getTelephonyCallStatus(I)I

    move-result p2

    if-nez p2, :cond_5

    .line 119
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->reRegisterBySSAC(I)V

    goto :goto_0

    :cond_5
    const-string p2, "A call is exist now. update Regi after this call terminated."

    .line 121
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    aput-boolean p4, p0, p1

    :cond_6
    :goto_0
    return-void
.end method
