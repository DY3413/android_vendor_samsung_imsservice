.class public Lcom/sec/internal/helper/os/SystemUtil;
.super Ljava/lang/Object;
.source "SystemUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SystemUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z
    .registers 2

    const/16 v0, 0x200

    .line 21
    invoke-virtual {p0, v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x400

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static verifyCerts([Ljava/security/cert/X509Certificate;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "X509"

    .line 28
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 31
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 32
    aget-object v1, v1, v0

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "RSA"

    .line 34
    invoke-interface {v1, p0, v2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_18} :catch_1a
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_18} :catch_1a
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception p0

    const-string v1, "SystemUtil"

    const-string v2, "Verification failed"

    .line 37
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
