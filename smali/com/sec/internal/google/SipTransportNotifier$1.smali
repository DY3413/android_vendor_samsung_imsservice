.class Lcom/sec/internal/google/SipTransportNotifier$1;
.super Landroid/os/Handler;
.source "SipTransportNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/google/SipTransportNotifier;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/SipTransportNotifier;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/SipTransportNotifier;Landroid/os/Looper;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$1;->this$0:Lcom/sec/internal/google/SipTransportNotifier;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 81
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$1;->this$0:Lcom/sec/internal/google/SipTransportNotifier;

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v1, "phoneId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rawContents"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/sec/internal/google/SipTransportNotifier;->onSipMessageEvent(IILjava/lang/String;[B)V

    return-void
.end method
