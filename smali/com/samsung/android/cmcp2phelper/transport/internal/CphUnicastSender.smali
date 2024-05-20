.class public Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;
.super Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
.source "CphUnicastSender.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mRetransmissionCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/1.3.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BII)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mTargetIP:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mPort:I

    .line 29
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mMessage:[B

    .line 30
    iput p4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLength:I

    .line 31
    iput p5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mRetransmissionCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BILandroid/os/Handler;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mTargetIP:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mPort:I

    .line 37
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mMessage:[B

    .line 38
    iput p4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLength:I

    .line 40
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mCallbackHandler:Landroid/os/Handler;

    .line 41
    iput p6, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mCallbackWhat:I

    const/4 p1, 0x5

    .line 42
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mRetransmissionCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 49
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mTargetIP:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 51
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mMessage:[B

    iget v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLength:I

    iget v5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mPort:I

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/4 v1, 0x0

    .line 53
    :goto_0
    iget v3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mRetransmissionCount:I

    if-ge v1, v3, :cond_0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[U--->]("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mTargetIP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mMessage:[B

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {p0, v3}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->print(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v3, 0xc8

    .line 59
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 61
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_0
    :goto_2
    return-void
.end method
