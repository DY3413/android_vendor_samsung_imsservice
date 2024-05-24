.class Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;
.super Landroid/os/Handler;
.source "ResipMediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingBackToneHandler"
.end annotation


# static fields
.field public static final MUTE_RINGBACK_TONE:I = 0x3

.field public static final START_RINGBACK_TONE:I = 0x1

.field public static final STOP_RINGBACK_TONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RBTHandler"


# instance fields
.field private mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneType:I

.field private mVolume:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1127
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 1123
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    return-void
.end method

.method private declared-synchronized muteRingBackTone()V
    .registers 3

    monitor-enter p0

    .line 1154
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 1155
    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->semSetVolume(F)V

    const/4 v0, 0x0

    .line 1156
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 1158
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startRingBackTone()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "RBTHandler"

    const-string v1, "Start RBT!"

    .line 1131
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_20

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    if-eq v0, v1, :cond_20

    .line 1133
    new-instance v0, Landroid/media/ToneGenerator;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1136
    :cond_20
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_29

    .line 1137
    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneType:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 1139
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopRingBackTone()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "RBTHandler"

    const-string v1, "Stop RBT!"

    .line 1142
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_14

    .line 1144
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1145
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    :cond_14
    const/4 v0, 0x0

    .line 1148
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v0, -0x1

    .line 1149
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    .line 1150
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 1151
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const-string v0, "RBTHandler"

    if-nez p1, :cond_a

    const-string p0, "Invalid Message"

    .line 1182
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1186
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_39

    const/4 v1, 0x2

    if-eq p1, v1, :cond_35

    const/4 v1, 0x3

    if-eq p1, v1, :cond_31

    const-string p0, "Invalid event"

    .line 1199
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1196
    :cond_31
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->muteRingBackTone()V

    goto :goto_3c

    .line 1193
    :cond_35
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->stopRingBackTone()V

    goto :goto_3c

    .line 1190
    :cond_39
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->startRingBackTone()V

    :goto_3c
    return-void
.end method

.method public declared-synchronized isPlayingRingBackTone()Z
    .registers 2

    monitor-enter p0

    .line 1176
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRingBackToneData(III)V
    .registers 5

    monitor-enter p0

    .line 1161
    :try_start_1
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    .line 1162
    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    .line 1163
    iput p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneType:I

    .line 1165
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz p3, :cond_1d

    const-string p3, "RBTHandler"

    const-string/jumbo v0, "setRingBackToneData stopTone!"

    .line 1166
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p3}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1168
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p3}, Landroid/media/ToneGenerator;->release()V

    .line 1171
    :cond_1d
    new-instance p3, Landroid/media/ToneGenerator;

    invoke-direct {p3, p1, p2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 1172
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method
