.class Lcom/sec/internal/google/ImsNotifier$2;
.super Ljava/lang/Object;
.source "ImsNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/google/ImsNotifier;->onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsNotifier;

.field final synthetic val$de:Lcom/sec/ims/DialogEvent;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsNotifier;Lcom/sec/ims/DialogEvent;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/sec/internal/google/ImsNotifier$2;->this$0:Lcom/sec/internal/google/ImsNotifier;

    iput-object p2, p0, Lcom/sec/internal/google/ImsNotifier$2;->val$de:Lcom/sec/ims/DialogEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier$2;->this$0:Lcom/sec/internal/google/ImsNotifier;

    invoke-static {v0}, Lcom/sec/internal/google/ImsNotifier;->-$$Nest$fgetmGoogleImsService(Lcom/sec/internal/google/ImsNotifier;)Lcom/sec/internal/google/GoogleImsService;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/google/ImsNotifier$2;->val$de:Lcom/sec/ims/DialogEvent;

    invoke-virtual {v0, p0}, Lcom/sec/internal/google/GoogleImsService;->preparePushCall(Lcom/sec/ims/DialogEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
