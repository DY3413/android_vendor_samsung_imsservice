.class Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2$1;
.super Ljava/lang/Object;
.source "DeviceLocale.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;Ljava/util/Locale;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2$1;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;->val$callback:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2$1;->val$locale:Ljava/util/Locale;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;->onResult(Ljava/util/Locale;)V

    return-void
.end method
