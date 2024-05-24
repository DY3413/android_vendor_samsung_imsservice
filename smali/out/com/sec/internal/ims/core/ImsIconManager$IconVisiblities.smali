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
    .registers 1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ZZZ)V
    .registers 4

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    .line 415
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    .line 416
    iput-boolean p3, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return-void
.end method


# virtual methods
.method isShowRcsIcon()Z
    .registers 1

    .line 440
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return p0
.end method

.method isShowVolteIcon()Z
    .registers 1

    .line 424
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    return p0
.end method

.method isShowVowiFiIcon()Z
    .registers 1

    .line 432
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    return p0
.end method

.method setShowRcsIcon(Z)V
    .registers 2

    .line 436
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return-void
.end method

.method setShowVoWiFiIcon(Z)V
    .registers 2

    .line 428
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    return-void
.end method

.method setShowVolteIcon(Z)V
    .registers 2

    .line 420
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    return-void
.end method
