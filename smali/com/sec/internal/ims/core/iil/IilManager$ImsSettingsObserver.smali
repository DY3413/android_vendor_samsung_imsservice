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
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$ImsSettingsObserver;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    .line 160
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "IilManager"

    const-string p2, "ImsSettings updated"

    .line 165
    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$ImsSettingsObserver;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager$ImsSettingsObserver;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
