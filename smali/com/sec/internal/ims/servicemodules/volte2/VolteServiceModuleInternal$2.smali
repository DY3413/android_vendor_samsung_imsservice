.class Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;
.super Landroid/content/BroadcastReceiver;
.source "VolteServiceModuleInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 343
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "com.samsung.intent.action.ACTION_TELEPHONY_NOT_RESPONDING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p2, "receive INTENT_ACTION_TELEPHONY_NOT_RESPONDING"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->-$$Nest$monTelephonyNotResponding(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    :goto_0
    return-void
.end method
