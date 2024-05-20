.class Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegistrationStatus"
.end annotation


# instance fields
.field mCmcRegistered:Z

.field mCrossSimRegistered:Z

.field mRcsRegistered:Z

.field mVolteRegistered:Z

.field mVowifiRegistered:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isAllRegistered()Z
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isCmcRegistered()Z
    .locals 0

    .line 331
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mCmcRegistered:Z

    return p0
.end method

.method isCrossSimRegistered()Z
    .locals 0

    .line 307
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mCrossSimRegistered:Z

    return p0
.end method

.method isRcsRegistered()Z
    .locals 0

    .line 315
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mRcsRegistered:Z

    return p0
.end method

.method isVolteRegistered()Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVolteRegistered:Z

    return p0
.end method

.method isVowifiRegistered()Z
    .locals 0

    .line 323
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVowifiRegistered:Z

    return p0
.end method

.method setCmcRegistered(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mCmcRegistered:Z

    return-void
.end method

.method setCrossSimRegistered(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mCrossSimRegistered:Z

    return-void
.end method

.method setRcsRegistered(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mRcsRegistered:Z

    return-void
.end method

.method setVolteRegistered(Z)V
    .locals 0

    .line 295
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVolteRegistered:Z

    return-void
.end method

.method setVowifiRegistered(Z)V
    .locals 0

    .line 319
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVowifiRegistered:Z

    return-void
.end method
