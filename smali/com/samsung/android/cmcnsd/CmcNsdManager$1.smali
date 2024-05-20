.class public Lcom/samsung/android/cmcnsd/CmcNsdManager$1;
.super Ljava/lang/Object;
.source "CmcNsdManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/CmcNsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected() name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {p2}, Lcom/samsung/android/cmcnsd/INsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcnsd/INsdService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$102(Lcom/samsung/android/cmcnsd/CmcNsdManager;Lcom/samsung/android/cmcnsd/INsdService;)Lcom/samsung/android/cmcnsd/INsdService;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {p1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$100(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Lcom/samsung/android/cmcnsd/INsdService;

    move-result-object p1

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {p1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected() failed to get proxy"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {p1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$100(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Lcom/samsung/android/cmcnsd/INsdService;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$200(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/cmcnsd/INsdService;->registerNetworkCallback(ILcom/samsung/android/cmcnsd/INsdNetworkCallback;)Z

    .line 67
    iget-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {p1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$300(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected exception="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected() name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$400(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V

    return-void
.end method
