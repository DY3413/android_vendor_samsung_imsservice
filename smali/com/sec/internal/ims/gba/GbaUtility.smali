.class public Lcom/sec/internal/ims/gba/GbaUtility;
.super Ljava/lang/Object;
.source "GbaUtility.java"


# static fields
.field private static final ALGORITHM_HMAC_SHA_256:Ljava/lang/String; = "HmacSHA256"

.field private static final TAG:Ljava/lang/String; = "GbaUtility"

.field private static final TRANSFER_BASE:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate([B[B)[B
    .locals 4

    const-string v0, "GBA ME KEY Algo Calculation encountered an error"

    :try_start_0
    const-string v1, "HmacSHA256"

    .line 254
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 255
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 256
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 258
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 264
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 265
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 261
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static calculateKs([B[B)[B
    .locals 2

    .line 204
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 206
    new-instance v1, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 208
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 209
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 211
    invoke-virtual {v1}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object p0

    return-object p0
.end method

.method private static calculateNafId([B[B)[B
    .locals 2

    .line 192
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 194
    new-instance v1, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 196
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 197
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 199
    invoke-virtual {v1}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object p0

    return-object p0
.end method

.method private static calculateS([B[B[B[B[B[B[B[B[B)[B
    .locals 2

    .line 219
    array-length v0, p0

    add-int/lit8 v0, v0, 0x0

    .line 221
    array-length v1, p1

    add-int/2addr v0, v1

    .line 222
    array-length v1, p2

    add-int/2addr v0, v1

    .line 224
    array-length v1, p3

    add-int/2addr v0, v1

    .line 225
    array-length v1, p4

    add-int/2addr v0, v1

    .line 227
    array-length v1, p5

    add-int/2addr v0, v1

    .line 228
    array-length v1, p6

    add-int/2addr v0, v1

    .line 230
    array-length v1, p7

    add-int/2addr v0, v1

    .line 231
    array-length v1, p8

    add-int/2addr v0, v1

    .line 233
    new-instance v1, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 234
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 236
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 237
    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 239
    invoke-virtual {v1, p3}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 240
    invoke-virtual {v1, p4}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 242
    invoke-virtual {v1, p5}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 243
    invoke-virtual {v1, p6}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 245
    invoke-virtual {v1, p7}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 246
    invoke-virtual {v1, p8}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 248
    invoke-virtual {v1}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object p0

    return-object p0
.end method

.method public static convertCipherSuite(Ljava/lang/String;Z)[B
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConvertCipherSuite Cipher Suite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GbaUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_16

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0x14

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0x13

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x12

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 p1, 0x11

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 p1, 0x10

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 p1, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 p1, 0xe

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 p1, 0xd

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "TLS_AES_128_GCM_SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 p1, 0xc

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 p1, 0xb

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 p1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 p1, 0x9

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 p1, 0x8

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 p1, 0x7

    goto :goto_0

    :sswitch_e
    const-string v0, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 p1, 0x6

    goto :goto_0

    :sswitch_f
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 p1, 0x5

    goto :goto_0

    :sswitch_10
    const-string v0, "TLS_AES_256_GCM_SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 p1, 0x4

    goto :goto_0

    :sswitch_11
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_12
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    move p1, v1

    goto :goto_0

    :sswitch_13
    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_14
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    new-array p0, v1, [B

    .line 128
    fill-array-data p0, :array_0

    goto/16 :goto_1

    :pswitch_0
    new-array p0, v1, [B

    .line 113
    fill-array-data p0, :array_1

    goto/16 :goto_1

    :pswitch_1
    new-array p0, v1, [B

    .line 83
    fill-array-data p0, :array_2

    goto/16 :goto_1

    :pswitch_2
    new-array p0, v1, [B

    .line 116
    fill-array-data p0, :array_3

    goto/16 :goto_1

    :pswitch_3
    new-array p0, v1, [B

    .line 119
    fill-array-data p0, :array_4

    goto/16 :goto_1

    :pswitch_4
    new-array p0, v1, [B

    .line 86
    fill-array-data p0, :array_5

    goto/16 :goto_1

    :pswitch_5
    new-array p0, v1, [B

    .line 122
    fill-array-data p0, :array_6

    goto :goto_1

    :pswitch_6
    new-array p0, v1, [B

    .line 98
    fill-array-data p0, :array_7

    goto :goto_1

    :pswitch_7
    new-array p0, v1, [B

    .line 80
    fill-array-data p0, :array_8

    goto :goto_1

    :pswitch_8
    new-array p0, v1, [B

    .line 110
    fill-array-data p0, :array_9

    goto :goto_1

    :pswitch_9
    new-array p0, v1, [B

    .line 74
    fill-array-data p0, :array_a

    goto :goto_1

    :pswitch_a
    new-array p0, v1, [B

    .line 95
    fill-array-data p0, :array_b

    goto :goto_1

    :pswitch_b
    new-array p0, v1, [B

    .line 92
    fill-array-data p0, :array_c

    goto :goto_1

    :pswitch_c
    new-array p0, v1, [B

    .line 77
    fill-array-data p0, :array_d

    goto :goto_1

    :pswitch_d
    new-array p0, v1, [B

    .line 68
    fill-array-data p0, :array_e

    goto :goto_1

    :pswitch_e
    new-array p0, v1, [B

    .line 101
    fill-array-data p0, :array_f

    goto :goto_1

    :pswitch_f
    new-array p0, v1, [B

    .line 65
    fill-array-data p0, :array_10

    goto :goto_1

    :pswitch_10
    new-array p0, v1, [B

    .line 107
    fill-array-data p0, :array_11

    goto :goto_1

    :pswitch_11
    new-array p0, v1, [B

    .line 89
    fill-array-data p0, :array_12

    goto :goto_1

    :pswitch_12
    new-array p0, v1, [B

    .line 71
    fill-array-data p0, :array_13

    goto :goto_1

    :pswitch_13
    new-array p0, v1, [B

    .line 125
    fill-array-data p0, :array_14

    goto :goto_1

    :pswitch_14
    new-array p0, v1, [B

    .line 104
    fill-array-data p0, :array_15

    :goto_1
    return-object p0

    :cond_16
    :goto_2
    new-array p0, v1, [B

    .line 58
    fill-array-data p0, :array_16

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7d25cc59 -> :sswitch_14
        -0x763493fd -> :sswitch_13
        -0x6c6f0f7b -> :sswitch_12
        -0x6472b983 -> :sswitch_11
        -0x328677af -> :sswitch_10
        -0x2e6258c5 -> :sswitch_f
        -0x2413cc72 -> :sswitch_e
        -0x1b2962d9 -> :sswitch_d
        -0x19cb2c95 -> :sswitch_c
        -0x14382a7d -> :sswitch_b
        -0x130575dd -> :sswitch_a
        0x2f6cfb87 -> :sswitch_9
        0x2f75f1d1 -> :sswitch_8
        0x33b584ff -> :sswitch_7
        0x3632b23f -> :sswitch_6
        0x399b72cc -> :sswitch_5
        0x52551e61 -> :sswitch_4
        0x556f9de0 -> :sswitch_3
        0x6fa13dbb -> :sswitch_2
        0x7cedad1b -> :sswitch_1
        0x7d4f1ff6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x2ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x13t
        0x3t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x40t
        0x14t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x40t
        0x2ct
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x34t
        -0x57t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x33t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x34t
        -0x58t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        0x35t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x40t
        0x13t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x13t
        0x1t
    .end array-data

    nop

    :array_a
    .array-data 1
        -0x40t
        0xat
    .end array-data

    nop

    :array_b
    .array-data 1
        0x0t
        0x2ft
    .end array-data

    nop

    :array_c
    .array-data 1
        0x0t
        -0x64t
    .end array-data

    nop

    :array_d
    .array-data 1
        -0x40t
        0x9t
    .end array-data

    nop

    :array_e
    .array-data 1
        -0x40t
        0x2ft
    .end array-data

    nop

    :array_f
    .array-data 1
        0x0t
        0xat
    .end array-data

    nop

    :array_10
    .array-data 1
        -0x40t
        0x2bt
    .end array-data

    nop

    :array_11
    .array-data 1
        0x13t
        0x2t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x0t
        0x39t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x0t
        -0x62t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x0t
        -0x63t
    .end array-data

    nop

    :array_15
    .array-data 1
        -0x40t
        0x30t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x0t
        0x2ft
    .end array-data
.end method

.method private static getByteArrayForLength(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 50
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 51
    div-int/lit16 p0, p0, 0x100

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getNafId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "@"

    .line 309
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 311
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 312
    aget-object v0, p0, v1

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    aget-object p0, p0, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 314
    aget-object p0, p0, v0

    goto :goto_0

    .line 316
    :cond_0
    aget-object p0, p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getNafPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    .line 288
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 293
    :goto_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 295
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 301
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 304
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPath "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GbaUtility"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getNafUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 275
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    const/4 p0, 0x0

    .line 280
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNafUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GbaUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getSecurityProtocolId([B[BZ)[B
    .locals 6

    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    aput-byte v2, v1, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    .line 337
    aget-byte v4, p1, v2

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    aget-byte p1, p1, v3

    const/4 v3, 0x4

    aput-byte p1, v1, v3

    new-array p1, v0, [B

    .line 338
    fill-array-data p1, :array_0

    if-eqz p2, :cond_0

    .line 340
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p1, p1, [B

    .line 341
    array-length p2, p0

    invoke-static {p0, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    array-length p0, p0

    invoke-static {v1, v2, p1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 344
    :cond_0
    array-length p2, p0

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 345
    array-length v1, p0

    invoke-static {p0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    array-length p0, p0

    invoke-static {p1, v2, p2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    :goto_0
    return-object p1

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method public static declared-synchronized igenerateGbaMEKey([B[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Z[B)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v6, p4

    move-object/from16 v1, p5

    const-class v10, Lcom/sec/internal/ims/gba/GbaUtility;

    monitor-enter v10

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "GbaUtility"

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gbatype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GbaUtility"

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ck = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GbaUtility"

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ik = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GbaUtility"

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GbaUtility"

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fqdn for nafid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    const/4 v5, 0x6

    new-array v7, v5, [B

    const/16 v8, 0x67

    aput-byte v8, v7, v4

    const/16 v8, 0x62

    aput-byte v8, v7, v2

    const/16 v8, 0x61

    const/4 v11, 0x2

    aput-byte v8, v7, v11

    const/16 v8, 0x2d

    const/4 v9, 0x3

    aput-byte v8, v7, v9

    const/16 v8, 0x6d

    const/4 v12, 0x4

    aput-byte v8, v7, v12

    const/16 v8, 0x65

    const/4 v13, 0x5

    aput-byte v8, v7, v13

    .line 156
    invoke-static {v5}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v5

    .line 160
    array-length v8, v0

    invoke-static {v8}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v8

    .line 164
    array-length v14, v6

    invoke-static {v14}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v14

    .line 166
    invoke-static/range {p1 .. p2}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateKs([B[B)[B

    move-result-object v15

    if-eqz p8, :cond_0

    const-string v12, "GbaUtility"

    .line 168
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cipherSuite tls = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p9 .. p9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v9, v13, [B

    aput-byte v2, v9, v4

    aput-byte v4, v9, v2

    const/4 v11, 0x2

    aput-byte v2, v9, v11

    .line 169
    aget-byte v4, p9, v4

    const/4 v11, 0x3

    aput-byte v4, v9, v11

    aget-byte v2, p9, v2

    const/4 v4, 0x4

    aput-byte v2, v9, v4

    .line 170
    invoke-static {v1, v9}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateNafId([B[B)[B

    move-result-object v9

    .line 171
    array-length v1, v9

    invoke-static {v1}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v11

    move-object v1, v3

    move-object v2, v7

    move-object v3, v5

    move-object/from16 v4, p3

    move-object v5, v8

    move-object/from16 v6, p4

    move-object v7, v14

    move-object v8, v9

    move-object v9, v11

    .line 172
    invoke-static/range {v1 .. v9}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateS([B[B[B[B[B[B[B[B[B)[B

    move-result-object v0

    .line 173
    invoke-static {v15, v0}, Lcom/sec/internal/ims/gba/GbaUtility;->calculate([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 174
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v9, v13, [B

    aput-byte v2, v9, v4

    aput-byte v4, v9, v2

    const/4 v2, 0x2

    aput-byte v4, v9, v2

    const/4 v11, 0x3

    aput-byte v4, v9, v11

    const/4 v4, 0x4

    aput-byte v2, v9, v4

    .line 177
    invoke-static {v1, v9}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateNafId([B[B)[B

    move-result-object v9

    .line 178
    array-length v1, v9

    invoke-static {v1}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v11

    move-object v1, v3

    move-object v2, v7

    move-object v3, v5

    move-object/from16 v4, p3

    move-object v5, v8

    move-object/from16 v6, p4

    move-object v7, v14

    move-object v8, v9

    move-object v9, v11

    .line 179
    invoke-static/range {v1 .. v9}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateS([B[B[B[B[B[B[B[B[B)[B

    move-result-object v0

    .line 180
    invoke-static {v15, v0}, Lcom/sec/internal/ims/gba/GbaUtility;->calculate([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 181
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "GbaUtility"

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returning base64EncodedGbaKey [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit v10

    return-object v0

    .line 141
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GBA ME KEY Calculation - input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static isTls(Ljava/lang/String;)Z
    .locals 1

    .line 325
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p0, "https"

    .line 326
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 330
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
