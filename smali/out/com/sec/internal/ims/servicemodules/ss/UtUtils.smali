.class public Lcom/sec/internal/ims/servicemodules/ss/UtUtils;
.super Ljava/lang/Object;
.source "UtUtils.java"


# static fields
.field public static final DOMAIN_NAME:Ljava/lang/String; = ".3gppnetwork.org"

.field private static final LOG_TAG:Ljava/lang/String; = "UtUtils"

.field private static final PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

.field private static final PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

.field public static final XCAP_DOMAIN_NAME:Ljava/lang/String; = ".pub.3gppnetwork.org"

.field public static final XMLNS_CP:Ljava/lang/String; = "urn:ietf:params:xml:ns:common-policy"

.field public static final XMLNS_SS:Ljava/lang/String; = "http://uri.etsi.org/ngn/params/xml/simservs/xcap"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[+]?[#*\\-.()0-9]+"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

    const-string v0, "\\s+"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 470
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mncxxx.mccxxx"

    .line 471
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3e

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 475
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_3e
    const-string v0, "000"

    move-object p1, v0

    .line 481
    :cond_41
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mncxxx"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcc"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mccxxx"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_6f
    return-object p0
.end method

.method public static cleanBarringNum(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 732
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    const-string v0, "-"

    const-string v1, ""

    .line 735
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertCbTypeToBitMask(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    const/4 v0, 0x5

    if-eq p0, v0, :cond_19

    .line 443
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unexpected cbType"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_20

    :cond_19
    const/16 v0, 0xa

    goto :goto_20

    :cond_1c
    move v0, v1

    goto :goto_20

    :cond_1e
    const/16 v0, 0x8

    :cond_20
    :goto_20
    return v0
.end method

.method public static convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/16 v0, 0x10

    if-eq p0, v0, :cond_a

    .line 420
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0

    .line 418
    :cond_a
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0

    .line 416
    :cond_d
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0
.end method

.method public static doConvertIpVersion(Ljava/lang/String;)I
    .registers 10

    .line 449
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doConvertIpVersion type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_80

    goto :goto_76

    :sswitch_29
    const-string v0, "naptr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_76

    :cond_32
    move v8, v1

    goto :goto_76

    :sswitch_34
    const-string/jumbo v0, "srv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_76

    :cond_3e
    move v8, v2

    goto :goto_76

    :sswitch_40
    const-string v0, "ipv4v6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto :goto_76

    :cond_49
    move v8, v3

    goto :goto_76

    :sswitch_4b
    const-string v0, "ipv6pref"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto :goto_76

    :cond_54
    move v8, v4

    goto :goto_76

    :sswitch_56
    const-string v0, "ipv6only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto :goto_76

    :cond_5f
    move v8, v5

    goto :goto_76

    :sswitch_61
    const-string v0, "ipv4pref"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto :goto_76

    :cond_6a
    move v8, v6

    goto :goto_76

    :sswitch_6c
    const-string v0, "ipv4only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    goto :goto_76

    :cond_75
    move v8, v7

    :goto_76
    packed-switch v8, :pswitch_data_9e

    return v7

    :pswitch_7a
    return v4

    :pswitch_7b
    return v3

    :pswitch_7c
    return v1

    :pswitch_7d
    return v5

    :pswitch_7e
    return v2

    :pswitch_7f
    return v6

    :sswitch_data_80
    .sparse-switch
        -0x737decef -> :sswitch_6c
        -0x737d6a78 -> :sswitch_61
        -0x7361bded -> :sswitch_56
        -0x73613b76 -> :sswitch_4b
        -0x467268db -> :sswitch_40
        0x1bdf7 -> :sswitch_34
        0x63be45b -> :sswitch_29
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
    .end packed-switch
.end method

.method public static doconvertCBType(ZI)I
    .registers 2

    .line 0
    packed-switch p1, :pswitch_data_1e

    const/4 p0, 0x0

    return p0

    :pswitch_5
    if-eqz p0, :cond_a

    const/16 p0, 0x77

    goto :goto_c

    :cond_a
    const/16 p0, 0x76

    :goto_c
    return p0

    :pswitch_d
    if-eqz p0, :cond_12

    const/16 p0, 0x69

    goto :goto_14

    :cond_12
    const/16 p0, 0x68

    :goto_14
    return p0

    :pswitch_15
    if-eqz p0, :cond_1a

    const/16 p0, 0x67

    goto :goto_1c

    :cond_1a
    const/16 p0, 0x66

    :goto_1c
    return p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_15
        :pswitch_15
        :pswitch_5
        :pswitch_d
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public static doconvertCbCondition(I)Ljava/lang/String;
    .registers 4

    .line 360
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertICBtype type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_36

    const/4 v0, 0x4

    if-eq p0, v0, :cond_33

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2c

    const/16 v0, 0xa

    if-eq p0, v0, :cond_29

    const-string p0, ""

    return-object p0

    :cond_29
    const-string p0, "identity"

    return-object p0

    :cond_2c
    const-string p0, "anonymous"

    return-object p0

    :cond_2f
    const-string/jumbo p0, "roaming"

    return-object p0

    :cond_33
    const-string p0, "international-exHC"

    return-object p0

    :cond_36
    const-string p0, "international"

    return-object p0
.end method

.method public static doconvertCondition(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x6

    if-eq p0, v0, :cond_f

    const-string p0, ""

    return-object p0

    :cond_f
    const-string p0, "not-registered"

    return-object p0

    :cond_12
    const-string p0, "not-reachable"

    return-object p0

    :cond_15
    const-string p0, "no-answer"

    return-object p0

    :cond_18
    const-string p0, "busy"

    return-object p0
.end method

.method public static doconvertMediaTypeToSsClass(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/MEDIA;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_17

    .line 403
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0x10

    return p0

    .line 405
    :cond_d
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/16 p0, 0xff

    return p0
.end method

.method public static generate3GPPDomain(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 636
    :cond_4
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 637
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_12

    goto :goto_55

    :cond_12
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 642
    :try_start_14
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 643
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ims.mnc"

    .line 645
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%03d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mcc"

    .line 646
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".3gppnetwork.org"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_4f} :catch_50

    return-object p0

    :catch_50
    move-exception p0

    .line 649
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-object v0

    .line 638
    :cond_55
    :goto_55
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalid operator."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getAcceptEncoding(I)Ljava/lang/String;
    .registers 6

    .line 711
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 712
    sget-object v0, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELE2_RUSSIA:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, ""

    return-object p0

    :cond_1b
    const-string p0, "*"

    return-object p0
.end method

.method public static getBSFDomain(I)Ljava/lang/String;
    .registers 9

    const-string v0, "bsf_ip"

    const-string v1, ""

    .line 566
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 572
    :cond_f
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-nez v2, :cond_d3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_d3

    .line 580
    :cond_21
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v2

    const-string v3, ".pub.3gppnetwork.org"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_8a

    .line 582
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_39

    .line 584
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "NULL IMPI received from SIM :: Returning DEFAULT BSFIP !!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_39
    const/16 v1, 0x40

    .line 587
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_89

    .line 588
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_48

    goto :goto_89

    :cond_48
    add-int/2addr v1, v4

    .line 591
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".3gppnetwork.org"

    .line 592
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "bsf."

    if-eqz v2, :cond_79

    .line 596
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_62

    return-object v0

    .line 600
    :cond_62
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_88

    .line 607
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_88
    return-object p0

    :cond_89
    :goto_89
    return-object v0

    :cond_8a
    if-eqz v1, :cond_d2

    .line 610
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x5

    if-ge p0, v2, :cond_94

    goto :goto_d2

    :cond_94
    const/4 p0, 0x3

    .line 614
    :try_start_95
    invoke-virtual {v1, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bsf.mnc"

    .line 617
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%03d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mcc"

    .line 619
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_cd
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_cd} :catch_ce

    return-object p0

    :catch_ce
    move-exception p0

    .line 624
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_d2
    :goto_d2
    return-object v0

    .line 575
    :cond_d3
    :goto_d3
    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->buildDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const-string v0, "@"

    .line 753
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 755
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNAFDomain(I)Ljava/lang/String;
    .registers 8

    const-string v0, "auth_proxy_ip"

    const-string v1, ""

    .line 490
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-nez v1, :cond_f

    return-object v0

    .line 497
    :cond_f
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 498
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-eqz v4, :cond_1e

    return-object v0

    .line 503
    :cond_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 504
    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->buildDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 507
    :cond_29
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_da

    .line 508
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_38

    return-object v0

    .line 513
    :cond_38
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x40

    if-ne v2, v0, :cond_78

    const-string v0, "enable_gba"

    invoke-static {p0, v0, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p0

    if-ne p0, v6, :cond_78

    .line 514
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "naf."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 515
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xcapDomain :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 516
    :cond_78
    sget-object p0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v0, "xcap."

    if-ne v2, p0, :cond_ac

    .line 517
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mnc"

    .line 518
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c4

    add-int/lit8 v1, v0, 0x6

    .line 521
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnc000"

    .line 520
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_c4

    .line 524
    :cond_ac
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 527
    :cond_c4
    :goto_c4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "3gppnetwork.org"

    .line 528
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d9

    const-string/jumbo v1, "pub.3gppnetwork.org"

    .line 529
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_d9
    return-object p0

    :cond_da
    if-eqz v3, :cond_13d

    .line 534
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x5

    if-ge p0, v1, :cond_e4

    goto :goto_13d

    :cond_e4
    const/4 p0, 0x3

    .line 538
    :try_start_e5
    invoke-virtual {v3, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-virtual {v3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 540
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_f4

    const-string p0, "000"

    goto :goto_105

    .line 542
    :cond_f4
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_fd

    const-string v1, "460"

    const-string p0, "011"

    goto :goto_105

    .line 545
    :cond_fd
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_105

    const-string v1, "455"

    const-string p0, "007"

    .line 550
    :cond_105
    :goto_105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xcap.ims.mnc"

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%03d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v5

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mcc"

    .line 553
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".pub.3gppnetwork.org"

    .line 555
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_138
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_138} :catch_139

    return-object p0

    :catch_139
    move-exception p0

    .line 558
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_13d
    :goto_13d
    return-object v0
.end method

.method public static getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 663
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 668
    :cond_9
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 670
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_20

    return-object p0

    .line 673
    :cond_20
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 674
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    :cond_2b
    move-object p0, v1

    :goto_2c
    if-nez p0, :cond_2f

    move-object p0, v1

    .line 679
    :cond_2f
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object v1, p0

    :goto_3b
    return-object v1
.end method

.method protected static getSetting(ILjava/lang/String;I)I
    .registers 3

    .line 809
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected static getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 813
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getSetting(ILjava/lang/String;Z)Z
    .registers 3

    .line 805
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected static getSetting(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 801
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBsfDisableTls(I)Z
    .registers 3

    .line 740
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 744
    :cond_8
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 745
    sget-object v1, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v0
.end method

.method public static isCallBarringType(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x66

    if-eq p0, v0, :cond_13

    const/16 v0, 0x67

    if-eq p0, v0, :cond_13

    const/16 v0, 0x68

    if-eq p0, v0, :cond_13

    const/16 v0, 0x69

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isPutRequest(I)Z
    .registers 1

    .line 763
    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static makeInternationalNumber(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .registers 5

    .line 686
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    .line 688
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Country Code. Country Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 691
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 693
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_53

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_67

    .line 696
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_67
    return-object p0
.end method

.method public static makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;ILcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .registers 7

    const/16 v0, 0x69

    if-ne p1, v0, :cond_7

    const-string p1, "outgoing-communication-barring"

    goto :goto_9

    :cond_7
    const-string p1, "incoming-communication-barring"

    .line 83
    :goto_9
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string p1, "active"

    const-string/jumbo v1, "true"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    if-eqz p3, :cond_28

    const-string/jumbo v0, "ss"

    .line 86
    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    const-string/jumbo v1, "xmlns:ss"

    const-string v2, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 89
    :cond_28
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v1, "ruleset"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v1, "cp"

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    const-string/jumbo v1, "xmlns:cp"

    const-string/jumbo v2, "urn:ietf:params:xml:ns:common-policy"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 92
    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-static {v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_46

    .line 96
    :cond_5c
    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object p1
.end method

.method public static makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .registers 9

    .line 47
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "communication-diversion"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v1, "active"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    if-eqz p2, :cond_21

    const-string/jumbo v1, "ss"

    .line 49
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "xmlns:ss"

    const-string v3, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 52
    :cond_21
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    if-lez v1, :cond_30

    sget-object v2, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_30

    .line 53
    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 55
    :cond_30
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v2, "ruleset"

    invoke-direct {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v2, "cp"

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "xmlns:cp"

    const-string/jumbo v3, "urn:ietf:params:xml:ns:common-policy"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 59
    sget-object v4, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-ne p1, v4, :cond_6e

    iget-object v4, v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6e

    .line 60
    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    invoke-static {v3, p2, p1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    goto :goto_74

    .line 62
    :cond_6e
    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-static {v3, p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 64
    :goto_74
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_4e

    .line 67
    :cond_78
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object v0
.end method

.method public static makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;
    .registers 4

    .line 73
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "NoReplyTimer"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    if-eqz p1, :cond_13

    const-string/jumbo p1, "ss"

    .line 75
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_13
    return-object p0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .registers 14

    .line 253
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v1, "rule"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v1, "cp"

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 254
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "conditions"

    invoke-direct {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    .line 256
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCbCondition(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/16 v6, 0xa

    const-string/jumbo v7, "ss"

    if-nez v5, :cond_89

    .line 258
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const-string v8, "identity"

    if-ne v5, v6, :cond_72

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p1, v5, :cond_72

    .line 259
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    .line 260
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 261
    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v10, "one"

    invoke-direct {v9, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v9

    invoke-virtual {v9, v3, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_4f

    .line 263
    :cond_6e
    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_89

    .line 265
    :cond_72
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 267
    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_86

    :cond_81
    if-eqz p2, :cond_86

    .line 269
    invoke-virtual {v3, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 271
    :cond_86
    :goto_86
    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 275
    :cond_89
    :goto_89
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v4, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-eq v4, v6, :cond_ba

    const/4 v5, 0x6

    if-eq v4, v5, :cond_ba

    .line 276
    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    if-eqz v3, :cond_ba

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_ba

    .line 277
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a4
    :goto_a4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 278
    invoke-static {v4, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    if-eqz v4, :cond_a4

    .line 280
    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_a4

    .line 286
    :cond_ba
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-nez v3, :cond_d0

    .line 287
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v4, "rule-deactivated"

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_cd

    .line 289
    invoke-virtual {v3, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 291
    :cond_cd
    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 294
    :cond_d0
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "actions"

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 295
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "allow"

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_e7

    .line 297
    invoke-virtual {v3, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_e7
    const-string v4, "false"

    .line 299
    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 301
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 304
    sget-object v3, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->BATELCO_BAHRAIN:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v4, v5, v6, v8}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_192

    .line 306
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_109
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_192

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;

    .line 307
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->name:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 309
    array-length v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-ne v4, v8, :cond_12d

    .line 310
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    aget-object v3, v3, v6

    iget-object v9, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->value:Ljava/lang/String;

    invoke-direct {v4, v3, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13b

    .line 311
    :cond_12d
    array-length v4, v3

    if-ne v4, v5, :cond_189

    .line 312
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    aget-object v9, v3, v8

    iget-object v10, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->value:Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-direct {v4, v9, v10, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_13b
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->attribute:Ljava/lang/String;

    if-eqz p1, :cond_174

    const-string v3, "="

    .line 319
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 320
    array-length v3, p1

    if-ne v3, v5, :cond_16d

    .line 321
    aget-object v3, p1, v8

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15c

    aget-object v3, p1, v8

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_174

    .line 322
    :cond_15c
    aget-object v3, p1, v6

    aget-object p1, p1, v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_174

    .line 325
    :cond_16d
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "This is out of specification. So throw away attributes."

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_174
    :goto_174
    if-eqz p2, :cond_185

    .line 329
    iget-object p1, v4, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez p1, :cond_185

    iget-object p1, v4, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_185

    .line 330
    invoke-virtual {v4, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 332
    :cond_185
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_109

    .line 314
    :cond_189
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "This is out of specification. So never come here"

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_109

    .line 336
    :cond_192
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 337
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object v0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;
    .registers 4

    const/4 v0, 0x0

    .line 128
    invoke-static {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 154
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v5, "rule"

    invoke-direct {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v5, "cp"

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    const-string v7, "id"

    invoke-virtual {v4, v7, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    .line 155
    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v7, "conditions"

    invoke-direct {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v6

    .line 157
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const-string/jumbo v8, "ss"

    if-nez v7, :cond_42

    .line 158
    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v9, "rule-deactivated"

    invoke-direct {v7, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3f

    .line 160
    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 162
    :cond_3f
    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 165
    :cond_42
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCondition(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5d

    .line 167
    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v9, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_5a

    .line 169
    invoke-virtual {v9, v8}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 171
    :cond_5a
    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 174
    :cond_5d
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    if-eqz v7, :cond_87

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_87

    .line 175
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_71
    :goto_71
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_87

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 176
    invoke-static {v9, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v9

    if-eqz v9, :cond_71

    .line 178
    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_71

    .line 183
    :cond_87
    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 184
    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v7, "actions"

    invoke-direct {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    .line 186
    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v7, "forward-to"

    invoke-direct {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v9, "target"

    invoke-direct {v7, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_ac

    .line 189
    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 190
    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 193
    :cond_ac
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x4

    if-nez v9, :cond_c2

    .line 194
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 195
    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_e3

    .line 196
    :cond_c2
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-nez v9, :cond_e3

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e3

    .line 197
    sget-object v9, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v9, :cond_e0

    .line 198
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    if-ne v9, v10, :cond_e3

    .line 199
    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_e3

    .line 202
    :cond_e0
    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 206
    :cond_e3
    :goto_e3
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    if-eqz v7, :cond_192

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_192

    const/4 v9, 0x0

    .line 207
    :goto_f0
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_192

    .line 209
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->id:Ljava/lang/String;

    .line 210
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->value:Ljava/lang/String;

    .line 211
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->attribute:Ljava/lang/String;

    const-string v14, ":"

    .line 213
    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 214
    array-length v15, v14

    const/4 v10, 0x2

    const/4 v7, 0x1

    if-ne v15, v7, :cond_12f

    .line 215
    new-instance v14, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v14, v11, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13e

    .line 216
    :cond_12f
    array-length v11, v14

    if-ne v11, v10, :cond_185

    .line 217
    new-instance v11, Lcom/sec/internal/constants/ims/XmlElement;

    aget-object v15, v14, v7

    const/16 v16, 0x0

    aget-object v14, v14, v16

    invoke-direct {v11, v15, v12, v14}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v11

    :goto_13e
    if-eqz v13, :cond_16f

    const-string v11, "="

    .line 223
    invoke-virtual {v13, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 224
    array-length v12, v11

    if-ne v12, v10, :cond_16f

    .line 225
    aget-object v10, v11, v7

    const-string v12, "\""

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_15d

    aget-object v10, v11, v7

    const-string v12, "\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16f

    :cond_15d
    const/4 v10, 0x0

    .line 226
    aget-object v12, v11, v10

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v7

    invoke-virtual {v11, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v12, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_170

    :cond_16f
    const/4 v10, 0x0

    :goto_170
    if-eqz v1, :cond_181

    .line 231
    iget-object v7, v14, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez v7, :cond_181

    iget-object v7, v14, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_181

    .line 232
    invoke-virtual {v14, v8}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 235
    :cond_181
    invoke-virtual {v6, v14}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_18d

    :cond_185
    const/4 v10, 0x0

    .line 219
    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v11, "This is out of specification. So never come here"

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18d
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    goto/16 :goto_f0

    .line 239
    :cond_192
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    if-lez v3, :cond_19e

    .line 242
    invoke-static {v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 245
    :cond_19e
    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    if-ne v2, v1, :cond_1a9

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1ac

    .line 246
    :cond_1a9
    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_1ac
    return-object v4
.end method

.method public static makeSingleXml(Ljava/lang/String;IZ)Lcom/sec/internal/constants/ims/XmlElement;
    .registers 7

    .line 112
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance p0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "default-behaviour"

    invoke-direct {p0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_20

    const-string/jumbo p2, "ss"

    .line 116
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "xmlns:ss"

    const-string v3, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 117
    invoke-virtual {p0, p2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_20
    if-nez p1, :cond_25

    const-string p2, "false"

    goto :goto_28

    :cond_25
    const-string/jumbo p2, "true"

    :goto_28
    const-string v1, "active"

    .line 120
    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_33

    const-string p1, "presentation-restricted"

    goto :goto_35

    :cond_33
    const-string p1, "presentation-not-restricted"

    .line 121
    :goto_35
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 122
    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object v0
.end method

.method public static makeSingleXml(Ljava/lang/String;ZZ)Lcom/sec/internal/constants/ims/XmlElement;
    .registers 4

    .line 102
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_b

    const-string/jumbo p0, "true"

    goto :goto_d

    :cond_b
    const-string p0, "false"

    :goto_d
    const-string p1, "active"

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    if-eqz p2, :cond_24

    const-string/jumbo p1, "ss"

    .line 105
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    const-string/jumbo p2, "xmlns:ss"

    const-string v0, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_24
    return-object p0
.end method

.method public static makeXcapUserAgentHeader(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 767
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const-string/jumbo v0, "ro.build.PDA"

    .line 771
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 772
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_26

    .line 773
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BUILD_VERSION]"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_26
    if-eqz v0, :cond_3f

    .line 775
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_3f

    .line 776
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BUILD_VERSION_8_LETTER]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 778
    :cond_3f
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "[PRODUCT_MODEL]"

    if-eqz v1, :cond_58

    const-string/jumbo v0, "ro.product.base_model"

    .line 779
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5c

    .line 781
    :cond_58
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 783
    :goto_5c
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    const-string v1, "[PRODUCT_TYPE]"

    if-eqz v0, :cond_6b

    const-string v0, "device-type/tablet"

    .line 784
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_71

    :cond_6b
    const-string v0, "device-type/smart-phone"

    .line 786
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 789
    :goto_71
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const-string v1, "[OMCCODE]"

    .line 790
    invoke-static {p1, v0}, Lcom/sec/internal/helper/OmcCode;->getUserAgentNWCode(ILcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 792
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 793
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_95

    const-string v0, "[MCC_MNC]"

    .line 794
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_95
    return-object p0
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_18

    .line 703
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_18

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "0"

    .line 704
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_18
    return-object p0
.end method

.method private static setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .registers 4

    .line 132
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "media"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_f

    const-string/jumbo p1, "ss"

    .line 134
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 136
    :cond_f
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils$1;->$SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_25

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    goto :goto_2a

    :cond_1e
    const-string/jumbo p1, "video"

    .line 141
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_2a

    :cond_25
    const-string p1, "audio"

    .line 138
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 146
    :goto_2a
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-eq p0, p1, :cond_2f

    return-object v0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method
