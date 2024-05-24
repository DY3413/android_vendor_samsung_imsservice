.class Lcom/sec/internal/google/SecImsNotifier$2;
.super Ljava/lang/Object;
.source "SecImsNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/google/SecImsNotifier;->onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/SecImsNotifier;

.field final synthetic val$de:Lcom/sec/ims/DialogEvent;

.field final synthetic val$mmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/SecImsNotifier;Lcom/sec/internal/imsphone/MmTelFeatureImpl;Lcom/sec/ims/DialogEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 467
    iput-object p1, p0, Lcom/sec/internal/google/SecImsNotifier$2;->this$0:Lcom/sec/internal/google/SecImsNotifier;

    iput-object p2, p0, Lcom/sec/internal/google/SecImsNotifier$2;->val$mmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iput-object p3, p0, Lcom/sec/internal/google/SecImsNotifier$2;->val$de:Lcom/sec/ims/DialogEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier$2;->val$mmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier$2;->val$de:Lcom/sec/ims/DialogEvent;

    invoke-virtual {v0, p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->preparePushCall(Lcom/sec/ims/DialogEvent;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
