.class Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;
.super Ljava/lang/Object;
.source "RcsUriProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->initCapabilityService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "RcsUriProvider"

    const-string v0, "Connected."

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;

    invoke-static {p2}, Lcom/sec/ims/options/ICapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "RcsUriProvider"

    const-string v0, "Disconnected."

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method
