.class public Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;
.super Landroid/os/Handler;
.source "SsacManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSACController"
.end annotation


# static fields
.field private static final EVT_SSAC_BARRING:I = 0x1

.field private static final MAX_BARRING_FACTOR:I = 0x64

.field public static final STATE_BARRED:Z = true

.field public static final STATE_NOT_BARRED:Z = false


# instance fields
.field mBarredState:[Z

.field mCallType:I

.field mCallTypeName:Ljava/lang/String;

.field mFactor:[I

.field mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

.field mSsacReset:Z

.field mTime:[I


# direct methods
.method public constructor <init>(Landroid/os/Looper;ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V
    .registers 6

    .line 157
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    .line 158
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    const-string p2, "Voice Call"

    .line 160
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    goto :goto_14

    :cond_10
    const-string p2, "Video Call"

    .line 162
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    .line 164
    :goto_14
    new-array p2, p4, [Z

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    .line 165
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    .line 166
    new-array p4, p4, [I

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    .line 167
    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 168
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 p4, 0x64

    invoke-static {p2, p4}, Ljava/util/Arrays;->fill([II)V

    .line 169
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    .line 170
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 244
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: evt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsacManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_26

    goto :goto_5e

    .line 249
    :cond_26
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    const/4 v3, 0x0

    aput-boolean v3, p1, v0

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 253
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p1

    if-nez p1, :cond_3c

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    if-ne p1, v1, :cond_48

    .line 254
    :cond_3c
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 v1, 0x64

    aput v1, p1, v0

    .line 255
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aput v3, p1, v0

    .line 256
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    .line 258
    :cond_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Barring Timed out"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_5e
    return-void
.end method

.method public isAlwaysBarred(I)Z
    .registers 2

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget p0, p0, p1

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isCallBarred(I)Z
    .registers 11

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    .line 181
    :cond_8
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 182
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": isCallBarred:rand1:["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "] rand2:["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SsacManager"

    invoke-static {v6, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v7

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget v0, v0, p1

    int-to-double v7, v0

    cmpg-double v0, v2, v7

    const/4 v2, 0x0

    if-gez v0, :cond_46

    return v2

    :cond_46
    const-wide v7, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v7

    const-wide v7, 0x3fe6666666666666L    # 0.7

    add-double/2addr v4, v7

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aget v0, v0, p1

    int-to-double v7, v0

    mul-double/2addr v4, v7

    double-to-int v0, v4

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Barred for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_7a

    return v2

    .line 192
    :cond_7a
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aput-boolean v1, v3, p1

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v3, v0

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    return v1
.end method

.method public resetSSACInfo(I)V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 v1, 0x64

    aput v1, v0, p1

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aput-boolean v1, v0, p1

    const/4 v0, 0x1

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public updateSSACInfo(III)V
    .registers 10

    .line 200
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 203
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    :cond_1c
    const/16 v1, 0x64

    const-string v2, "]"

    const-string v3, "], t["

    const-string v4, "SsacManager"

    const/4 v5, 0x1

    if-eq p2, v1, :cond_7b

    if-ltz p2, :cond_37

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aput p2, v0, p1

    .line 208
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    mul-int/lit16 p3, p3, 0x3e8

    aput p3, p2, p1

    const/4 p2, 0x0

    .line 209
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    goto :goto_9a

    .line 213
    :cond_37
    sget-object v1, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_45

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_45

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_77

    :cond_45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v0, -0x1

    if-ne p2, v0, :cond_77

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Ignored updateSSACInfo : f["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    return-void

    .line 218
    :cond_77
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->resetSSACInfo(I)V

    goto :goto_9a

    .line 221
    :cond_7b
    sget-object p2, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-eq v0, p2, :cond_8e

    sget-object p2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_84

    goto :goto_8e

    .line 227
    :cond_84
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p2

    if-nez p2, :cond_9a

    .line 228
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->resetSSACInfo(I)V

    goto :goto_9a

    .line 222
    :cond_8e
    :goto_8e
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aget-boolean p2, p2, p1

    if-ne p2, v5, :cond_97

    .line 223
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    goto :goto_9a

    .line 225
    :cond_97
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->resetSSACInfo(I)V

    .line 231
    :cond_9a
    :goto_9a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": updateSSACInfo : f["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aget p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
