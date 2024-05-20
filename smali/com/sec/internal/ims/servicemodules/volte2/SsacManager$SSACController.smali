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
.method public constructor <init>(ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V
    .locals 2

    .line 153
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    .line 154
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallType:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "Voice Call"

    .line 156
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Video Call"

    .line 158
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    .line 160
    :goto_0
    new-array p1, p3, [Z

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    .line 161
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    .line 162
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    .line 163
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 164
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 p3, 0x64

    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([II)V

    .line 165
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 166
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SsacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    const/4 v3, 0x0

    aput-boolean v3, v0, p1

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 253
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    .line 258
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    if-ne v0, v2, :cond_3

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 v2, 0x64

    aput v2, v0, p1

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aput v3, v0, p1

    .line 261
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    .line 263
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Barring Timed out"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isAlwaysBarred(I)Z
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCallBarred(I)Z
    .locals 12

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 177
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 178
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: isCallBarred:rand1:["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, "] rand2:["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "SsacManager"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget v0, v0, p1

    int-to-double v8, v0

    cmpg-double v0, v2, v8

    const/4 v2, 0x0

    if-gez v0, :cond_1

    return v2

    :cond_1
    const-wide v8, 0x3fe6666666666666L    # 0.7

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aget v0, v0, p1

    int-to-double v8, v0

    mul-double/2addr v4, v8

    double-to-int v0, v4

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: Barred for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    return v2

    .line 190
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aput-boolean v1, v3, p1

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 192
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    return v1
.end method

.method public resetSSACInfo(I)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 v1, 0x64

    aput v1, v0, p1

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aput-boolean v1, v0, p1

    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public updateSSACInfo(III)V
    .locals 6

    .line 198
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    :cond_0
    const/16 v1, 0x64

    const-string v2, "]"

    const-string v3, "], t["

    const-string v4, "SsacManager"

    const/4 v5, 0x1

    if-eq p2, v1, :cond_4

    if-ltz p2, :cond_1

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aput p2, v0, p1

    .line 206
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aput p3, p2, p1

    const/4 p2, 0x0

    .line 207
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    goto/16 :goto_1

    .line 211
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]: Ignored updateSSACInfo : f["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 216
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->resetSSACInfo(I)V

    goto :goto_1

    .line 219
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    .line 221
    sget-object p2, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-eq v0, p2, :cond_6

    sget-object p2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_5

    goto :goto_0

    .line 227
    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p2

    if-nez p2, :cond_8

    .line 228
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->resetSSACInfo(I)V

    goto :goto_1

    .line 222
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aget-boolean p2, p2, p1

    if-ne p2, v5, :cond_7

    .line 223
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    goto :goto_1

    .line 225
    :cond_7
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->resetSSACInfo(I)V

    .line 231
    :cond_8
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " updateSSACInfo["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] : f["

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

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
