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
    .locals 1

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
    .locals 0

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
    .locals 1

    .line 544
    sget p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaIdCounter:I

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    .line 545
    sput p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaIdCounter:I

    .line 547
    :cond_0
    sget p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaIdCounter:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaIdCounter:I

    return p0
.end method

.method private generateGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;[BLcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v1, p3

    .line 378
    iget-object v2, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 382
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>([B)V

    .line 384
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

    .line 388
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x2

    if-eqz v2, :cond_3

    .line 389
    invoke-static/range {p9 .. p9}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-virtual {v0, v2, v1, v14, v15}, Lcom/sec/internal/ims/gba/GbaServiceModule;->storeGbaBootstrapParams(I[BLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p6

    move/from16 v9, p8

    .line 394
    invoke-static {v12, v10, v9}, Lcom/sec/internal/ims/gba/GbaUtility;->getSecurityProtocolId([B[BZ)[B

    move-result-object v1

    .line 396
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-static/range {p9 .. p9}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getGbaKeyResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateGbaKey(): response: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 401
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/gba/GbaServiceModule;->parseResKeyFromIsimResponse([B)Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v8, v3

    .line 409
    iget-object v0, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    if-eqz v0, :cond_4

    if-eqz v8, :cond_4

    .line 410
    invoke-static {v8, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_1

    :cond_3
    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v10, p6

    move/from16 v9, p8

    const/4 v2, 0x1

    const/16 v3, 0x11

    .line 414
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move/from16 v8, p9

    .line 415
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getImpi(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual/range {p7 .. p7}, Lcom/sec/internal/ims/gba/params/GbaData;->getCipkey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lcom/sec/internal/ims/gba/params/GbaData;->getIntkey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 418
    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    .line 416
    invoke-static/range {v1 .. v10}, Lcom/sec/internal/ims/gba/GbaUtility;->igenerateGbaMEKey([B[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Z[B)Ljava/lang/String;

    move-result-object v8

    .line 420
    iget-object v0, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    if-eqz v0, :cond_4

    .line 421
    invoke-static {v8, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;ZI)V

    :cond_4
    :goto_1
    return-object v8
.end method

.method private getGbaKeyResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 503
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 504
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

    .line 505
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const-string v1, ""

    .line 510
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v3, 0x5

    invoke-interface {v2, p1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    .line 511
    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->transmitLogicChannel(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 512
    sget-object p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getGbaKeyResponse response "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private getIsimResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 519
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 523
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "00"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 524
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const-string v1, ""

    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v3, 0x5

    invoke-interface {v2, p1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    .line 530
    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->transmitLogicChannel(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 531
    sget-object p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIsimResponse response "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private isRealmFromUsername(I)Z
    .locals 0

    .line 538
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 539
    sget-object p1, Lcom/sec/internal/constants/Mno;->KPN_NED:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/Mno;->TELEFONICA_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 361
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    .line 360
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 364
    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 365
    sget-object v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded AKA Challenge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    const-string p0, ""

    .line 367
    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 370
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "10"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getBtidAndGbaKey(Landroid/telephony/gba/GbaAuthRequest;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I
    .locals 6

    monitor-enter p0

    .line 208
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "GBA: getBtidAndGbaKey GbaAuthRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSubId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSlotId(I)I

    move-result v0

    .line 210
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 211
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getNafUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    .line 213
    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 214
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const-wide/16 v4, 0x1388

    .line 215
    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 216
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getBSFDomain(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setBsfUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 218
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getNafUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 220
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-ne v1, v0, :cond_0

    .line 221
    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseImei(Z)V

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSecurityProtocol()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSecurityProtocol()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSecurityProtocol()[B

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v5, 0x3

    .line 227
    aget-byte v5, p1, v5

    aput-byte v5, v0, v1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    aput-byte p1, v0, v4

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCipherSuite([B)V

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSecurityProtocol()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCipherSuite([B)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 232
    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    monitor-enter p0

    .line 236
    :try_start_0
    sget-object v4, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "GBA: getBtidAndGbaKey"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, -0x1

    if-nez v3, :cond_0

    .line 238
    monitor-exit p0

    return v8

    .line 241
    :cond_0
    :try_start_1
    iget-object v5, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v5, :cond_1

    .line 242
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    monitor-exit p0

    return v8

    .line 246
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v5

    .line 247
    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v6

    .line 249
    iget-object v7, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v7, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v7

    .line 250
    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    const-string v10, "3GPP-bootstrapping"

    .line 251
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_4

    const-string/jumbo v10, "uicc"

    .line 252
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    move v7, v11

    goto :goto_0

    :cond_2
    move v7, v12

    .line 253
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    sget-object v10, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v9, v10, :cond_3

    goto :goto_1

    :cond_3
    move v10, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v10, v12

    .line 259
    :goto_2
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->createRequestId()I

    move-result v13

    if-eqz v10, :cond_5

    const-string v2, "gba-u"

    .line 264
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_3

    :cond_5
    const-string v2, "gba-me"

    .line 266
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    :goto_3
    move-object v14, v2

    const-string v2, "GBA: NO GBA information, need send BSF request"

    .line 269
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    invoke-virtual {v0, v13}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setToken(I)V

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getBsfUrl()Ljava/lang/String;

    move-result-object v4

    .line 278
    iget-object v2, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v7, "bsf_port"

    const/16 v15, 0x50

    invoke-interface {v2, v5, v7, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v7

    if-eqz v4, :cond_e

    if-gez v7, :cond_6

    goto/16 :goto_7

    .line 284
    :cond_6
    iget-object v2, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v8

    .line 285
    iget-object v2, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    iget-object v3, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getImpi(I)Ljava/lang/String;

    move-result-object v6

    .line 289
    invoke-static {v5}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v15

    if-nez v15, :cond_7

    goto :goto_4

    .line 290
    :cond_7
    invoke-interface {v15}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v12

    .line 291
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    if-nez v12, :cond_9

    .line 292
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v2, "@"

    const/4 v12, 0x2

    .line 293
    invoke-virtual {v6, v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v11

    .line 297
    :cond_9
    invoke-direct {v1, v5}, Lcom/sec/internal/ims/gba/GbaServiceModule;->isRealmFromUsername(I)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v11, v2

    goto :goto_6

    .line 299
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "bsf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5

    :cond_b
    move-object v11, v3

    goto :goto_6

    :cond_c
    :goto_5
    move-object v11, v4

    :goto_6
    if-eqz p3, :cond_d

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getCipherSuite()[B

    move-result-object v2

    if-eqz v2, :cond_d

    .line 304
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getCipherSuite()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCipherSuite([B)V

    .line 307
    :cond_d
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v2

    move-object v3, v4

    move v4, v7

    move-object v5, v6

    move-object v6, v8

    move-object v7, v11

    move-object v8, v14

    move-object/from16 v11, p1

    invoke-virtual/range {v2 .. v11}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendBsfRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    monitor-exit p0

    return v13

    :cond_e
    :goto_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p4

    move v3, v13

    move-object/from16 v7, p3

    .line 280
    :try_start_3
    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onComplete(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    monitor-exit p0

    return v8

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBtidFromSim(I)Ljava/lang/String;
    .locals 2

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
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    return-object p0
.end method

.method public getGbaValue(ILjava/lang/String;)Lcom/sec/internal/ims/gba/GbaValue;
    .locals 2

    .line 313
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    sget-object p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Invalid URI"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 317
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 318
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "gba-me"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/gba/Gba;->getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object p0

    return-object p0
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 188
    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImpi(I)Ljava/lang/String;
    .locals 1

    .line 167
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_1

    .line 171
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object p1

    .line 174
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getKeyLifetime(I)Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getKeyLifetime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPassword(Ljava/lang/String;ZI)Lcom/sec/internal/ims/gba/params/GbaData;
    .locals 8

    .line 432
    invoke-static {p1}, Lcom/sec/internal/ims/gba/GbaServiceModule;->splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 433
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

    if-eqz p2, :cond_0

    .line 437
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getIsimResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    .line 440
    :cond_1
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    return-object v0

    .line 447
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "dc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 448
    new-instance p1, Lcom/sec/internal/ims/gba/params/GbaData;

    const-string p2, ""

    invoke-direct {p1, p0, p2, p2}, Lcom/sec/internal/ims/gba/params/GbaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 451
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "db"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 452
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

    .line 458
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_5

    return-object v0

    .line 465
    :cond_5
    aget-byte v1, p1, v1

    .line 466
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int v4, v3, v1

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const-string v6, "CP1252"

    .line 467
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 469
    sget-object v5, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPassword(): password = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_7

    add-int/lit8 p2, v4, 0x1

    .line 473
    aget-byte v0, p1, v4

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v3

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    .line 479
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p2, v0

    .line 482
    aget-byte p1, p1, p2

    if-gez p1, :cond_6

    rsub-int p1, p1, 0x100

    :cond_6
    add-int/2addr v4, v3

    mul-int/2addr p1, v3

    add-int/2addr p1, v4

    .line 489
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    :cond_7
    move-object p0, v0

    .line 492
    :goto_2
    new-instance p1, Lcom/sec/internal/ims/gba/params/GbaData;

    invoke-direct {p1, v2, v0, p0}, Lcom/sec/internal/ims/gba/params/GbaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/gba/params/GbaData;->setPhoneId(I)V

    return-object p1
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 2

    const-string/jumbo p0, "ss"

    const-string v0, "mmtel"

    const-string v1, "ft_http"

    .line 73
    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 68
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    return-void
.end method

.method public initGbaAccessibleObj()Z
    .locals 1

    .line 198
    new-instance v0, Lcom/sec/internal/ims/gba/Gba;

    invoke-direct {v0}, Lcom/sec/internal/ims/gba/Gba;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    const/4 p0, 0x1

    return p0
.end method

.method public isGbaUiccSupported(I)Z
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result p0

    return p0
.end method

.method public parseResKeyFromIsimResponse([B)Ljava/lang/String;
    .locals 6

    .line 125
    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

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

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    .line 130
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->resLen:I

    if-lt v5, v0, :cond_0

    const-string p0, "Illegal response received from iSim"

    .line 132
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 136
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->resLen:I

    new-array v0, p0, [B

    .line 138
    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
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

    :cond_1
    return-object v1
.end method

.method public removeGbaCallback(I)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public resetGbaKey(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "@"

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 324
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 325
    sget-object p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "realm does not have @. resetGbaKey can not process."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 329
    :cond_0
    aget-object v1, v0, v2

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 331
    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 332
    aget-object v0, v0, v4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_1
    aget-object v0, v0, v2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 337
    :goto_0
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    .line 338
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v1

    const-string/jumbo v3, "uicc"

    .line 339
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    if-eqz v2, :cond_3

    .line 342
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "gba-u"

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_2

    .line 344
    :cond_3
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "gba-me"

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 346
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/gba/Gba;->removeGbaKey([B[BI)V

    return-void
.end method

.method public storeGbaBootstrapParams(I[BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rand :"

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
    .locals 11

    .line 352
    invoke-static {p3}, Lcom/sec/internal/ims/gba/GbaServiceModule;->splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 353
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

    .line 354
    invoke-direct/range {v1 .. v10}, Lcom/sec/internal/ims/gba/GbaServiceModule;->generateGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;[BLcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;

    move-result-object v0

    .line 355
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
    .locals 10
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
