.class final Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;
.super Ljava/lang/Object;
.source "ImsServiceStub.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/ImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field final mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2417
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2418
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->mListener:Landroid/os/IInterface;

    .line 2419
    iput-object p3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->mToken:Ljava/lang/String;

    .line 2421
    :try_start_9
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 2429
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->reset()V

    .line 2430
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmListenerTokenMap(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->mToken:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected reset()V
    .registers 3

    .line 2435
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->mListener:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
