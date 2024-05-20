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
    .locals 1

    const-string v0, "[+]?[#*\\-.()0-9]+"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

    const-string v0, "\\s+"

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "mncXXX.mccXXX"

    .line 463
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "000"

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 467
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 473
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnc"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mncXXX"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcc"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mccXXX"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static cleanBarringNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 724
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "-"

    const-string v1, ""

    .line 727
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertCbTypeToBitMask(I)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 436
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unexpected cbType"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    :cond_4
    :goto_0
    return v0
.end method

.method public static convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    .line 413
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0

    .line 411
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0

    .line 409
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0
.end method

.method public static doConvertIpVersion(Ljava/lang/String;)I
    .locals 9

    .line 442
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doConvertIpVersion type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
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

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "naptr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v8, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "srv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v8, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "ipv4v6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v8, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "ipv6pref"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v8, v4

    goto :goto_0

    :sswitch_4
    const-string v0, "ipv6only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v8, v5

    goto :goto_0

    :sswitch_5
    const-string v0, "ipv4pref"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v8, v6

    goto :goto_0

    :sswitch_6
    const-string v0, "ipv4only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v8, v7

    :goto_0
    packed-switch v8, :pswitch_data_0

    return v7

    :pswitch_0
    return v4

    :pswitch_1
    return v3

    :pswitch_2
    return v1

    :pswitch_3
    return v5

    :pswitch_4
    return v2

    :pswitch_5
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x737decef -> :sswitch_6
        -0x737d6a78 -> :sswitch_5
        -0x7361bded -> :sswitch_4
        -0x73613b76 -> :sswitch_3
        -0x467268db -> :sswitch_2
        0x1bdf7 -> :sswitch_1
        0x63be45b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static doconvertCBType(ZI)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    if-eqz p0, :cond_0

    const/16 p0, 0x77

    goto :goto_0

    :cond_0
    const/16 p0, 0x76

    :goto_0
    return p0

    :pswitch_1
    if-eqz p0, :cond_1

    const/16 p0, 0x69

    goto :goto_1

    :cond_1
    const/16 p0, 0x68

    :goto_1
    return p0

    :pswitch_2
    if-eqz p0, :cond_2

    const/16 p0, 0x67

    goto :goto_2

    :cond_2
    const/16 p0, 0x66

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static doconvertCbCondition(I)Ljava/lang/String;
    .locals 3

    .line 353
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

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "identity"

    return-object p0

    :cond_1
    const-string p0, "anonymous"

    return-object p0

    :cond_2
    const-string p0, "roaming"

    return-object p0

    :cond_3
    const-string p0, "international-exHC"

    return-object p0

    :cond_4
    const-string p0, "international"

    return-object p0
.end method

.method public static doconvertCondition(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "not-registered"

    return-object p0

    :cond_1
    const-string p0, "not-reachable"

    return-object p0

    :cond_2
    const-string p0, "no-answer"

    return-object p0

    :cond_3
    const-string p0, "busy"

    return-object p0
.end method

.method public static doconvertMediaTypeToSsClass(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/MEDIA;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 396
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x10

    return p0

    .line 398
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 p0, 0xff

    return p0
.end method

.method public static generate3GPPDomain(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 628
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 629
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 634
    :try_start_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 635
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ims.mnc"

    .line 637
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

    .line 638
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".3gppnetwork.org"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 641
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-object v0

    .line 630
    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalid operator."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getAcceptEncoding(I)Ljava/lang/String;
    .locals 1

    .line 703
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 704
    sget-object v0, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELE2_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "*"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getBSFDomain(I)Ljava/lang/String;
    .locals 8

    const-string v0, "bsf_ip"

    const-string v1, ""

    .line 558
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 564
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 572
    :cond_1
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v2

    const-string v3, ".pub.3gppnetwork.org"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    .line 574
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 576
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "NULL IMPI received from SIM :: Returning DEFAULT BSFIP !!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/16 v1, 0x40

    .line 579
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_6

    .line 580
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v1, v4

    .line 583
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".3gppnetwork.org"

    .line 584
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "bsf."

    if-eqz v2, :cond_5

    .line 588
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4

    return-object v0

    .line 592
    :cond_4
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 599
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    if-eqz v1, :cond_9

    .line 602
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x5

    if-ge p0, v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 p0, 0x3

    .line 606
    :try_start_0
    invoke-virtual {v1, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bsf.mnc"

    .line 609
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
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

    .line 611
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 616
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_9
    :goto_2
    return-object v0

    .line 567
    :cond_a
    :goto_3
    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->buildDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "@"

    .line 745
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 747
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNAFDomain(I)Ljava/lang/String;
    .locals 7

    const-string v0, "auth_proxy_ip"

    const-string v1, ""

    .line 482
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 489
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 490
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    .line 495
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 496
    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->buildDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 499
    :cond_2
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    .line 500
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    .line 505
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x40

    if-ne v2, v0, :cond_4

    const-string v0, "enable_gba"

    invoke-static {p0, v0, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p0

    if-ne p0, v6, :cond_4

    .line 506
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

    .line 507
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xcapDomain :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v0, "xcap."

    if-ne v2, p0, :cond_5

    .line 509
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

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    add-int/lit8 v1, v0, 0x6

    .line 513
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnc000"

    .line 512
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 516
    :cond_5
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

    .line 519
    :cond_6
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "3gppnetwork.org"

    .line 520
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "pub.3gppnetwork.org"

    .line 521
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0

    :cond_8
    if-eqz v3, :cond_d

    .line 526
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x5

    if-ge p0, v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 p0, 0x3

    .line 530
    :try_start_0
    invoke-virtual {v3, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {v3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 532
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_a

    const-string p0, "000"

    goto :goto_1

    .line 534
    :cond_a
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_b

    const-string v1, "460"

    const-string p0, "011"

    goto :goto_1

    .line 537
    :cond_b
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_c

    const-string v1, "455"

    const-string p0, "007"

    .line 542
    :cond_c
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xcap.ims.mnc"

    .line 543
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
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

    .line 545
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".pub.3gppnetwork.org"

    .line 547
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 550
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_d
    :goto_2
    return-object v0
.end method

.method public static getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 655
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 660
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 662
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    .line 665
    :cond_1
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 666
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_3

    move-object p0, v1

    .line 671
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    return-object v1
.end method

.method public static isBsfDisableTls(I)Z
    .locals 4

    .line 732
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 736
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/sec/internal/constants/Mno;

    .line 737
    sget-object v3, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static isCallBarringType(I)Z
    .locals 1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x67

    if-eq p0, v0, :cond_1

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0x69

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isPutRequest(I)Z
    .locals 0

    .line 755
    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeInternationalNumber(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 3

    .line 678
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 680
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

    .line 683
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 685
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 688
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;ILcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 3

    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    const-string p1, "outgoing-communication-barring"

    goto :goto_0

    :cond_0
    const-string p1, "incoming-communication-barring"

    .line 76
    :goto_0
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string p1, "active"

    const-string/jumbo v1, "true"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    if-eqz p3, :cond_1

    const-string/jumbo v0, "ss"

    .line 79
    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    const-string/jumbo v1, "xmlns:ss"

    const-string v2, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 82
    :cond_1
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "ruleset"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v1, "cp"

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    const-string/jumbo v1, "xmlns:cp"

    const-string/jumbo v2, "urn:ietf:params:xml:ns:common-policy"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 84
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 85
    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-static {v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object p1
.end method

.method public static makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 4

    .line 45
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "communication-diversion"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v1, "active"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "ss"

    .line 47
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "xmlns:ss"

    const-string v3, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 50
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    if-lez v1, :cond_1

    .line 51
    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 53
    :cond_1
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v2, "ruleset"

    invoke-direct {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v2, "cp"

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "xmlns:cp"

    const-string/jumbo v3, "urn:ietf:params:xml:ns:common-policy"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 56
    check-cast v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-static {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object v0
.end method

.method public static makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 2

    .line 66
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "NoReplyTimer"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "ss"

    .line 68
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_0
    return-object p0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 11

    .line 246
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "rule"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v1, "cp"

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 247
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "conditions"

    invoke-direct {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    .line 249
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCbCondition(I)Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/16 v6, 0xa

    const-string/jumbo v7, "ss"

    if-nez v5, :cond_4

    .line 251
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const-string v8, "identity"

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p1, v5, :cond_1

    .line 252
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    .line 253
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 254
    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v10, "one"

    invoke-direct {v9, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v9

    invoke-virtual {v9, v3, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_2

    .line 258
    :cond_1
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 262
    invoke-virtual {v3, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 264
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 268
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v4, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-eq v4, v6, :cond_6

    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    .line 269
    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 270
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 271
    invoke-static {v4, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 273
    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_3

    .line 279
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-nez v3, :cond_8

    .line 280
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "rule-deactivated"

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 282
    invoke-virtual {v3, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 284
    :cond_7
    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 287
    :cond_8
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "actions"

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 288
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "allow"

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 290
    invoke-virtual {v3, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_9
    const-string v4, "false"

    .line 292
    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 294
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    .line 297
    sget-object v4, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/internal/constants/Mno;->BATELCO_BAHRAIN:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    const/4 v8, 0x2

    aput-object v4, v3, v8

    const/4 v4, 0x3

    sget-object v9, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    aput-object v9, v3, v4

    const/4 v4, 0x4

    sget-object v9, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    aput-object v9, v3, v4

    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 299
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;

    .line 300
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->name:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 302
    array-length v4, v3

    if-ne v4, v6, :cond_a

    .line 303
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    aget-object v3, v3, v5

    iget-object v9, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->value:Ljava/lang/String;

    invoke-direct {v4, v3, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 304
    :cond_a
    array-length v4, v3

    if-ne v4, v8, :cond_f

    .line 305
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    aget-object v9, v3, v6

    iget-object v10, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->value:Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-direct {v4, v9, v10, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_5
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->attribute:Ljava/lang/String;

    if-eqz p1, :cond_d

    const-string v3, "="

    .line 312
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 313
    array-length v3, p1

    if-ne v3, v8, :cond_c

    .line 314
    aget-object v3, p1, v6

    const-string v9, "\""

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    aget-object v3, p1, v6

    const-string v9, "\'"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 315
    :cond_b
    aget-object v3, p1, v5

    aget-object p1, p1, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_6

    .line 318
    :cond_c
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "This is out of specification. So throw away attributes."

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_6
    if-eqz p2, :cond_e

    .line 322
    iget-object p1, v4, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez p1, :cond_e

    iget-object p1, v4, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 323
    invoke-virtual {v4, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 325
    :cond_e
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_4

    .line 307
    :cond_f
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "This is out of specification. So never come here"

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 329
    :cond_10
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 330
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object v0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 147
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v5, "rule"

    invoke-direct {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v5, "cp"

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    const-string v7, "id"

    invoke-virtual {v4, v7, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    .line 148
    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v7, "conditions"

    invoke-direct {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v6

    .line 150
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const-string/jumbo v8, "ss"

    if-nez v7, :cond_1

    .line 151
    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v9, "rule-deactivated"

    invoke-direct {v7, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 155
    :cond_0
    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 158
    :cond_1
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCondition(I)Ljava/lang/String;

    move-result-object v7

    .line 159
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 160
    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v9, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {v9, v8}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 164
    :cond_2
    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 167
    :cond_3
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 168
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 169
    invoke-static {v9, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 171
    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_0

    .line 176
    :cond_5
    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 177
    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v7, "actions"

    invoke-direct {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    .line 179
    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v7, "forward-to"

    invoke-direct {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v9, "target"

    invoke-direct {v7, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 182
    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 183
    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 186
    :cond_6
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x4

    if-nez v9, :cond_7

    .line 187
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 188
    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_1

    .line 189
    :cond_7
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-nez v9, :cond_9

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 190
    sget-object v9, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v9, :cond_8

    .line 191
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    if-ne v9, v10, :cond_9

    .line 192
    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_1

    .line 195
    :cond_8
    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 199
    :cond_9
    :goto_1
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    if-eqz v7, :cond_f

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_f

    const/4 v9, 0x0

    .line 200
    :goto_2
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_f

    .line 202
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->id:Ljava/lang/String;

    .line 203
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->value:Ljava/lang/String;

    .line 204
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->attribute:Ljava/lang/String;

    const-string v14, ":"

    .line 206
    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 207
    array-length v15, v14

    const/4 v10, 0x2

    const/4 v7, 0x1

    if-ne v15, v7, :cond_a

    .line 208
    new-instance v14, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v14, v11, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 209
    :cond_a
    array-length v11, v14

    if-ne v11, v10, :cond_e

    .line 210
    new-instance v11, Lcom/sec/internal/constants/ims/XmlElement;

    aget-object v15, v14, v7

    const/16 v16, 0x0

    aget-object v14, v14, v16

    invoke-direct {v11, v15, v12, v14}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v11

    :goto_3
    if-eqz v13, :cond_c

    const-string v11, "="

    .line 216
    invoke-virtual {v13, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 217
    array-length v12, v11

    if-ne v12, v10, :cond_c

    .line 218
    aget-object v10, v11, v7

    const-string v12, "\""

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    aget-object v10, v11, v7

    const-string v12, "\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    const/4 v10, 0x0

    .line 219
    aget-object v12, v11, v10

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v7

    invoke-virtual {v11, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v12, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    :goto_4
    if-eqz v1, :cond_d

    .line 224
    iget-object v7, v14, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez v7, :cond_d

    iget-object v7, v14, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 225
    invoke-virtual {v14, v8}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 228
    :cond_d
    invoke-virtual {v6, v14}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_5

    :cond_e
    const/4 v10, 0x0

    .line 212
    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v11, "This is out of specification. So never come here"

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    goto/16 :goto_2

    .line 232
    :cond_f
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    if-lez v3, :cond_10

    .line 235
    invoke-static {v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 238
    :cond_10
    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    if-ne v2, v1, :cond_11

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    .line 239
    :cond_11
    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_12
    return-object v4
.end method

.method public static makeSingleXml(Ljava/lang/String;IZ)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 4

    .line 105
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance p0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "default-behaviour"

    invoke-direct {p0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string/jumbo p2, "ss"

    .line 109
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "xmlns:ss"

    const-string v3, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 110
    invoke-virtual {p0, p2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_0
    if-nez p1, :cond_1

    const-string p2, "false"

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "true"

    :goto_0
    const-string v1, "active"

    .line 113
    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const-string p1, "presentation-restricted"

    goto :goto_1

    :cond_2
    const-string p1, "presentation-not-restricted"

    .line 114
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 115
    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object v0
.end method

.method public static makeSingleXml(Ljava/lang/String;ZZ)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1

    .line 95
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p1, "active"

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    if-eqz p2, :cond_1

    const-string/jumbo p1, "ss"

    .line 98
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    const-string/jumbo p2, "xmlns:ss"

    const-string v0, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_1
    return-object p0
.end method

.method public static makeXcapUserAgentHeader(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 759
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "ro.build.PDA"

    .line 763
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 765
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BUILD_VERSION_8_LETTER]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 767
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "[PRODUCT_MODEL]"

    if-eqz v1, :cond_2

    const-string v0, "ro.product.base_model"

    .line 768
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 770
    :cond_2
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 773
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 774
    invoke-static {p1, v0}, Lcom/sec/internal/helper/OmcCode;->getUserAgentNWCode(ILcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[OMCCODE]"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 695
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    .line 696
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 2

    .line 125
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "media"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo p1, "ss"

    .line 127
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 129
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils$1;->$SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "video"

    .line 134
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_0

    :cond_2
    const-string p1, "audio"

    .line 131
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 139
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-eq p0, p1, :cond_3

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
