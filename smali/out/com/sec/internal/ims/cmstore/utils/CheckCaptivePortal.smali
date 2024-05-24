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
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWifiWorksFineWithWalledGardenUrl(Landroid/net/Network;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    :try_start_2
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://clients3.google.com/generate_204"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_45
    .catchall {:try_start_2 .. :try_end_f} :catchall_42

    .line 35
    :try_start_f
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v2, 0x2710

    .line 36
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 37
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 38
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 39
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_25} :catch_3d
    .catchall {:try_start_f .. :try_end_25} :catchall_38

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_2a

    const/4 v0, 0x1

    .line 47
    :cond_2a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v1, :cond_37

    .line 52
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_37
    :goto_37
    return v0

    :catchall_38
    move-exception v0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_5b

    :catch_3d
    move-exception v2

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_47

    :catchall_42
    move-exception v0

    move-object p0, v1

    goto :goto_5b

    :catch_45
    move-exception v2

    move-object p0, v1

    .line 43
    :goto_47
    :try_start_47
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5a

    if-eqz v1, :cond_4f

    .line 47
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4f
    if-eqz p0, :cond_59

    .line 52
    :try_start_51
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_59
    :goto_59
    return v0

    :catchall_5a
    move-exception v0

    :goto_5b
    if-eqz v1, :cond_60

    .line 47
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_60
    if-eqz p0, :cond_6a

    .line 52
    :try_start_62
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    :cond_6a
    :goto_6a
    throw v0
.end method

.method public static isGoodWifi(Landroid/net/Network;)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-gt v1, v2, :cond_14

    .line 20
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;->checkWifiWorksFineWithWalledGardenUrl(Landroid/net/Network;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_15

    :cond_c
    const/16 v2, 0xbb8

    .line 24
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;->sleepHelper(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method private static sleepHelper(I)V
    .registers 3

    int-to-long v0, p0

    .line 64
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_e

    :catch_5
    move-exception p0

    const-string v0, "Utils"

    const-string/jumbo v1, "sleepHelper"

    .line 66
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method
