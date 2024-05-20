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
    .locals 0

    .line 1124
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 1120
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    return-void
.end method

.method private muteRingBackTone()V
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1152
    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->semSetVolume(F)V

    const/4 v0, 0x0

    .line 1153
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    :cond_0
    return-void
.end method

.method private declared-synchronized startRingBackTone()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "RBTHandler"

    const-string v1, "Start RBT!"

    .line 1128
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    if-eq v0, v1, :cond_0

    .line 1130
    new-instance v0, Landroid/media/ToneGenerator;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 1134
    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneType:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopRingBackTone()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "RBTHandler"

    const-string v1, "Stop RBT!"

    .line 1139
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1142
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 1145
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v0, -0x1

    .line 1146
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    .line 1147
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "RBTHandler"

    if-nez p1, :cond_0

    const-string p0, "Invalid Message"

    .line 1179
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const-string p0, "Invalid event"

    .line 1196
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1193
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->muteRingBackTone()V

    goto :goto_0

    .line 1190
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->stopRingBackTone()V

    goto :goto_0

    .line 1187
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->startRingBackTone()V

    :goto_0
    return-void
.end method

.method public isPlayingRingBackTone()Z
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized setRingBackToneData(III)V
    .locals 1

    monitor-enter p0

    .line 1158
    :try_start_0
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    .line 1159
    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    .line 1160
    iput p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneType:I

    .line 1162
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz p3, :cond_0

    const-string p3, "RBTHandler"

    const-string/jumbo v0, "setRingBackToneData stopTone!"

    .line 1163
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p3}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1165
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p3}, Landroid/media/ToneGenerator;->release()V

    .line 1168
    :cond_0
    new-instance p3, Landroid/media/ToneGenerator;

    invoke-direct {p3, p1, p2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
