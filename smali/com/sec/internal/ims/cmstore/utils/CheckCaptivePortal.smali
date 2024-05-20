.class public Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;
.super Ljava/lang/Object;
.source "CheckCaptivePortal.java"


# static fields
.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final WALLED_GARDEN_RETRY_COUNT:I = 0x3

.field private static final WALLED_GARDEN_RETRY_INTERVAL:I = 0xbb8

.field private static final WALLED_GARDEN_URL:Ljava/lang/String; = "http://clients3.google.com/generate_204"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWifiWorksFineWithWalledGardenUrl(Landroid/net/Network;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://clients3.google.com/generate_204"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v1, 0x2710

    .line 34
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 35
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 36
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 37
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 39
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    .line 41
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return v0

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 48
    :cond_2
    throw v0
.end method

.method public static isGoodWifi(Landroid/net/Network;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 19
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;->checkWifiWorksFineWithWalledGardenUrl(Landroid/net/Network;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xbb8

    .line 23
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;->sleepHelper(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static sleepHelper(I)V
    .locals 2

    int-to-long v0, p0

    .line 55
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Utils"

    const-string/jumbo v1, "sleepHelper"

    .line 57
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
