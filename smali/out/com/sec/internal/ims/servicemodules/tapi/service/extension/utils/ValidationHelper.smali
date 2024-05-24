.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;
.super Ljava/lang/Object;
.source "ValidationHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2hex(B)[C
    .registers 5

    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 p0, p0, 0xf

    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    const-string v3, "0123456789ABCDEF"

    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v1, v2

    const/4 v0, 0x1

    invoke-virtual {v3, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v1, v0

    return-object v1
.end method

.method public static checkKeyLength(Ljava/security/PublicKey;)Z
    .registers 2

    .line 84
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_14

    .line 85
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v0, 0x800

    if-lt p0, v0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFingerPrint(Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 2

    .line 38
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 39
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_9
    const-string p0, "X509"

    .line 42
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 43
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_15
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/4 p0, 0x0

    .line 48
    :goto_1b
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->loadFingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hash([B)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "SHA-224"

    .line 27
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 29
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const/16 p0, 0x2b

    const/16 v1, 0x2d

    .line 30
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "="

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isContained([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 74
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_11

    aget-object v3, p0, v2

    .line 75
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    return v1

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static isTapiAuthorisationSupports()Z
    .registers 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method private static loadFingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [B
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_3} :catch_3f

    :try_start_3
    const-string v2, "SHA-1"

    .line 56
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_11
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_11} :catch_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_11} :catch_3f

    goto :goto_16

    :catch_12
    move-exception p0

    .line 58
    :try_start_13
    invoke-virtual {p0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    .line 60
    :goto_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_1e
    if-ge v0, v2, :cond_31

    .line 63
    aget-byte v3, v1, v0

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->byte2hex(B)[C

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 64
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 66
    :cond_31
    aget-byte v0, v1, v2

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->byte2hex(B)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_3e} :catch_3f

    return-object p0

    :catch_3f
    const/4 p0, 0x0

    return-object p0
.end method
