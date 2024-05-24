.class public Lcom/sec/internal/log/EncryptedLogger;
.super Ljava/lang/Object;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;
    }
.end annotation


# static fields
.field private static final B64PublicKey:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4HnSCdRy3WviYMvfRDtEcLAQU3Mi3et4f9W0ivmrMc1B+5LUEoWbrb6Rb5IKf7BI7qRflHKOfn1a9R1pYEBaBnrNrQHuIOhG4b3zYkAU+i093wKtE/dLvpa+NOEAfn/HMO0qVdRjdVs9FaJWYbjRNeiZC3PIX8bLFwqgOLwe70HOi9V7vcrrUyhJTMfXz77Zm1bbCMtU2R7UJUnI0b2fQyKdIhYgZiKChmfHH395939x2yQd8ZFYPGbmB+Zq4mCivEZSSaNZ6h9r6YYdoFSmgLVM1upBvt3kEpOE91TWbtIS4nLBWvLIfZTW4MA77BltW7mtkO61ZepLqkdj0eFoXQIDAQAB"

.field private static ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD:I = 0x0

.field private static ENCRYPTED_LOGGER_LINE_MAX_PAYLOAD:I = 0x640

.field private static final KEY_POSTFIX:Ljava/lang/String; = "\u205d\u275c"

.field private static final KEY_PREFIX:Ljava/lang/String; = "\u275b\u205d"

.field private static final LOG_MIDFIX:Ljava/lang/String; = "\u2550\u2550"

.field private static final LOG_POSTFIX:Ljava/lang/String; = "\u2550\u255d"

.field private static final LOG_PREFIX:Ljava/lang/String; = "\u2554\u2550"

.field private static final LOG_TAG:Ljava/lang/String; = "EncryptedLogger"

.field private static final PublicKeyId:Ljava/lang/String; = "R001"

.field private static singleInstance:Lcom/sec/internal/log/EncryptedLogger;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private iv:[B

.field private secretKey:Ljavax/crypto/SecretKey;

.field private silentLogWatcher:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetsilentLogWatcher(Lcom/sec/internal/log/EncryptedLogger;)Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger;->silentLogWatcher:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputsilentLogWatcher(Lcom/sec/internal/log/EncryptedLogger;Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger;->silentLogWatcher:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSecretKeyToLogcat(Lcom/sec/internal/log/EncryptedLogger;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/log/EncryptedLogger;->writeSecretKeyToLogcat()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x640

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    .line 48
    sput v0, Lcom/sec/internal/log/EncryptedLogger;->ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->iv:[B

    .line 52
    iput-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->cipher:Ljavax/crypto/Cipher;

    .line 67
    invoke-direct {p0}, Lcom/sec/internal/log/EncryptedLogger;->initCipher()V

    return-void
.end method

.method private concatBytes([B[B)[B
    .registers 5

    .line 214
    array-length p0, p1

    array-length v0, p2

    add-int/2addr p0, v0

    new-array p0, p0, [B

    .line 215
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private encryptAES(Ljava/lang/String;)[B
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 172
    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 176
    sget-object p1, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/4 p1, 0x0

    aput-byte p1, p0, p1

    return-object p0
.end method

.method private encryptRSA([B)[B
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4HnSCdRy3WviYMvfRDtEcLAQU3Mi3et4f9W0ivmrMc1B+5LUEoWbrb6Rb5IKf7BI7qRflHKOfn1a9R1pYEBaBnrNrQHuIOhG4b3zYkAU+i093wKtE/dLvpa+NOEAfn/HMO0qVdRjdVs9FaJWYbjRNeiZC3PIX8bLFwqgOLwe70HOi9V7vcrrUyhJTMfXz77Zm1bbCMtU2R7UJUnI0b2fQyKdIhYgZiKChmfHH395939x2yQd8ZFYPGbmB+Zq4mCivEZSSaNZ6h9r6YYdoFSmgLVM1upBvt3kEpOE91TWbtIS4nLBWvLIfZTW4MA77BltW7mtkO61ZepLqkdj0eFoXQIDAQAB"

    .line 184
    invoke-direct {p0, v1}, Lcom/sec/internal/log/EncryptedLogger;->transformPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 185
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 187
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 191
    sget-object p1, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p0, v0, [B

    const/4 p1, 0x0

    aput-byte p1, p0, p1

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/log/EncryptedLogger;
    .registers 3

    const-class v0, Lcom/sec/internal/log/EncryptedLogger;

    monitor-enter v0

    .line 57
    :try_start_3
    const-class v1, Lcom/sec/internal/log/EncryptedLogger;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 58
    :try_start_6
    sget-object v2, Lcom/sec/internal/log/EncryptedLogger;->singleInstance:Lcom/sec/internal/log/EncryptedLogger;

    if-nez v2, :cond_11

    .line 59
    new-instance v2, Lcom/sec/internal/log/EncryptedLogger;

    invoke-direct {v2}, Lcom/sec/internal/log/EncryptedLogger;-><init>()V

    sput-object v2, Lcom/sec/internal/log/EncryptedLogger;->singleInstance:Lcom/sec/internal/log/EncryptedLogger;

    .line 61
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 63
    :try_start_12
    sget-object v1, Lcom/sec/internal/log/EncryptedLogger;->singleInstance:Lcom/sec/internal/log/EncryptedLogger;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_19

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v2

    .line 61
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initCipher()V
    .registers 4

    .line 72
    :try_start_0
    sget-object v0, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initCipher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AES"

    .line 74
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 77
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 78
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->cipher:Ljavax/crypto/Cipher;

    .line 79
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 80
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->iv:[B

    .line 82
    invoke-direct {p0}, Lcom/sec/internal/log/EncryptedLogger;->writeSecretKeyToLogcat()V

    .line 84
    invoke-virtual {p0}, Lcom/sec/internal/log/EncryptedLogger;->startSilentLogWatcher()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_43

    :catch_39
    move-exception p0

    .line 86
    sget-object v0, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    return-void
.end method

.method private makeEncryptMessagePackage(Ljava/lang/String;ZJ)Ljava/lang/String;
    .registers 7

    .line 159
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u2554\u2550 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "\n"

    .line 161
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_26

    const-string p3, ""

    .line 163
    :cond_26
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_2f

    const-string/jumbo p1, "\u2550\u2550"

    goto :goto_32

    :cond_2f
    const-string/jumbo p1, "\u2550\u255d"

    .line 164
    :goto_32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private transformPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 3

    :try_start_0
    const-string p0, "RSA"

    .line 199
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 200
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object p1

    .line 201
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 203
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    .line 207
    sget-object p1, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private writeLog(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    const/4 p0, 0x2

    if-eq p3, p0, :cond_20

    const/4 p0, 0x3

    if-eq p3, p0, :cond_1c

    const/4 p0, 0x4

    if-eq p3, p0, :cond_18

    const/4 p0, 0x5

    if-eq p3, p0, :cond_14

    const/4 p0, 0x6

    if-eq p3, p0, :cond_10

    goto :goto_23

    .line 153
    :cond_10
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 150
    :cond_14
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 147
    :cond_18
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 144
    :cond_1c
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 141
    :cond_20
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method private writeSecretKeyToLogcat()V
    .registers 2

    .line 222
    sget-object v0, Lcom/sec/internal/log/EncryptedLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/log/EncryptedLogger;->getBase64EncodedSecretKeyWithDelimiter()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public _debug_GetSecretKeyInfo()Ljava/lang/String;
    .registers 4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger;->iv:[B

    invoke-virtual {v1, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 114
    invoke-direct {p0, p2}, Lcom/sec/internal/log/EncryptedLogger;->encryptAES(Ljava/lang/String;)[B

    move-result-object p2

    .line 115
    sget v2, Lcom/sec/internal/log/EncryptedLogger;->ENCRYPTED_LOGGER_LINE_MAX_PAYLOAD:I

    const-string v3, "\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Base64;->getMimeEncoder(I[B)Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 120
    sget v1, Lcom/sec/internal/log/EncryptedLogger;->ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD:I

    const/4 v4, 0x0

    if-le v0, v1, :cond_4c

    move v1, v4

    :goto_27
    if-ge v1, v0, :cond_47

    .line 123
    sget v5, Lcom/sec/internal/log/EncryptedLogger;->ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v1

    .line 124
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-ge v5, v0, :cond_3d

    const/4 v6, 0x1

    goto :goto_3e

    :cond_3d
    move v6, v4

    .line 126
    :goto_3e
    invoke-direct {p0, v1, v6, v2, v3}, Lcom/sec/internal/log/EncryptedLogger;->makeEncryptMessagePackage(Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-direct {p0, p1, v1, p3}, Lcom/sec/internal/log/EncryptedLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;I)V

    move v1, v5

    goto :goto_27

    .line 129
    :cond_47
    invoke-direct {p0, p2, v4, v2, v3}, Lcom/sec/internal/log/EncryptedLogger;->makeEncryptMessagePackage(Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object p0

    goto :goto_54

    .line 131
    :cond_4c
    invoke-direct {p0, p2, v4, v2, v3}, Lcom/sec/internal/log/EncryptedLogger;->makeEncryptMessagePackage(Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/log/EncryptedLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;I)V

    move-object p0, p2

    :goto_54
    return-object p0
.end method

.method public getBase64EncodedSecretKey()Ljava/lang/String;
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_25

    .line 92
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger;->iv:[B

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/log/EncryptedLogger;->concatBytes([B[B)[B

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/sec/internal/log/EncryptedLogger;->encryptRSA([B)[B

    move-result-object v0

    .line 94
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    const-string v2, "R001"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/log/EncryptedLogger;->concatBytes([B[B)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBase64EncodedSecretKeyWithDelimiter()Ljava/lang/String;
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger;->secretKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_21

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u275b\u205d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/log/EncryptedLogger;->getBase64EncodedSecretKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\u205d\u275c"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public startSilentLogWatcher()V
    .registers 2

    .line 230
    new-instance v0, Lcom/sec/internal/log/EncryptedLogger$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/log/EncryptedLogger$1;-><init>(Lcom/sec/internal/log/EncryptedLogger;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
