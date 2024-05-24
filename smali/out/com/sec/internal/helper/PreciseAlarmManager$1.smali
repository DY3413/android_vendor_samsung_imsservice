.class Lcom/sec/internal/helper/PreciseAlarmManager$1;
.super Ljava/lang/Object;
.source "PreciseAlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/helper/PreciseAlarmManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/PreciseAlarmManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->-$$Nest$fgetmTimers(Lcom/sec/internal/helper/PreciseAlarmManager;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_b5

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 161
    iget-object v3, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-static {v3}, Lcom/sec/internal/helper/PreciseAlarmManager;->-$$Nest$fgetmTimers(Lcom/sec/internal/helper/PreciseAlarmManager;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 162
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/helper/DelayedMessage;

    .line 165
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object v5

    const-string v6, "PreciseAlarmManager"

    if-eqz v5, :cond_9a

    .line 166
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v7

    if-nez v7, :cond_35

    goto :goto_9a

    .line 172
    :cond_35
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getTimeout()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_a4

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expiring message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getTimeout()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v4, v4, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v7, 0x2710

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 177
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 178
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remaining timers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-static {v5}, Lcom/sec/internal/helper/PreciseAlarmManager;->-$$Nest$fgetmTimers(Lcom/sec/internal/helper/PreciseAlarmManager;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_9a
    :goto_9a
    const-string v4, "message is wrong do not handle"

    .line 167
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1a

    .line 184
    :cond_a4
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->-$$Nest$fgetmTimers(Lcom/sec/internal/helper/PreciseAlarmManager;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    if-eq v1, v0, :cond_b5

    .line 187
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->-$$Nest$mregisterAlarmManager(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    :cond_b5
    const-wide/16 v0, 0xfa

    .line 194
    :try_start_b7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ba
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_ba} :catch_bc

    goto/16 :goto_0

    :catch_bc
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
