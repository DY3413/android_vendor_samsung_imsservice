.class Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;
.super Landroid/database/ContentObserver;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsServiceSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;Landroid/os/Handler;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    .line 179
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    const-string p1, "SimManager"

    const-string v0, "ImsServiceSwitch updated."

    .line 184
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 188
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p2

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v0

    if-eq p2, v0, :cond_0

    const-string p0, "phoneId mismatch, No need to update"

    .line 190
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 p1, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
