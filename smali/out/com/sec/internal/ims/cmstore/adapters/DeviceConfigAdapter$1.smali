.class Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;->this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 38
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;->this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DEVICE_CONFIG_UPDATED received"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;->this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->parseDeviceConfig()V

    :cond_1c
    return-void
.end method
