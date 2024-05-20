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
.method public static synthetic $r8$lambda$Dc4yJ90VYjwPa5Cu1Lljuji6drA(Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->lambda$start$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Ljava/lang/String;ILcom/sec/internal/constants/Mno;)V
    .locals 2

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

    const/4 p2, 0x1

    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "KeepAlive"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    const v3, 0xafd8

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x4

    new-array v4, v3, [B

    const/16 v5, 0xd

    aput-byte v5, v4, v0

    const/16 v6, 0xa

    const/4 v7, 0x1

    aput-byte v6, v4, v7

    const/4 v8, 0x2

    aput-byte v5, v4, v8

    const/4 v5, 0x3

    aput-byte v6, v4, v5

    .line 88
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v6, :cond_0

    .line 89
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    :cond_0
    move v6, v0

    .line 95
    :goto_0
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    new-array v10, v8, [Lcom/sec/internal/constants/Mno;

    sget-object v11, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    aput-object v11, v10, v0

    sget-object v11, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    aput-object v11, v10, v7

    invoke-virtual {v9, v10}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    if-eqz v6, :cond_4

    .line 96
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v6, v9, :cond_3

    const-string v6, "persist.sys.ims.vzw.keepalive"

    const-string v9, ""

    .line 97
    invoke-static {v6, v9}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 98
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KeepAliveSender: isAllowedByProperty="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    .line 101
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeepAliveSender: send dummy.txt UDP to ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v6, Ljava/net/DatagramPacket;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-direct {v6, v4, v3, v1, v9}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 104
    invoke-virtual {v2, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeepAliveSender: send dummy.txt UDP to ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v6, Ljava/net/DatagramPacket;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-direct {v6, v4, v3, v1, v9}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 111
    invoke-virtual {v2, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 115
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    new-array v9, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v0

    sget-object v10, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v7

    sget-object v10, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v8

    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-wide/16 v9, 0x1f40

    .line 118
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_5
    const-wide/16 v9, 0x7d0

    .line 122
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 126
    :goto_2
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :try_start_2
    iget-boolean v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    if-nez v9, :cond_6

    .line 128
    monitor-exit v6

    goto :goto_4

    .line 130
    :cond_6
    monitor-exit v6

    move v6, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 133
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-eqz v2, :cond_7

    .line 136
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 139
    :cond_7
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: start: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v0, "KeepAliveSender: start() - already running."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "persist.sys.ims.blockvzwka"

    .line 58
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v0, "KeepAliveSender: blocked by system properties!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: acquire WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    const-string v0, "persist.sys.ims.vzw.keepalive"

    const-string v1, "1"

    .line 74
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_3
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
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: release WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 158
    :try_start_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p0

    .line 159
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
