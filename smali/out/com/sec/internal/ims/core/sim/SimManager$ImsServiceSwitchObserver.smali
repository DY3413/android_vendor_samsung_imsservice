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
    .registers 3

    .line 271
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    .line 272
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 277
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result p1

    const-string v0, "ImsServiceSwitch updated."

    const-string v1, "SimManager"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_35

    .line 281
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 282
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result p2

    if-eq p1, p2, :cond_27

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result p0

    const-string p1, "phoneId mismatch, No need to update"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 286
    :cond_27
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 p2, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_35
    return-void
.end method
