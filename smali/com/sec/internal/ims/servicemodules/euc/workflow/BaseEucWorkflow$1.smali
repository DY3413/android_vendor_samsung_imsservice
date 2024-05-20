.class Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;
.super Ljava/lang/Object;
.source "BaseEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->createDisplayManagerRequestCallback(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;

.field final synthetic val$eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

.field final synthetic val$eucId:Ljava/lang/String;

.field final synthetic val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

.field final synthetic val$eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V
    .locals 3

    .line 213
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$2;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType:[I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EULA is not handled here!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "Only ok button expected for notification or acknowledgment!"

    .line 228
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 231
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {p1, v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 217
    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    goto :goto_0

    .line 220
    :cond_3
    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 221
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->DECLINE:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 223
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    invoke-virtual {p1, v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->remove(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 238
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to change EUCs state in persistence for EUCR with id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to change EUCs state in persistence for EUCR with key="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 244
    :goto_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-interface {p2, p0}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->remove(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 245
    throw p1
.end method
