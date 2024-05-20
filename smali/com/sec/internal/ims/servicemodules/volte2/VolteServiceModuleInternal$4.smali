.class Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$4;
.super Landroid/content/BroadcastReceiver;
.source "VolteServiceModuleInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerMissedSmsReceiver(ZI)V
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

    .line 2042
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$4;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 2045
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2046
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "receive android.provider.Telephony.SMS_RECEIVED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$4;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->-$$Nest$mhandleMissedCallSms(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
