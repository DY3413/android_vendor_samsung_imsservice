.class Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;
.super Ljava/lang/Object;
.source "EucStoreAndForward.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->createEUCStoreAndForwardResponseData(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

.field final synthetic val$callback:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

.field final synthetic val$eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

.field final synthetic val$pin:Ljava/lang/String;

.field final synthetic val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

.field final synthetic val$responseToWorkflowHandle:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->this$0:Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->val$eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->val$pin:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->val$callback:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->val$responseToWorkflowHandle:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->val$callback:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    return-object p0
.end method

.method public getEUCData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->val$eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    return-object p0
.end method

.method public getPIN()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->val$pin:Ljava/lang/String;

    return-object p0
.end method

.method public getResponse()Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    return-object p0
.end method

.method public getResponseToWorkflowHandle()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;->val$responseToWorkflowHandle:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    return-object p0
.end method
