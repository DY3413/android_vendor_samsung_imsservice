.class public Lcom/sec/internal/ims/gba/GbaServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "GbaServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;


# static fields
.field private static final GBA_ME:Ljava/lang/String; = "gba-me"

.field public static final GBA_UICC:Ljava/lang/String; = "gba-u"

.field private static final IMS_AUTH_NO_ERR_STRING:Ljava/lang/String; = "db"

.field private static final IMS_AUTH_SYNC_FAIL:Ljava/lang/String; = "dc"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static gbaKey:[B

.field private static mGbaIdCounter:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGba:Lcom/sec/internal/ims/gba/Gba;

.field private mGbaCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private resLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    sput v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaIdCounter:I

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->gbaKey:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 4

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->resLen:I

    .line 60
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaCallbacks:Landroid/util/SparseArray;

    .line 82
    iput-object p2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mContext:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 85
    invoke-static {p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 86
    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->initGbaAccessibleObj()Z

    return-void
.end method

.method private createRequestId()I
    .registers 2

    .line 591
    sget p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaIdCounter:I

    const/16 v0, 0xff

    if-lt p0, v0, :cond_9

    const/4 p0, 0x0

    .line 592
    sput p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaIdCounter:I

    .line 594
    :cond_9
    sget p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaIdCounter:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaIdCounter:I

    return p0
.end method

.method private generateGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;[BLcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v1, p3

    .line 425
    iget-object v2, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v3, 0x0

    if-nez v2, :cond_e

    return-object v3

    .line 429
    :cond_e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>([B)V

    .line 431
    sget-object v4, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateGbaKey(): gbaType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " nafId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "gba-u"

    .line 435
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x2

    if-eqz v2, :cond_a3

    .line 436
    invoke-static/range {p9 .. p9}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-virtual {v0, v2, v1, v14, v15}, Lcom/sec/internal/ims/gba/GbaServiceModule;->storeGbaBootstrapParams(I[BLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p6

    move/from16 v9, p8

    .line 441
    invoke-static {v12, v10, v9}, Lcom/sec/internal/ims/gba/GbaUtility;->getSecurityProtocolId([B[BZ)[B

    move-result-object v1

    .line 443
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static/range {p9 .. p9}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getGbaKeyResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateGbaKey(): response: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_82

    .line 448
    :try_start_79
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v1
    :try_end_81
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_79 .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    :cond_82
    move-object v1, v3

    :goto_83
    if-eqz v1, :cond_89

    .line 454
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/gba/GbaServiceModule;->parseResKeyFromIsimResponse([B)Ljava/lang/String;

    move-result-object v3

    :cond_89
    move-object v8, v3

    .line 456
    iget-object v0, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    if-eqz v0, :cond_f0

    if-eqz v8, :cond_f0

    .line 457
    invoke-static {v8, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_f0

    :cond_a3
    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v10, p6

    move/from16 v9, p8

    const/4 v2, 0x1

    const/16 v3, 0x11

    .line 461
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move/from16 v8, p9

    .line 462
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getImpi(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-virtual/range {p7 .. p7}, Lcom/sec/internal/ims/gba/params/GbaData;->getCipkey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lcom/sec/internal/ims/gba/params/GbaData;->getIntkey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 465
    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    .line 463
    invoke-static/range {v1 .. v10}, Lcom/sec/internal/ims/gba/GbaUtility;->igenerateGbaMEKey([B[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Z[B)Ljava/lang/String;

    move-result-object v8

    .line 467
    iget-object v0, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    if-eqz v0, :cond_f0

    .line 468
    invoke-static {v8, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;ZI)V

    :cond_f0
    :goto_f0
    return-object v8
.end method

.method private getGbaKeyResponse(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 546
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 550
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "00"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 552
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const-string v1, ""

    .line 557
    :try_start_31
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v3, 0x5

    invoke-interface {v2, p1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    .line 558
    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->transmitLogicChannel(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 559
    sget-object p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getGbaKeyResponse response "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_54} :catch_54

    :catch_54
    return-object v1
.end method

.method private getIsimResponse(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 566
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 570
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "00"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 571
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const-string v1, ""

    .line 576
    :try_start_24
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v3, 0x5

    invoke-interface {v2, p1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    .line 577
    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->transmitLogicChannel(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 578
    sget-object p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIsimResponse response "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_47} :catch_47

    :catch_47
    return-object v1
.end method

.method private isRealmFromUsername(I)Z
    .registers 2

    .line 585
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 586
    sget-object p1, Lcom/sec/internal/constants/Mno;->KPN_NED:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_13

    sget-object p1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_13

    sget-object p1, Lcom/sec/internal/constants/Mno;->TELEFONICA_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_11

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

.method private static splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    .line 407
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 411
    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 412
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded AKA Challenge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3e

    const-string p0, ""

    .line 414
    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 417
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 419
    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized getBtidAndGbaKey(Landroid/telephony/gba/GbaAuthRequest;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I
    .registers 11

    monitor-enter p0

    .line 255
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "GBA: getBtidAndGbaKey GbaAuthRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSubId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSlotId(I)I

    move-result v0

    .line 257
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 258
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getNafUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    .line 260
    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 261
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const-wide/16 v4, 0x1388

    .line 262
    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 263
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getBSFDomain(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setBsfUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 265
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getNafUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v0, 0x2

    new-array v4, v0, [Lcom/sec/internal/constants/Mno;

    .line 267
    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 268
    invoke-virtual {v3, v7}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseImei(Z)V

    .line 271
    :cond_5a
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSecurityProtocol()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_84

    .line 272
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSecurityProtocol()[B

    move-result-object v1

    array-length v1, v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_7d

    .line 273
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSecurityProtocol()[B

    move-result-object p1

    new-array v0, v0, [B

    const/4 v1, 0x3

    .line 274
    aget-byte v1, p1, v1

    aput-byte v1, v0, v6

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    aput-byte p1, v0, v7

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCipherSuite([B)V

    goto :goto_84

    .line 276
    :cond_7d
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSecurityProtocol()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCipherSuite([B)V

    :cond_84
    :goto_84
    const/4 p1, 0x0

    .line 279
    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I

    move-result p1
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_8b

    monitor-exit p0

    return p1

    :catchall_8b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    monitor-enter p0

    .line 283
    :try_start_9
    sget-object v4, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "GBA: getBtidAndGbaKey"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12a

    const/4 v8, -0x1

    if-nez v3, :cond_15

    .line 285
    monitor-exit p0

    return v8

    .line 288
    :cond_15
    :try_start_15
    iget-object v5, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v5, :cond_23

    .line 289
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_12a

    .line 290
    monitor-exit p0

    return v8

    .line 293
    :cond_23
    :try_start_23
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v5

    .line 294
    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v6

    .line 296
    iget-object v7, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v7, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v7

    .line 297
    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    const-string v10, "3GPP-bootstrapping"

    .line 298
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_65

    const-string/jumbo v10, "uicc"

    .line 299
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4d

    if-eqz v7, :cond_4d

    move v7, v12

    goto :goto_4e

    :cond_4d
    move v7, v13

    .line 300
    :goto_4e
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v10, v11, [Lcom/sec/internal/constants/Mno;

    .line 301
    sget-object v14, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    aput-object v14, v10, v13

    sget-object v14, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    aput-object v14, v10, v12

    invoke-virtual {v9, v10}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v9

    if-eqz v9, :cond_63

    goto :goto_65

    :cond_63
    move v10, v7

    goto :goto_66

    :cond_65
    :goto_65
    move v10, v13

    .line 306
    :goto_66
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->createRequestId()I

    move-result v14

    if-eqz v10, :cond_7b

    const-string v2, "gba-u"

    .line 311
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_83

    :cond_7b
    const-string v2, "gba-me"

    .line 313
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    :goto_83
    move-object v15, v2

    const-string v2, "GBA: NO GBA information, need send BSF request"

    .line 316
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    invoke-virtual {v0, v14}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setToken(I)V

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getBsfUrl()Ljava/lang/String;

    move-result-object v4

    .line 325
    iget-object v2, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v7, "bsf_port"

    const/16 v13, 0x50

    invoke-interface {v2, v5, v7, v13}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v7

    if-eqz v4, :cond_11d

    if-gez v7, :cond_a5

    goto/16 :goto_11d

    .line 331
    :cond_a5
    iget-object v2, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v8

    .line 332
    iget-object v2, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    iget-object v3, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getImpi(I)Ljava/lang/String;

    move-result-object v6

    .line 336
    invoke-static {v5}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v13

    if-nez v13, :cond_c3

    const/4 v13, 0x0

    goto :goto_c7

    .line 337
    :cond_c3
    invoke-interface {v13}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v13

    .line 338
    :goto_c7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_cf

    if-nez v13, :cond_dd

    .line 339
    :cond_cf
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_dd

    const-string v2, "@"

    .line 340
    invoke-virtual {v6, v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v12

    .line 344
    :cond_dd
    invoke-direct {v1, v5}, Lcom/sec/internal/ims/gba/GbaServiceModule;->isRealmFromUsername(I)Z

    move-result v5

    if-eqz v5, :cond_e5

    move-object v11, v2

    goto :goto_f7

    .line 346
    :cond_e5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f6

    const-string v2, "bsf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f4

    goto :goto_f6

    :cond_f4
    move-object v11, v3

    goto :goto_f7

    :cond_f6
    :goto_f6
    move-object v11, v4

    :goto_f7
    if-eqz p3, :cond_10c

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v2

    if-eqz v2, :cond_10c

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getCipherSuite()[B

    move-result-object v2

    if-eqz v2, :cond_10c

    .line 351
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getCipherSuite()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCipherSuite([B)V

    .line 354
    :cond_10c
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v2

    move-object v3, v4

    move v4, v7

    move-object v5, v6

    move-object v6, v8

    move-object v7, v11

    move-object v8, v15

    move-object/from16 v11, p1

    invoke-virtual/range {v2 .. v11}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendBsfRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    :try_end_11b
    .catchall {:try_start_23 .. :try_end_11b} :catchall_12a

    .line 356
    monitor-exit p0

    return v14

    :cond_11d
    :goto_11d
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p4

    move v3, v14

    move-object/from16 v7, p3

    .line 327
    :try_start_125
    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onComplete(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_12a

    .line 328
    monitor-exit p0

    return v8

    :catchall_12a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBtidFromSim(I)Ljava/lang/String;
    .registers 4

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getBtid(I)Ljava/lang/String;

    move-result-object p0

    .line 154
    sget-object p1, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBtid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getGbaCallback(I)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    return-object p0
.end method

.method public getGbaValue(ILjava/lang/String;)Lcom/sec/internal/ims/gba/GbaValue;
    .registers 5

    .line 360
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 361
    sget-object p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Invalid URI"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 364
    :cond_f
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 365
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    const-string v0, "gba-me"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/gba/Gba;->getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object p0

    return-object p0
.end method

.method public getImei(I)Ljava/lang/String;
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 235
    :cond_6
    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImpi(I)Ljava/lang/String;
    .registers 5

    .line 213
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_38

    .line 217
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 218
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getPrivateUserIdentityfromIsim(ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_14
    sget-object p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImpi after isim impi = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 222
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object v1

    :cond_38
    return-object v1
.end method

.method public getKeyLifetime(I)Ljava/lang/String;
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getKeyLifetime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPassword(Ljava/lang/String;ZI)Lcom/sec/internal/ims/gba/params/GbaData;
    .registers 12

    .line 479
    invoke-static {p1}, Lcom/sec/internal/ims/gba/GbaServiceModule;->splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    .line 484
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getIsimResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    .line 486
    :cond_25
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_2d

    move-object p0, v0

    goto :goto_31

    .line 487
    :cond_2d
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_31
    if-nez p0, :cond_34

    return-object v0

    .line 494
    :cond_34
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "dc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 495
    new-instance p1, Lcom/sec/internal/ims/gba/params/GbaData;

    const-string p2, ""

    invoke-direct {p1, p0, p2, p2}, Lcom/sec/internal/ims/gba/params/GbaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 498
    :cond_48
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "db"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6b

    .line 499
    sget-object p1, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPassword(): wrong IsimResponse: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 505
    :cond_6b
    :try_start_6b
    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    move-object p1, v0

    :goto_71
    if-nez p1, :cond_74

    return-object v0

    .line 512
    :cond_74
    aget-byte v1, p1, v1

    .line 513
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int v4, v3, v1

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const-string v6, "CP1252"

    .line 514
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 516
    sget-object v5, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPassword(): password = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_c0

    add-int/lit8 p2, v4, 0x1

    .line 520
    aget-byte v0, p1, v4

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v3

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    .line 526
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p2, v0

    .line 529
    aget-byte p1, p1, p2

    if-gez p1, :cond_b6

    rsub-int p1, p1, 0x100

    :cond_b6
    add-int/2addr v4, v3

    mul-int/2addr p1, v3

    add-int/2addr p1, v4

    .line 536
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    move-object v0, v1

    goto :goto_c1

    :cond_c0
    move-object p0, v0

    .line 539
    :goto_c1
    new-instance p1, Lcom/sec/internal/ims/gba/params/GbaData;

    invoke-direct {p1, v2, v0, p0}, Lcom/sec/internal/ims/gba/params/GbaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/gba/params/GbaData;->setPhoneId(I)V

    return-object p1
.end method

.method public getPrivateUserIdentityfromIsim(ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .registers 10

    .line 166
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 167
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p3

    const-string v0, ""

    if-gez p3, :cond_d

    return-object v0

    .line 173
    :cond_d
    invoke-interface {p2, p3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    .line 179
    :cond_18
    sget-object v2, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 181
    :cond_2c
    invoke-interface {p2, p3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-interface {p2, p3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz v2, :cond_48

    .line 185
    array-length v3, v2

    move v4, p3

    :goto_39
    if-ge v4, v3, :cond_48

    aget-object v5, v2, v4

    .line 186
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    const/4 p3, 0x1

    goto :goto_48

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 193
    :cond_48
    :goto_48
    sget-object v2, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrivateUserIdentityfromIsim: MNO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", found impu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", impi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_83

    if-nez p3, :cond_83

    return-object v0

    :cond_83
    if-eqz p3, :cond_93

    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_93

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_92

    goto :goto_93

    :cond_92
    return-object v1

    :cond_93
    :goto_93
    const-string p0, "getPrivateUserIdentityfromIsim: domain is null | impi is null | impu Not found"

    .line 202
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .registers 3

    const-string p0, "mmtel"

    const-string v0, "ft_http"

    const-string/jumbo v1, "ss"

    .line 73
    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 2

    .line 0
    return-void
.end method

.method public init()V
    .registers 1

    .line 67
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 68
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    return-void
.end method

.method public initGbaAccessibleObj()Z
    .registers 2

    .line 245
    new-instance v0, Lcom/sec/internal/ims/gba/Gba;

    invoke-direct {v0}, Lcom/sec/internal/ims/gba/Gba;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    const/4 p0, 0x1

    return p0
.end method

.method public isGbaUiccSupported(I)Z
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result p0

    return p0
.end method

.method public parseResKeyFromIsimResponse([B)Ljava/lang/String;
    .registers 8

    .line 125
    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a0

    .line 127
    sget-object v2, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AkaResponse for GBA as received from sim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "db"

    .line 129
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_59

    const/4 v3, 0x4

    .line 130
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->resLen:I

    if-lt v5, v0, :cond_59

    const-string p0, "Illegal response received from iSim"

    .line 132
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 136
    :cond_59
    iget p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->resLen:I

    new-array v0, p0, [B

    .line 138
    :try_start_5d
    invoke-static {p1, v5, v0, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AkaResponse for GBA to be sent: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " base64 decode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_84} :catch_85

    return-object p0

    :catch_85
    move-exception p0

    .line 143
    sget-object p1, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    return-object v1
.end method

.method public removeGbaCallback(I)V
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public resetGbaKey(Ljava/lang/String;I)V
    .registers 8

    const-string v0, "@"

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 371
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_13

    .line 372
    sget-object p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "realm does not have @. resetGbaKey can not process."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 376
    :cond_13
    aget-object v1, v0, v2

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2d

    .line 378
    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 379
    aget-object v0, v0, v4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_35

    .line 381
    :cond_2d
    aget-object v0, v0, v2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 384
    :goto_35
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    .line 385
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v1

    const-string/jumbo v3, "uicc"

    .line 386
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4b

    if-eqz v1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v4

    :goto_4c
    if-eqz v2, :cond_57

    const-string p1, "gba-u"

    .line 389
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_5f

    :cond_57
    const-string p1, "gba-me"

    .line 391
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 393
    :goto_5f
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/gba/Gba;->removeGbaKey([B[BI)V

    return-void
.end method

.method public storeGbaBootstrapParams(I[BLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_5

    return-void

    .line 106
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rand :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " btid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " keyLifetime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x11

    .line 107
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/os/ITelephonyManager;->setGbaBootstrappingParams(I[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storeGbaDataAndGenerateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BLcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;
    .registers 21

    .line 399
    invoke-static {p3}, Lcom/sec/internal/ims/gba/GbaServiceModule;->splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 400
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 401
    invoke-direct/range {v1 .. v10}, Lcom/sec/internal/ims/gba/GbaServiceModule;->generateGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;[BLcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;

    move-result-object v0

    .line 402
    sget-object v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storeGbaDataAndGenerateKey(): base64 gbaKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public transmitLogicChannel(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->iccOpenLogicalChannelAndGetChannel(ILjava/lang/String;)I

    move-result p2

    .line 116
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v4, 0x2

    const/16 v5, 0x88

    const/4 v6, 0x0

    const/16 v7, 0x84

    move v2, p1

    move v3, p2

    move v8, p4

    move-object v9, p3

    invoke-interface/range {v1 .. v9}, Lcom/sec/internal/helper/os/ITelephonyManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->iccCloseLogicalChannel(II)Z

    return-object p3
.end method
