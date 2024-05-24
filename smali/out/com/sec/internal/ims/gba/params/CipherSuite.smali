.class public final enum Lcom/sec/internal/ims/gba/params/CipherSuite;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/gba/params/CipherSuite;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum DEFAULT:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_CHACHA20_POLY1305_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

.field public static final enum TLS_RSA_WITH_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;


# instance fields
.field private mType:[B


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/gba/params/CipherSuite;
    .registers 22

    .line 5
    sget-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v1, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v2, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v3, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v4, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v5, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v6, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v7, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v8, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v9, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v10, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v11, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v12, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v13, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v14, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v15, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v16, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v17, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v18, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v19, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v20, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

    sget-object v21, Lcom/sec/internal/ims/gba/params/CipherSuite;->DEFAULT:Lcom/sec/internal/ims/gba/params/CipherSuite;

    filled-new-array/range {v0 .. v21}, [Lcom/sec/internal/ims/gba/params/CipherSuite;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 6
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_160

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 7
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_166

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 8
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_16c

    const-string v3, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 9
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_172

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 10
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_178

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 11
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_17e

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_184

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 13
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_18a

    const-string v3, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 14
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_190

    const-string v3, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 15
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_196

    const-string v3, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 16
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_19c

    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 17
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_1a2

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 18
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_1a8

    const-string v3, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 19
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_1ae

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 20
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_1b4

    const-string v3, "TLS_AES_256_GCM_SHA384"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 21
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_1ba

    const-string v3, "TLS_AES_128_GCM_SHA256"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_AES_128_GCM_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 22
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_1c0

    const-string v3, "TLS_CHACHA20_POLY1305_SHA256"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 23
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_1c6

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 24
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_1cc

    const-string v3, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 25
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_1d2

    const-string v3, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 26
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v2, v1, [B

    fill-array-data v2, :array_1d8

    const-string v3, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 27
    new-instance v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    new-array v1, v1, [B

    fill-array-data v1, :array_1de

    const-string v2, "DEFAULT"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/ims/gba/params/CipherSuite;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->DEFAULT:Lcom/sec/internal/ims/gba/params/CipherSuite;

    .line 5
    invoke-static {}, Lcom/sec/internal/ims/gba/params/CipherSuite;->$values()[Lcom/sec/internal/ims/gba/params/CipherSuite;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->$VALUES:[Lcom/sec/internal/ims/gba/params/CipherSuite;

    return-void

    nop

    :array_160
    .array-data 1
        -0x40t
        0x2bt
    .end array-data

    nop

    :array_166
    .array-data 1
        -0x40t
        0x2ft
    .end array-data

    nop

    :array_16c
    .array-data 1
        0x0t
        -0x62t
    .end array-data

    nop

    :array_172
    .array-data 1
        -0x40t
        0xat
    .end array-data

    nop

    :array_178
    .array-data 1
        -0x40t
        0x9t
    .end array-data

    nop

    :array_17e
    .array-data 1
        -0x40t
        0x13t
    .end array-data

    nop

    :array_184
    .array-data 1
        -0x40t
        0x14t
    .end array-data

    nop

    :array_18a
    .array-data 1
        0x0t
        0x33t
    .end array-data

    nop

    :array_190
    .array-data 1
        0x0t
        0x39t
    .end array-data

    nop

    :array_196
    .array-data 1
        0x0t
        -0x64t
    .end array-data

    nop

    :array_19c
    .array-data 1
        0x0t
        0x2ft
    .end array-data

    nop

    :array_1a2
    .array-data 1
        0x0t
        0x35t
    .end array-data

    nop

    :array_1a8
    .array-data 1
        0x0t
        0xat
    .end array-data

    nop

    :array_1ae
    .array-data 1
        -0x40t
        0x30t
    .end array-data

    nop

    :array_1b4
    .array-data 1
        0x13t
        0x2t
    .end array-data

    nop

    :array_1ba
    .array-data 1
        0x13t
        0x1t
    .end array-data

    nop

    :array_1c0
    .array-data 1
        0x13t
        0x3t
    .end array-data

    nop

    :array_1c6
    .array-data 1
        -0x40t
        0x2ct
    .end array-data

    nop

    :array_1cc
    .array-data 1
        -0x34t
        -0x57t
    .end array-data

    nop

    :array_1d2
    .array-data 1
        -0x34t
        -0x58t
    .end array-data

    nop

    :array_1d8
    .array-data 1
        0x0t
        -0x63t
    .end array-data

    nop

    :array_1de
    .array-data 1
        0x0t
        0x2ft
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/sec/internal/ims/gba/params/CipherSuite;->mType:[B

    return-void
.end method

.method public static forData(Ljava/lang/String;)[B
    .registers 1

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/sec/internal/ims/gba/params/CipherSuite;->valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/gba/params/CipherSuite;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/internal/ims/gba/params/CipherSuite;->mType:[B
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 39
    :catch_7
    sget-object p0, Lcom/sec/internal/ims/gba/params/CipherSuite;->DEFAULT:Lcom/sec/internal/ims/gba/params/CipherSuite;

    iget-object p0, p0, Lcom/sec/internal/ims/gba/params/CipherSuite;->mType:[B

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/gba/params/CipherSuite;
    .registers 2

    .line 5
    const-class v0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/gba/params/CipherSuite;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/gba/params/CipherSuite;
    .registers 1

    .line 5
    sget-object v0, Lcom/sec/internal/ims/gba/params/CipherSuite;->$VALUES:[Lcom/sec/internal/ims/gba/params/CipherSuite;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/gba/params/CipherSuite;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/gba/params/CipherSuite;

    return-object v0
.end method
