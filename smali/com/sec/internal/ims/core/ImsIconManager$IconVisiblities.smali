.class Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconVisiblities"
.end annotation


# instance fields
.field mShowRcsIcon:Z

.field mShowVoWiFiIcon:Z

.field mShowVolteIcon:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isShowRcsIcon()Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return p0
.end method

.method isShowVolteIcon()Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    return p0
.end method

.method isShowVowiFiIcon()Z
    .locals 0

    .line 272
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    return p0
.end method

.method setShowRcsIcon(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return-void
.end method

.method setShowVoWiFiIcon(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    return-void
.end method

.method setShowVolteIcon(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    return-void
.end method
