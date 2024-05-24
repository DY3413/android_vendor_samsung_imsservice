.class Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;
.super Ljava/lang/Object;
.source "CapabilityStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SequenceUpdater"
.end annotation


# instance fields
.field operationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

.field timeout:Z


# direct methods
.method public static synthetic $r8$lambda$sV55tUvwzrJJ1YrXeZiHdThiUl4(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->lambda$tryApplybatch$0()V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)V
    .registers 2

    .line 1186
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1187
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->timeout:Z

    .line 1188
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic lambda$tryApplybatch$0()V
    .registers 4

    .line 1222
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 1223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryApplybatch: timeout, try remainder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1224
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->timeout:Z

    .line 1225
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->-$$Nest$fgetmUpdater(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryApplybatch()V

    :cond_35
    return-void
.end method


# virtual methods
.method tryApplybatch()V
    .registers 7

    const-string v0, ", size = "

    .line 1198
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_10

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->timeout:Z

    if-eqz v1, :cond_12c

    .line 1199
    :cond_10
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryApplybatch: try size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x12040003

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1202
    :try_start_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.android.contacts"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryApplybatch: authority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_8f} :catch_120
    .catch Landroid/content/OperationApplicationException; {:try_start_4e .. :try_end_8f} :catch_120
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_8f} :catch_120
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_8f} :catch_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_8f} :catch_91

    goto/16 :goto_124

    :catch_91
    move-exception v1

    .line 1213
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1214
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->-$$Nest$fgetmEventLog(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException in tryApplybatch userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x12040001

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_124

    :catch_d9
    move-exception v1

    .line 1209
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1210
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->-$$Nest$fgetmEventLog(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException in tryApplybatch userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x12040000

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_124

    :catch_120
    move-exception v0

    .line 1207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1217
    :goto_124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1218
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->timeout:Z

    .line 1220
    :cond_12c
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_144

    .line 1221
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_144
    return-void
.end method

.method tryPut(Landroid/content/ContentProviderOperation;)V
    .registers 4

    .line 1191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1192
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 1194
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryApplybatch()V

    return-void

    :catchall_d
    move-exception p0

    .line 1193
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method
