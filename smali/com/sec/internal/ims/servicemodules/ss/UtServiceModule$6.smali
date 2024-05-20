.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;
.super Ljava/lang/Object;
.source "UtServiceModule.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0

    .line 1548
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "UtServiceModule"

    const-string v0, "connected"

    .line 1551
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fputmSoftphoneService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)V

    .line 1553
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->connected()V

    .line 1554
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fputmSoftphoneBound(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Z)V

    .line 1555
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Softphone Service bind"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetmSoftphoneBound(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "UtServiceModule"

    const-string v0, "Disconnected"

    .line 1560
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fputmSoftphoneService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)V

    return-void
.end method
