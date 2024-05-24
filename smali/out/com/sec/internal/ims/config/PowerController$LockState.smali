.class Lcom/sec/internal/ims/config/PowerController$LockState;
.super Ljava/lang/Object;
.source "PowerController.java"

# interfaces
.implements Lcom/sec/internal/ims/config/PowerController$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/PowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/PowerController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/PowerController;)V
    .registers 4

    .line 110
    iput-object p1, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LockState"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetmWakeLock(Lcom/sec/internal/ims/config/PowerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetmTimeout(Lcom/sec/internal/ims/config/PowerController;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method


# virtual methods
.method public declared-synchronized lock()V
    .registers 3

    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v0}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "already locked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 118
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    new-instance v1, Lcom/sec/internal/ims/config/PowerController$ReleaseState;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/PowerController$ReleaseState;-><init>(Lcom/sec/internal/ims/config/PowerController;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 123
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sleep(J)V
    .registers 8

    monitor-enter p0

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v0}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ sleep start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_26

    const-wide/16 v0, 0x64

    :goto_23
    sub-long v0, p1, v0

    goto :goto_2b

    :cond_26
    const-wide/16 v0, 0xa

    .line 128
    div-long v0, p1, v0

    goto :goto_23

    .line 129
    :goto_2b
    iget-object v2, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object v2, v2, Lcom/sec/internal/ims/config/PowerController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object v0, v0, Lcom/sec/internal/ims/config/PowerController;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 130
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController$LockState;->release()V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_64

    .line 134
    :try_start_3f
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_43
    .catchall {:try_start_3f .. :try_end_42} :catchall_64

    goto :goto_47

    :catch_43
    move-exception p1

    .line 136
    :try_start_44
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 138
    :goto_47
    iget-object p1, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object p1, p1, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    invoke-interface {p1}, Lcom/sec/internal/ims/config/PowerController$State;->lock()V

    .line 139
    iget-object p1, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object p2, p1, Lcom/sec/internal/ims/config/PowerController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p1, p1, Lcom/sec/internal/ims/config/PowerController;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 140
    iget-object p1, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "--- sleep end"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_44 .. :try_end_62} :catchall_64

    .line 141
    monitor-exit p0

    return-void

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method
