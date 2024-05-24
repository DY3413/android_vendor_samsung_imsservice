.class Lcom/sec/internal/helper/HttpRequest$2;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/helper/HttpRequest;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 7

    .line 337
    sget-object p0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    const/4 v0, 0x0

    .line 340
    :try_start_3
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 341
    array-length v1, p2
    :try_end_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_8} :catch_1a

    move v2, v0

    :goto_9
    if-ge v0, v1, :cond_22

    :try_start_b
    aget-object v3, p2, v0

    .line 342
    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, v3}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_13} :catch_19

    if-eqz v2, :cond_16

    goto :goto_22

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :catch_19
    move v0, v2

    :catch_1a
    const-string p0, "HttpRequest"

    const-string p1, "SSL Exception with HostNameVerify Fail"

    .line 346
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :cond_22
    :goto_22
    return v2
.end method
