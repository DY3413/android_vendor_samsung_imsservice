.class Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;
.super Ljava/lang/Object;
.source "UtStateMachine.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .registers 2

    .line 2219
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .registers 3

    .line 2222
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .registers 5

    .line 2228
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/internal/ims/gba/GbaException;

    if-eqz v0, :cond_17

    .line 2229
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/gba/GbaException;

    .line 2230
    invoke-virtual {v0}, Lcom/sec/internal/ims/gba/GbaException;->getCode()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/16 v0, 0x3f7

    .line 2235
    :goto_19
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method
