.class Lcom/sec/internal/ims/core/GeolocationController$IntentListener;
.super Ljava/lang/Object;
.source "GeolocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/GeolocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentListener"
.end annotation


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/sec/internal/ims/core/GeolocationController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmReceiver(Lcom/sec/internal/ims/core/GeolocationController$IntentListener;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minit(Lcom/sec/internal/ims/core/GeolocationController$IntentListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->init()V

    return-void
.end method

.method private constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    new-instance p1, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;-><init>(Lcom/sec/internal/ims/core/GeolocationController$IntentListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;Lcom/sec/internal/ims/core/GeolocationController$IntentListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;-><init>(Lcom/sec/internal/ims/core/GeolocationController;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 707
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.epdg.EPDG_SSID_CHANGED"

    .line 708
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.internal.ims.imsservice.periodic_lu"

    .line 709
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.location.PROVIDERS_CHANGED"

    .line 710
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    .line 711
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v1}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/GeolocationController;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
