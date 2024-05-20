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
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->-$$Nest$fgetmTimers(Lcom/sec/internal/helper/PreciseAlarmManager;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 159
    iget-object v3, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-static {v3}, Lcom/sec/internal/helper/PreciseAlarmManager;->-$$Nest$fgetmTimers(Lcom/sec/internal/helper/PreciseAlarmManager;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 160
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/helper/DelayedMessage;

    .line 163
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object v5

    const-string v6, "PreciseAlarmManager"

    if-eqz v5, :cond_1

    .line 164
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getTimeout()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_2

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expiring message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getTimeout()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v4, v4, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v7, 0x2710

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 175
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 176
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remaining timers "

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

    goto :goto_1

    :cond_1
    :goto_2
    const-string v4, "message is wrong do not handle"

    .line 165
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->-$$Nest$fgetmTimers(Lcom/sec/internal/helper/PreciseAlarmManager;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->-$$Nest$mregisterAlarmManager(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    :cond_3
    const-wide/16 v0, 0xfa

    .line 192
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
