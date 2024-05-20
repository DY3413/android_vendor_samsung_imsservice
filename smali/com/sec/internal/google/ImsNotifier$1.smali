.class Lcom/sec/internal/google/ImsNotifier$1;
.super Ljava/lang/Object;
.source "ImsNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/google/ImsNotifier;->onP2pRegCompleteEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsNotifier;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsNotifier;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/sec/internal/google/ImsNotifier$1;->this$0:Lcom/sec/internal/google/ImsNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 274
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsNotifier$1;->this$0:Lcom/sec/internal/google/ImsNotifier;

    invoke-static {p0}, Lcom/sec/internal/google/ImsNotifier;->-$$Nest$fgetmGoogleImsService(Lcom/sec/internal/google/ImsNotifier;)Lcom/sec/internal/google/GoogleImsService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->getCmcImsServiceUtil()Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->createP2pCallSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
