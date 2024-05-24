.class public Lcom/sec/internal/ims/translate/ResipTranslatorCollection;
.super Ljava/lang/Object;
.source "ResipTranslatorCollection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResipTranslatorCollection"

.field private static final mAcceptContentTranslator:Lcom/sec/internal/helper/translate/MapTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MapTranslator<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Lcom/sec/internal/helper/translate/MapTranslator;

    new-instance v1, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;

    invoke-direct {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/MapTranslator;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->mAcceptContentTranslator:Lcom/sec/internal/helper/translate/MapTranslator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustMessageBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-string v1, "ResipTranslatorCollection"

    if-eqz p0, :cond_67

    if-nez p1, :cond_8

    goto :goto_67

    .line 532
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_38

    const-string v2, "charset="

    .line 533
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 534
    array-length v2, p1

    if-le v2, v3, :cond_38

    .line 535
    aget-object p1, p1, v3

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustMessageBody(): charset = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_38
    const-string p1, "UTF-8"

    .line 542
    :goto_3a
    :try_start_3a
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3a .. :try_end_43} :catch_60

    .line 544
    :try_start_43
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p0

    .line 543
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    if-eqz p0, :cond_54

    const-string/jumbo p1, "replace_specialcharacter"

    .line 547
    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    :cond_54
    if-eqz v3, :cond_66

    const/16 p0, 0xa4

    const/16 p1, 0x20ac

    .line 550
    invoke-virtual {v2, p0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2
    :try_end_5e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_5e} :catch_5f

    goto :goto_66

    :catch_5f
    move-object v0, v2

    :catch_60
    const-string p0, "adjustMessageBody(): unsupported charset!"

    .line 553
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    :cond_66
    :goto_66
    return-object v2

    :cond_67
    :goto_67
    const-string p0, "adjustMessageBody(): invalid data, skip the message!"

    .line 527
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getWarningCode(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)I
    .registers 3

    if-eqz p0, :cond_23

    .line 408
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->code()I

    move-result v0

    const/16 v1, 0x18f

    if-ne v0, v1, :cond_24

    .line 411
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->text()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    const-string v1, " "

    .line 413
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 415
    :try_start_17
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    move-exception p0

    .line 417
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_24

    :cond_23
    const/4 v0, -0x1

    :cond_24
    :goto_24
    return v0
.end method

.method public static getWarningText(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    .line 428
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->text()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_7
    const-string p0, ""

    :goto_9
    return-object p0
.end method

.method public static translateAcceptContent(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateAcceptContent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->mAcceptContentTranslator:Lcom/sec/internal/helper/translate/MapTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/translate/MapTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    return-object p0
.end method

.method public static translateFtError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .registers 5

    if-nez p0, :cond_5

    .line 369
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 371
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorType()I

    move-result v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateFtError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 374
    instance-of p0, p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    if-eqz p0, :cond_2a

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    invoke-static {p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0

    .line 376
    :cond_30
    invoke-static {p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0
.end method

.method public static translateFtProgressState(I)Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
    .registers 2

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const-string p0, "ResipTranslatorCollection"

    const-string/jumbo v0, "translateFtProgressState(): unsupported state! Use TRANSFERRING instead!"

    .line 445
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0

    .line 443
    :cond_16
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0

    .line 441
    :cond_19
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0

    .line 439
    :cond_1c
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->INTERRUPTED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0

    .line 437
    :cond_1f
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0
.end method

.method public static translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .registers 3

    .line 362
    invoke-static {p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 363
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateResult(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p0

    return-object p0
.end method

.method public static translateFtSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .registers 3

    if-eqz p0, :cond_8

    .line 382
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->code()J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_9

    :cond_8
    const/4 p0, -0x1

    .line 384
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateFtSessionReleaseError: cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_40

    const/16 v0, 0x198

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_3a

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_37

    const/16 v0, 0x25b

    if-eq p0, v0, :cond_40

    .line 396
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 394
    :cond_37
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 392
    :cond_3a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 390
    :cond_3d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 388
    :cond_40
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0
.end method

.method public static translateFwImExtensionHeaders(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 562
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->sipExtensions()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 563
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->sipExtensions()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;

    move-result-object p0

    const/4 v1, 0x0

    .line 564
    :goto_10
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pairLength()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 565
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->key()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImExtension Header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipTranslatorCollection"

    .line 566
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->value()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_6a
    return-object v0
.end method

.method public static translateFwImdnNoti(Ljava/util/Set;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;)[I"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateFwImdnNoti(): notifications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, -0x1

    .line 489
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 491
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 492
    sget-object v4, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$2;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5f

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_55

    const/4 v5, 0x4

    if-eq v3, v5, :cond_50

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4b

    goto :goto_27

    :cond_4b
    add-int/lit8 v3, v2, 0x1

    .line 506
    aput v5, v0, v2

    goto :goto_63

    :cond_50
    add-int/lit8 v3, v2, 0x1

    .line 503
    aput v4, v0, v2

    goto :goto_63

    :cond_55
    add-int/lit8 v3, v2, 0x1

    .line 500
    aput v5, v0, v2

    goto :goto_63

    :cond_5a
    add-int/lit8 v3, v2, 0x1

    .line 497
    aput v4, v0, v2

    goto :goto_63

    :cond_5f
    add-int/lit8 v3, v2, 0x1

    .line 494
    aput v1, v0, v2

    :goto_63
    move v2, v3

    goto :goto_27

    :cond_65
    return-object v0
.end method

.method public static translateImConferenceUserElemState(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;
    .registers 2

    if-nez p0, :cond_5

    .line 649
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object p0

    :cond_5
    const-string v0, "partial"

    .line 651
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 657
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object p0

    .line 653
    :cond_18
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object p0

    .line 655
    :cond_1b
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->PARTIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object p0
.end method

.method public static translateImError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .registers 5

    if-nez p0, :cond_5

    .line 153
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 155
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorType()I

    move-result v0

    .line 156
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorCode()I

    move-result p0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateImError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_60

    .line 182
    :pswitch_28
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 180
    :pswitch_2b
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 162
    :pswitch_2e
    invoke-static {p0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0

    .line 178
    :pswitch_33
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 176
    :pswitch_36
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 174
    :pswitch_39
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 172
    :pswitch_3c
    instance-of p0, p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    if-eqz p0, :cond_43

    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    .line 171
    :cond_43
    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0

    .line 169
    :pswitch_48
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 167
    :pswitch_4b
    invoke-static {p0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateMSRPError(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0

    .line 165
    :pswitch_50
    instance-of v0, p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    if-eqz v0, :cond_57

    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    .line 164
    :cond_57
    invoke-static {p0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0

    .line 160
    :pswitch_5c
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_50
        :pswitch_4b
        :pswitch_48
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_28
        :pswitch_33
        :pswitch_2e
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public static translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .registers 3

    .line 145
    invoke-static {p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 146
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateResult(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p0

    return-object p0
.end method

.method public static translateImSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .registers 4

    if-eqz p0, :cond_c

    .line 333
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->code()J

    move-result-wide v0

    long-to-int v0, v0

    .line 334
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->text()Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_c
    const/4 v0, -0x1

    const-string p0, ""

    .line 336
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateImSessionReleaseError: cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", causeText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4a

    const/16 p0, 0x198

    if-eq v0, p0, :cond_47

    const/16 p0, 0x19a

    if-eq v0, p0, :cond_44

    const/16 p0, 0x1e0

    if-eq v0, p0, :cond_41

    .line 356
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 342
    :cond_41
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_BEARER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 340
    :cond_44
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 344
    :cond_47
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 346
    :cond_4a
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "check_byecause"

    .line 347
    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string v0, "Booted"

    .line 348
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 349
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONFERENCE_PARTY_BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :cond_65
    const-string v0, "Call Completed"

    .line 350
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_70

    .line 351
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONFERENCE_CALL_COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 354
    :cond_70
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0
.end method

.method public static translateMSRPError(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .registers 3

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateMSRPError(): ErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x190

    if-eq p0, v0, :cond_5d

    const/16 v0, 0x193

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x198

    if-eq p0, v0, :cond_57

    const/16 v0, 0x19d

    if-eq p0, v0, :cond_54

    const/16 v0, 0x19f

    if-eq p0, v0, :cond_51

    const/16 v0, 0x1a7

    if-eq p0, v0, :cond_4e

    const/16 v0, 0x1e1

    if-eq p0, v0, :cond_4b

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_48

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_45

    const/16 v0, 0x1fa

    if-eq p0, v0, :cond_42

    .line 325
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 323
    :cond_42
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 321
    :cond_45
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->OUTOFSERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 319
    :cond_48
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 317
    :cond_4b
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 315
    :cond_4e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 313
    :cond_51
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 311
    :cond_54
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 309
    :cond_57
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 307
    :cond_5a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 305
    :cond_5d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0
.end method

.method public static translateResult(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .registers 10

    .line 73
    invoke-static {p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateResultType(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    .line 80
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-eq v2, v1, :cond_1f

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-ne v2, v1, :cond_10

    goto :goto_1f

    .line 82
    :cond_10
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-ne v2, v1, :cond_2a

    .line 83
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorCode()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p1

    move-object v4, p1

    move-object v3, v0

    goto :goto_2c

    .line 81
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorCode()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object p1

    move-object v3, p1

    move-object v4, v0

    goto :goto_2c

    :cond_2a
    move-object v3, v0

    move-object v4, v3

    :goto_2c
    if-eqz p2, :cond_5b

    .line 87
    instance-of p1, p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    if-eqz p1, :cond_44

    .line 88
    check-cast p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    .line 89
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    .line 90
    invoke-static {p2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->getWarningCode(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->text()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;-><init>(ILjava/lang/String;)V

    move-object v5, p1

    move-object v6, v0

    goto :goto_5d

    .line 91
    :cond_44
    instance-of p1, p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    if-eqz p1, :cond_5b

    .line 92
    check-cast p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    .line 93
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    .line 94
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->code()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->text()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;-><init>(ILjava/lang/String;)V

    move-object v6, p1

    move-object v5, v0

    goto :goto_5d

    :cond_5b
    move-object v5, v0

    move-object v6, v5

    .line 97
    :goto_5d
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    return-object p1
.end method

.method private static translateResultType(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .registers 2

    .line 101
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-eqz p0, :cond_29

    .line 103
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorType()I

    move-result p0

    packed-switch p0, :pswitch_data_2a

    :pswitch_b
    goto :goto_29

    .line 133
    :pswitch_c
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_29

    .line 109
    :pswitch_f
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_29

    .line 130
    :pswitch_12
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_29

    .line 127
    :pswitch_15
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_29

    .line 124
    :pswitch_18
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_29

    .line 121
    :pswitch_1b
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_29

    .line 118
    :pswitch_1e
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_29

    .line 115
    :pswitch_21
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_29

    .line 112
    :pswitch_24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_29

    .line 106
    :pswitch_27
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    :cond_29
    :goto_29
    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_b
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .registers 5

    .line 188
    invoke-static {p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->getWarningCode(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)I

    move-result v0

    .line 189
    invoke-static {p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->getWarningText(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Ljava/lang/String;

    move-result-object p1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateSIPError(): ErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", WarningCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_157

    const/16 v1, 0xb5

    if-eq p0, v1, :cond_154

    const/16 v1, 0x1a4

    if-eq p0, v1, :cond_151

    const/16 v1, 0x1a5

    if-eq p0, v1, :cond_14e

    const/16 v1, 0x1ed

    if-eq p0, v1, :cond_14b

    const/16 v1, 0x1ee

    if-eq p0, v1, :cond_148

    const/16 v1, 0x25b

    if-eq p0, v1, :cond_145

    const/16 v1, 0x25c

    if-eq p0, v1, :cond_142

    sparse-switch p0, :sswitch_data_15a

    packed-switch p0, :pswitch_data_194

    const/16 v1, 0x7b

    packed-switch p0, :pswitch_data_19e

    packed-switch p0, :pswitch_data_1aa

    packed-switch p0, :pswitch_data_1b6

    packed-switch p0, :pswitch_data_1cc

    .line 297
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SIP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 288
    :pswitch_5e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SIP_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 287
    :pswitch_61
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVER_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 286
    :pswitch_64
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 285
    :pswitch_67
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BAD_GATEWAY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 284
    :pswitch_6a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_IMPLEMENTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 283
    :pswitch_6d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INTERNAL_SERVER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 279
    :pswitch_70
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 278
    :pswitch_73
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :pswitch_76
    const/16 p0, 0x66

    if-eq v0, p0, :cond_7d

    .line 275
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 273
    :cond_7d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->EXCEED_MAXIMUM_RECIPIENTS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 269
    :pswitch_80
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->AMBIGUOUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 268
    :pswitch_83
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ADDRESS_INCOMPLETE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 267
    :pswitch_86
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TOO_MANY_HOPS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 266
    :pswitch_89
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->LOOP_DETECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :pswitch_8c
    if-eq v0, v1, :cond_91

    .line 263
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 261
    :cond_91
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 257
    :pswitch_94
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 253
    :pswitch_97
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_URI_SCHEME:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 252
    :pswitch_9a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_MEDIA_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 251
    :pswitch_9d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_URI_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 250
    :pswitch_a0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_ENTITY_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 247
    :pswitch_a3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_ACCEPTABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 246
    :pswitch_a6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :pswitch_a9
    if-eq v0, v1, :cond_ae

    .line 243
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 241
    :cond_ae
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :pswitch_b1
    const/16 p0, 0x69

    if-eq v0, p0, :cond_10c

    const/16 p0, 0x77

    if-eq v0, p0, :cond_109

    const/16 p0, 0x7f

    if-eq v0, p0, :cond_106

    const/16 p0, 0x81

    if-eq v0, p0, :cond_103

    const/16 p0, 0x17d

    if-eq v0, p0, :cond_100

    const/16 p0, 0x1e8

    if-eq v0, p0, :cond_f2

    const/16 p0, 0x7a

    if-eq v0, p0, :cond_ef

    if-eq v0, v1, :cond_ec

    const/16 p0, 0x84

    if-eq v0, p0, :cond_e9

    const/16 p0, 0x85

    if-eq v0, p0, :cond_e6

    packed-switch v0, :pswitch_data_1dc

    .line 235
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 226
    :pswitch_dd
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SPAM_SENDER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 224
    :pswitch_e0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_CHATBOT_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 222
    :pswitch_e3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_TOKEN_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 214
    :cond_e6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 212
    :cond_e9
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 208
    :cond_ec
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 216
    :cond_ef
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :cond_f2
    const-string p0, "Chatbot Conversation Needed"

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_fd

    .line 231
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_CHATBOT_CONVERSATION_NEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 232
    :cond_fd
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 228
    :cond_100
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_MAX_GROUP_NUMBER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 220
    :cond_103
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 210
    :cond_106
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 218
    :cond_109
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 206
    :cond_10c
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 199
    :pswitch_10f
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_TEMPORARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 198
    :pswitch_112
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_PERMANENTLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 197
    :pswitch_115
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MULTIPLE_CHOICES:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 295
    :sswitch_118
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 294
    :sswitch_11b
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NO_DNS_RESULTS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 293
    :sswitch_11e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVER_NOT_ACCEPTABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 290
    :sswitch_121
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 289
    :sswitch_124
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MESSAGE_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 280
    :sswitch_127
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 256
    :sswitch_12a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INTERVAL_TOO_BRIEF:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 249
    :sswitch_12d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 248
    :sswitch_130
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 202
    :sswitch_133
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 201
    :sswitch_136
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ALTERNATE_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 200
    :sswitch_139
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->USE_PROXY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 196
    :sswitch_13c
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_PROGRESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 193
    :sswitch_13f
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRYING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 292
    :cond_142
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOTEXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 291
    :cond_145
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 282
    :cond_148
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SECURITY_AGREEMENT_REQD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 281
    :cond_14b
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNDECEIPHERABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 255
    :cond_14e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->EXTENSION_REQUIRED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 254
    :cond_151
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BAD_EXTENSION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 195
    :cond_154
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CALL_IS_BEING_FORWARDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 194
    :cond_157
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->RINGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :sswitch_data_15a
    .sparse-switch
        0x64 -> :sswitch_13f
        0xb7 -> :sswitch_13c
        0x131 -> :sswitch_139
        0x17c -> :sswitch_136
        0x190 -> :sswitch_133
        0x198 -> :sswitch_130
        0x19a -> :sswitch_12d
        0x1a7 -> :sswitch_12a
        0x1eb -> :sswitch_127
        0x201 -> :sswitch_124
        0x258 -> :sswitch_121
        0x25e -> :sswitch_11e
        0x2bf -> :sswitch_11b
        0x2c5 -> :sswitch_118
    .end sparse-switch

    :pswitch_data_194
    .packed-switch 0x12c
        :pswitch_115
        :pswitch_112
        :pswitch_10f
    .end packed-switch

    :pswitch_data_19e
    .packed-switch 0x193
        :pswitch_b1
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0x19d
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
    .end packed-switch

    :pswitch_data_1b6
    .packed-switch 0x1e0
        :pswitch_94
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_76
        :pswitch_73
        :pswitch_70
    .end packed-switch

    :pswitch_data_1cc
    .packed-switch 0x1f4
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
    .end packed-switch

    :pswitch_data_1dc
    .packed-switch 0xcc
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
    .end packed-switch
.end method

.method public static translateStackImExtensionHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/Map;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 579
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 583
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 584
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 585
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 586
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 587
    invoke-static {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 588
    invoke-static {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    add-int/lit8 v2, v1, 0x1

    .line 589
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    aput v3, v0, v1

    move v1, v2

    goto :goto_f

    .line 592
    :cond_42
    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p1

    .line 594
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 595
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 596
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 599
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->startImExtension(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 600
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->addSipExtensions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 601
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->endImExtension(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateStackImdnNoti(): notifications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 457
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "translateStackImdnNoti(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_6c

    const/4 v3, 0x1

    if-eq v2, v3, :cond_66

    const/4 v3, 0x2

    if-eq v2, v3, :cond_60

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5a

    const/4 v3, 0x4

    if-eq v2, v3, :cond_54

    goto :goto_20

    .line 473
    :cond_54
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 470
    :cond_5a
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 467
    :cond_60
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 464
    :cond_66
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 461
    :cond_6c
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_72
    return-object v0
.end method

.method public static translateToImConferenceDisconnectionReason(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;
    .registers 3

    .line 632
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_48

    goto :goto_37

    :sswitch_c
    const-string v0, "departed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_37

    :cond_15
    const/4 v1, 0x3

    goto :goto_37

    :sswitch_17
    const-string v0, "busy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_37

    :cond_20
    const/4 v1, 0x2

    goto :goto_37

    :sswitch_22
    const-string v0, "failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_37

    :cond_2b
    const/4 v1, 0x1

    goto :goto_37

    :sswitch_2d
    const-string v0, "booted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    packed-switch v1, :pswitch_data_5a

    const/4 p0, 0x0

    return-object p0

    .line 636
    :pswitch_3c
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->DEPARTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object p0

    .line 638
    :pswitch_3f
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BUSY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object p0

    .line 640
    :pswitch_42
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object p0

    .line 634
    :pswitch_45
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object p0

    :sswitch_data_48
    .sparse-switch
        -0x5274acef -> :sswitch_2d
        -0x4c696bc3 -> :sswitch_22
        0x2e51f9 -> :sswitch_17
        0x37762793 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
    .end packed-switch
.end method

.method public static translateToImConferenceParticipantStatus(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;
    .registers 3

    .line 606
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_94

    goto/16 :goto_72

    :sswitch_d
    const-string v0, "alerting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_72

    :cond_17
    const/16 v1, 0x8

    goto/16 :goto_72

    :sswitch_1b
    const-string v0, "disconnecting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_72

    :cond_24
    const/4 v1, 0x7

    goto :goto_72

    :sswitch_26
    const-string v0, "muted-via-focus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_72

    :cond_2f
    const/4 v1, 0x6

    goto :goto_72

    :sswitch_31
    const-string v0, "connected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_72

    :cond_3a
    const/4 v1, 0x5

    goto :goto_72

    :sswitch_3c
    const-string v0, "pending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto :goto_72

    :cond_45
    const/4 v1, 0x4

    goto :goto_72

    :sswitch_47
    const-string v0, "dialing-out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto :goto_72

    :cond_50
    const/4 v1, 0x3

    goto :goto_72

    :sswitch_52
    const-string v0, "on-hold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto :goto_72

    :cond_5b
    const/4 v1, 0x2

    goto :goto_72

    :sswitch_5d
    const-string v0, "disconnected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    goto :goto_72

    :cond_66
    const/4 v1, 0x1

    goto :goto_72

    :sswitch_68
    const-string v0, "dialing-in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_71

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    :goto_72
    packed-switch v1, :pswitch_data_ba

    .line 626
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 612
    :pswitch_78
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ALERTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 618
    :pswitch_7b
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 620
    :pswitch_7e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->MUTED_VIA_FOCUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 608
    :pswitch_81
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->CONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 624
    :pswitch_84
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 616
    :pswitch_87
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 622
    :pswitch_8a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ON_HOLD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 610
    :pswitch_8d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 614
    :pswitch_90
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_IN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    nop

    :sswitch_data_94
    .sparse-switch
        -0x5c60cda0 -> :sswitch_68
        -0x525651c5 -> :sswitch_5d
        -0x51cc2413 -> :sswitch_52
        -0x2fb8ce8d -> :sswitch_47
        -0x28af7669 -> :sswitch_3c
        -0x22860cf7 -> :sswitch_31
        0x43bb877 -> :sswitch_26
        0x78c29c6 -> :sswitch_1b
        0x60494106 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
    .end packed-switch
.end method
