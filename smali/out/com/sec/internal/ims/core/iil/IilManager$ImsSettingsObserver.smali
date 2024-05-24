.class Lcom/sec/internal/ims/core/iil/IilManager$ImsSettingsObserver;
.super Landroid/database/ContentObserver;
.source "IilManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IilManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/iil/IilManager;Landroid/os/Handler;)V
    .registers 3

    .line 165
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$ImsSettingsObserver;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    .line 166
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    const-string p1, "ImsSettings updated"

    const-string v0, "IilManager"

    .line 171
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 174
    iget-object p2, p0, Lcom/sec/internal/ims/core/iil/IilManager$ImsSettingsObserver;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v1, p2, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    if-eq p1, v1, :cond_17

    const-string p0, "phoneId mismatch, No need to update"

    .line 175
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    const/4 p1, 0x5

    .line 179
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager$ImsSettingsObserver;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
