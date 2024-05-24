.class Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;
.super Ljava/lang/Object;
.source "KeepAliveSender.java"


# static fields
.field private static final KEEPALIVE_INTERVAL:I = 0x7d0

.field private static final KEEPALIVE_INTERVAL_CMCC:I = 0x1f40

.field private static final PERSIST_VZW_KEEPALIVE:Ljava/lang/String; = "persist.sys.ims.vzw.keepalive"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mIpAddr:Ljava/lang/String;

.field private volatile mIsRunning:Z

.field private final mLock:Ljava/lang/Object;

.field private mMno:Lcom/sec/internal/constants/Mno;

.field mPort:I

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mTask:Ljava/lang/Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$IEz_7uUnsxN7Bhfgh2YVCZ3_qfg(Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->lambda$start$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Ljava/lang/String;ILcom/sec/internal/constants/Mno;)V
    .registers 8

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 25
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 36
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 41
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    .line 42
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    .line 43
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    const-string p2, "power"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "KeepAlive"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private synthetic lambda$start$0()V
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    :try_start_2
    new-instance v2, Ljava/net/DatagramSocket;

    const v3, 0xafd8

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_a} :catch_103
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_103

    .line 83
    :try_start_a
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x4

    new-array v4, v3, [B

    .line 84
    fill-array-data v4, :array_112

    .line 88
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v5, :cond_21

    .line 89
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    :cond_21
    move v5, v0

    .line 95
    :goto_22
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v6, :cond_3e

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    new-array v9, v7, [Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v0

    sget-object v10, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v8

    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_40

    :cond_3e
    if-eqz v5, :cond_cf

    .line 96
    :cond_40
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_9e

    const-string v5, "persist.sys.ims.vzw.keepalive"

    const-string v6, ""

    .line 97
    invoke-static {v5, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 98
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeepAliveSender: isAllowedByProperty="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_cf

    .line 101
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeepAliveSender: send dummy.txt UDP to ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ..."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v5, Ljava/net/DatagramPacket;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-direct {v5, v4, v3, v1, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 104
    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_cf

    .line 108
    :cond_9e
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeepAliveSender: send dummy.txt UDP to ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ..."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v5, Ljava/net/DatagramPacket;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-direct {v5, v4, v3, v1, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 111
    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 115
    :cond_cf
    :goto_cf
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v9, v6, v0

    sget-object v9, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    aput-object v9, v6, v8

    sget-object v9, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    aput-object v9, v6, v7

    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_ec

    const-wide/16 v5, 0x1f40

    .line 118
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_f1

    :cond_ec
    const-wide/16 v5, 0x7d0

    .line 122
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 126
    :goto_f1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_f4
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f4} :catch_101
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f4} :catch_101

    .line 127
    :try_start_f4
    iget-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    if-nez v6, :cond_fa

    .line 128
    monitor-exit v5

    goto :goto_10a

    .line 130
    :cond_fa
    monitor-exit v5

    move v5, v8

    goto/16 :goto_22

    :catchall_fe
    move-exception v1

    monitor-exit v5
    :try_end_100
    .catchall {:try_start_f4 .. :try_end_100} :catchall_fe

    :try_start_100
    throw v1
    :try_end_101
    .catch Ljava/lang/InterruptedException; {:try_start_100 .. :try_end_101} :catch_101
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_101} :catch_101

    :catch_101
    move-exception v1

    goto :goto_107

    :catch_103
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 133
    :goto_107
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10a
    if-eqz v2, :cond_10f

    .line 136
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 139
    :cond_10f
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    return-void

    :array_112
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method


# virtual methods
.method public start()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: start: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    if-eqz v0, :cond_13

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v0, "KeepAliveSender: start() - already running."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const-string v0, "persist.sys.ims.blockvzwka"

    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v0, "KeepAliveSender: blocked by system properties!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_24
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_32

    .line 68
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: acquire WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_42

    const-string v0, "persist.sys.ims.vzw.keepalive"

    const-string v1, "1"

    .line 74
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    if-nez v0, :cond_5

    return-void

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: release WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 158
    :try_start_26
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 159
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_3e

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 164
    :try_start_2e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3a
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    return-void

    :catchall_3e
    move-exception p0

    .line 159
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method
