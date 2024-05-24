.class Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;
.super Ljava/lang/Object;
.source "ImsMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onNotifyIMSMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1208
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;->val$sessionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;->val$sessionId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->startCameraForActiveExcept(I)V

    return-void
.end method
