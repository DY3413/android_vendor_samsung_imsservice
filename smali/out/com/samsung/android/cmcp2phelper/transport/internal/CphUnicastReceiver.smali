.class public Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;
.super Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
.source "CphUnicastReceiver.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mRecvPort:I

.field mSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/1.3.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .registers 5

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mCallbackHandler:Landroid/os/Handler;

    .line 29
    iput p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mRecvPort:I

    .line 30
    iput-object p4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 40
    :cond_9
    :try_start_9
    iget v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mRecvPort:I

    if-gez v0, :cond_15

    .line 41
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;
    :try_end_14
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_14} :catch_bf

    goto :goto_2d

    .line 45
    :cond_15
    :try_start_15
    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mRecvPort:I

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;
    :try_end_28
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_28} :catch_29
    .catch Ljava/net/SocketException; {:try_start_15 .. :try_end_28} :catch_bf

    goto :goto_2d

    :catch_29
    move-exception v0

    .line 47
    :try_start_2a
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 51
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start UDP server : binding ip - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", binding port - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->print(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLocalBindingIP:Ljava/lang/String;

    .line 54
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_b9

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b9

    const/16 v0, 0x578

    new-array v1, v0, [B

    .line 56
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_74
    .catch Ljava/net/SocketException; {:try_start_2a .. :try_end_74} :catch_bf

    .line 58
    :try_start_74
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 60
    new-instance v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    invoke-direct {v0, v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(Ljava/net/DatagramPacket;)V

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->isValid()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[U<---]("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->print(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->handleReceivedMessage(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_ab} :catch_ac

    goto :goto_61

    :catch_ac
    move-exception v0

    .line 66
    :try_start_ad
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 67
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "socket is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_b9
    const-string v0, "Stop Unicast Reponder"

    .line 70
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->print(Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/net/SocketException; {:try_start_ad .. :try_end_be} :catch_bf

    goto :goto_cf

    :catch_bf
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 74
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SocketException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SocketException- Unicast Receiver"

    .line 75
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->print(Ljava/lang/String;)V

    :goto_cf
    return-void
.end method

.method public stop()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1e

    .line 83
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop responder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    const-wide/16 v0, 0x14

    .line 87
    :try_start_16
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-void
.end method
