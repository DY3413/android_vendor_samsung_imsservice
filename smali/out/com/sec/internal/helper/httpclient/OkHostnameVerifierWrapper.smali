.class public Lcom/sec/internal/helper/httpclient/OkHostnameVerifierWrapper;
.super Ljava/lang/Object;
.source "OkHostnameVerifierWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 4

    const-class v0, Lcom/sec/internal/helper/httpclient/OkHostnameVerifierWrapper;

    monitor-enter v0

    .line 9
    :try_start_3
    sget-object v1, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {v1, p0, p1}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method
