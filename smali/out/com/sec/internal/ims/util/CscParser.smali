.class public Lcom/sec/internal/ims/util/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# static fields
.field private static final COUNTRY_ISO_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.CountryISO"

.field private static final CSC_EDITION_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.CSCEdition"

.field private static final CSC_SW_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/SW_Configuration.xml"

.field private static final CUSTOMER_CSC_FILE_NAME:Ljava/lang/String; = "/customer.xml"

.field private static final CUSTOMER_CSC_FILE_PATH:Ljava/lang/String; = "/system/csc"

.field private static final IMS_PATH:Ljava/lang/String; = "CustomerData.Settings.IMSSetting.NbSetting"

.field private static final KEY_CSC_EDITION:Ljava/lang/String; = "csc.key.edition"

.field private static final KEY_CSC_SALES_CODE:Ljava/lang/String; = "csc.key.salescode"

.field private static final KEY_CSC_VERSION:Ljava/lang/String; = "csc.key.version"

.field private static final KEY_OMC_VERSION:Ljava/lang/String; = "omc.key.version"

.field private static final LOG_TAG:Ljava/lang/String; = "CscParser"

.field private static final NETWORK_INFO_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.NetworkInfo"

.field private static final OMC_INFO_FILE_NAME:Ljava/lang/String; = "/omc.info"

.field private static final OMC_INFO_VERSION:Ljava/lang/String; = "version"

.field private static final SALES_CODE_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.SalesCode"

.field private static final SW_CONFIG_CSCNAME:Ljava/lang/String; = "CSCName"

.field private static final SW_CONFIG_CSCVERSION:Ljava/lang/String; = "CSCVersion"

.field private static sCscChangeChecked:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 60
    fill-array-data v0, :array_a

    sput-object v0, Lcom/sec/internal/ims/util/CscParser;->sCscChangeChecked:[Z

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeFileInputStream(Ljava/io/FileInputStream;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 108
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method

.method private static getCscCustomerParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "CscParser"

    const-string v1, "no csc file"

    .line 84
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 92
    :cond_b
    :try_start_b
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 94
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 95
    invoke-interface {v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1a} :catch_1c

    move-object v0, v1

    goto :goto_23

    :catch_1c
    move-exception v1

    .line 98
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 99
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    :goto_23
    return-object v0
.end method

.method static getCscEdition(I)Ljava/lang/String;
    .registers 2

    const-string v0, "CustomerData.GeneralInfo.CSCEdition"

    .line 116
    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/CscParser;->getFieldFromCsc(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCscFile(I)Ljava/io/FileInputStream;
    .registers 3

    .line 64
    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getOmcNwPath(I)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/customer.xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1e

    :cond_1c
    const-string p0, "/system/csc/customer.xml"

    .line 74
    :goto_1e
    :try_start_1e
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_28} :catch_29

    goto :goto_50

    :catch_29
    move-exception p0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CscParser"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_50
    return-object v0
.end method

.method public static declared-synchronized getCscImsSetting(Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 10

    const-class v0, Lcom/sec/internal/ims/util/CscParser;

    monitor-enter v0

    :try_start_3
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v7, 0x1

    move-object v1, p0

    move v6, p1

    .line 534
    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/util/CscParser;->getNetworkNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p0

    .line 535
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    const-class v0, Lcom/sec/internal/ims/util/CscParser;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_a8

    .line 539
    :try_start_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_a8

    .line 543
    :cond_e
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->getCscFile(I)Ljava/io/FileInputStream;

    move-result-object p1

    .line 544
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->getCscCustomerParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    if-nez v2, :cond_24

    const-string p0, "CscParser"

    const-string v2, "XmlPullParser is null"

    .line 547
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_a5

    .line 549
    monitor-exit v0

    return-object v1

    :cond_24
    :try_start_24
    const-string v3, "CustomerData.Settings.IMSSetting.NbSetting"

    .line 552
    invoke-static {v2, v3}, Lcom/sec/internal/helper/XmlUtils;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string p0, "CscParser"

    const-string v2, "can not find CustomerData.Settings.IMSSetting.NbSetting"

    .line 553
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_a5

    .line 555
    monitor-exit v0

    return-object v1

    .line 562
    :cond_38
    :goto_38
    :try_start_38
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7d

    const/4 v4, 0x2

    if-ne v3, v4, :cond_79

    const-string v3, "Setting"

    .line 564
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 565
    invoke-static {v2}, Lcom/sec/internal/ims/util/CscParser;->getSetting(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "NetworkName"

    .line 567
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const-string p0, "CscParser"

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csc ims setting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_74} :catch_83
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_74} :catch_83
    .catchall {:try_start_38 .. :try_end_74} :catchall_81

    .line 577
    :try_start_74
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_a5

    .line 569
    monitor-exit v0

    return-object v3

    .line 572
    :cond_79
    :try_start_79
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_7c} :catch_83
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_83
    .catchall {:try_start_79 .. :try_end_7c} :catchall_81

    goto :goto_38

    .line 577
    :cond_7d
    :goto_7d
    :try_start_7d
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_a5

    goto :goto_9f

    :catchall_81
    move-exception p0

    goto :goto_a1

    :catch_83
    move-exception p0

    :try_start_84
    const-string v2, "CscParser"

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCscImsSetting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_84 .. :try_end_9e} :catchall_81

    goto :goto_7d

    .line 579
    :goto_9f
    monitor-exit v0

    return-object v1

    .line 577
    :goto_a1
    :try_start_a1
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 578
    throw p0
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p0

    monitor-exit v0

    throw p0

    .line 540
    :cond_a8
    :goto_a8
    monitor-exit v0

    return-object v1
.end method

.method static getCscSalesCode(I)Ljava/lang/String;
    .registers 2

    const-string v0, "CustomerData.GeneralInfo.SalesCode"

    .line 350
    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/CscParser;->getFieldFromCsc(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getCscVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 122
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isOmcModel()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "persist.sys.omc_root"

    const-string v1, "/odm/omc"

    .line 124
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/SW_Configuration.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_20
    const-string v0, "/system/SW_Configuration.xml"

    .line 130
    :goto_22
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "CscParser"

    if-eqz v0, :cond_ec

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_ec

    :cond_37
    const/4 v0, 0x0

    .line 142
    :try_start_38
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    const/4 v4, 0x1

    .line 143
    invoke-virtual {v3, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 144
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 145
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_49} :catch_bb
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_49} :catch_bb
    .catchall {:try_start_38 .. :try_end_49} :catchall_b9

    .line 146
    :try_start_49
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_4c} :catch_b3
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_b3
    .catchall {:try_start_49 .. :try_end_4c} :catchall_b0

    move-object v1, v0

    move-object v6, v1

    .line 150
    :goto_4e
    :try_start_4e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v4, :cond_a7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8d

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5b

    goto :goto_91

    .line 156
    :cond_5b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8a

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_78

    const-string v8, "CSCName"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 159
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_8a

    .line 160
    :cond_78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8a

    const-string v8, "CSCVersion"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 161
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_8a
    :goto_8a
    const-string v6, ""

    goto :goto_91

    .line 153
    :cond_8d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 171
    :goto_91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a3

    const-string v3, "Found Name and Version"

    .line 172
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 176
    :cond_a3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_a6} :catch_ab
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_a6} :catch_ab
    .catchall {:try_start_4e .. :try_end_a6} :catchall_b0

    goto :goto_4e

    .line 183
    :cond_a7
    :goto_a7
    :try_start_a7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_c9

    goto :goto_c9

    :catch_ab
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_b7

    :catchall_b0
    move-exception p0

    move-object v0, v5

    goto :goto_e6

    :catch_b3
    move-exception v2

    move-object v1, v0

    move-object v3, v2

    move-object v2, v1

    :goto_b7
    move-object v0, v5

    goto :goto_bf

    :catchall_b9
    move-exception p0

    goto :goto_e6

    :catch_bb
    move-exception v2

    move-object v1, v0

    move-object v3, v2

    move-object v2, v1

    .line 179
    :goto_bf
    :try_start_bf
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_b9

    if-eqz v0, :cond_c7

    .line 183
    :try_start_c4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c7

    :catch_c7
    :cond_c7
    move-object v0, v1

    move-object v1, v2

    .line 189
    :catch_c9
    :goto_c9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d6

    goto :goto_e5

    .line 193
    :cond_d6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_e5
    :goto_e5
    return-object p0

    :goto_e6
    if-eqz v0, :cond_eb

    .line 183
    :try_start_e8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_eb

    .line 187
    :catch_eb
    :cond_eb
    throw p0

    :cond_ec
    :goto_ec
    const-string v0, "Can\'t read CSC Version"

    .line 132
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getFieldFromCsc(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 322
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->getCscFile(I)Ljava/io/FileInputStream;

    move-result-object p0

    .line 323
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->getCscCustomerParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "CscParser"

    const/4 v2, 0x0

    if-nez v0, :cond_16

    const-string p1, "XmlPullParser is null"

    .line 326
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    return-object v2

    .line 331
    :cond_16
    invoke-static {v0, p1}, Lcom/sec/internal/helper/XmlUtils;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not find "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    return-object v2

    .line 338
    :cond_34
    :goto_34
    :try_start_34
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3c

    goto :goto_34

    .line 340
    :cond_3c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_40} :catch_46
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_40} :catch_46
    .catchall {:try_start_34 .. :try_end_40} :catchall_44

    .line 344
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    return-object p1

    :catchall_44
    move-exception p1

    goto :goto_4e

    :catch_46
    move-exception p1

    .line 342
    :try_start_47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    .line 344
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    return-object v2

    :goto_4e
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 345
    throw p1
.end method

.method public static getNetworkNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 355
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/ims/util/CscParser;->getCscFile(I)Ljava/io/FileInputStream;

    move-result-object v1

    .line 356
    invoke-static {v1}, Lcom/sec/internal/ims/util/CscParser;->getCscCustomerParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "CscParser"

    const/4 v4, 0x0

    if-nez v2, :cond_18

    const-string v0, "XmlPullParser is null"

    .line 359
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {v1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    return-object v4

    .line 364
    :cond_18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 365
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "CustomerData.GeneralInfo.NetworkInfo"

    .line 367
    invoke-static {v2, v7}, Lcom/sec/internal/helper/XmlUtils;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_33

    const-string v0, "can not find CustomerData.GeneralInfo.NetworkInfo"

    .line 368
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {v1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    return-object v4

    :cond_33
    const-string v3, ""

    if-eqz v0, :cond_4b

    .line 374
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_42

    goto :goto_4b

    .line 377
    :cond_42
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_4b
    :goto_4b
    move-object v0, v3

    :goto_4c
    const/4 v7, 0x1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 p1, v3

    move-object/from16 v15, p1

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object v11, v4

    move-object v12, v11

    move-object v13, v12

    const/4 v14, 0x0

    move-object/from16 v4, p2

    .line 393
    :goto_5f
    :try_start_5f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v7, :cond_2e6

    const/4 v7, 0x2

    if-ne v8, v7, :cond_11b

    .line 395
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MCCMNC"

    .line 396
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_72} :catch_2ed
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_72} :catch_2ed
    .catchall {:try_start_5f .. :try_end_72} :catchall_2e9

    move-object/from16 v18, v1

    const/4 v1, 0x4

    if-eqz v8, :cond_84

    .line 397
    :goto_77
    :try_start_77
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_7e

    goto :goto_77

    .line 398
    :cond_7e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2e1

    :cond_84
    const-string v8, "SPCode"

    .line 399
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 400
    :goto_8c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_93

    goto :goto_8c

    .line 401
    :cond_93
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 p1, v1

    goto/16 :goto_2e1

    :cond_9f
    const-string v8, "CodeType"

    .line 402
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bf

    .line 403
    :goto_a7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_ae

    goto :goto_a7

    :cond_ae
    const-string v1, "HEX"

    .line 404
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d7

    move-object/from16 v1, v18

    const/4 v7, 0x1

    const/4 v14, 0x1

    goto :goto_5f

    :cond_bf
    const-string v8, "SubsetCode"

    .line 407
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d8

    .line 408
    :goto_c7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_ce

    goto :goto_c7

    .line 409
    :cond_ce
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2e1

    :cond_d8
    const-string v8, "Gid2"

    .line 410
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f1

    .line 411
    :goto_e0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_e7

    goto :goto_e0

    .line 412
    :cond_e7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2e1

    :cond_f1
    const-string v8, "Spname"

    .line 413
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_106

    .line 414
    :goto_f9
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_100

    goto :goto_f9

    .line 415
    :cond_100
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2e1

    :cond_106
    const-string v8, "NetworkName"

    .line 416
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d7

    .line 417
    :goto_10e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_115

    goto :goto_10e

    .line 418
    :cond_115
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2e1

    :cond_11b
    move-object/from16 v18, v1

    const/4 v1, 0x3

    if-ne v8, v1, :cond_2d7

    const-string v1, "NetworkInfo"

    .line 421
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_12a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_12a} :catch_2d5
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_12a} :catch_2d5
    .catchall {:try_start_77 .. :try_end_12a} :catchall_302

    if-eqz v1, :cond_2c2

    if-nez v14, :cond_14c

    .line 424
    :try_start_12e
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 425
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1
    :try_end_13a
    .catch Ljava/lang/NumberFormatException; {:try_start_12e .. :try_end_13a} :catch_13c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12e .. :try_end_13a} :catch_2d5
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_13a} :catch_2d5
    .catchall {:try_start_12e .. :try_end_13a} :catchall_302

    move-object v15, v1

    goto :goto_13d

    :catch_13c
    move-object v15, v3

    .line 430
    :goto_13d
    :try_start_13d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16
    :try_end_149
    .catch Ljava/lang/NumberFormatException; {:try_start_13d .. :try_end_149} :catch_14a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13d .. :try_end_149} :catch_2d5
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_149} :catch_2d5
    .catchall {:try_start_13d .. :try_end_149} :catchall_302

    goto :goto_14c

    :catch_14a
    move-object v1, v3

    goto :goto_14e

    :cond_14c
    :goto_14c
    move-object/from16 v1, v16

    .line 437
    :goto_14e
    :try_start_14e
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2b7

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15c

    goto/16 :goto_2b7

    :cond_15c
    const-string v7, "00101"

    .line 442
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b7

    const-string v7, "001001"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b7

    const-string v7, "001010"

    .line 443
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b7

    const-string v7, "00101f"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b7

    const-string v7, "99999"

    .line 444
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_186

    goto/16 :goto_2b7

    :cond_186
    move-object/from16 v7, p0

    .line 448
    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a1

    if-eqz p6, :cond_195

    .line 450
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a1

    .line 452
    :cond_195
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1d8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1d8

    if-nez v13, :cond_1bb

    .line 454
    sget-object v8, Lcom/sec/internal/constants/Mno$Country;->CANADA:Lcom/sec/internal/constants/Mno$Country;

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno$Country;->getCountryIso()Ljava/lang/String;

    move-result-object v8

    const-string v11, "CustomerData.GeneralInfo.CountryISO"

    move/from16 v14, p5

    invoke-static {v14, v11}, Lcom/sec/internal/ims/util/CscParser;->getFieldFromCsc(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v13, v8

    goto :goto_1bd

    :cond_1bb
    move/from16 v14, p5

    .line 456
    :goto_1bd
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1c7

    move-object/from16 v8, p1

    const/4 v11, 0x1

    goto :goto_1ca

    :cond_1c7
    move-object/from16 v8, p1

    const/4 v11, 0x0

    :goto_1ca
    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1dc

    .line 457
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 458
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f3

    :cond_1d8
    move-object/from16 v8, p1

    move/from16 v14, p5

    .line 462
    :cond_1dc
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_1e0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14e .. :try_end_1e0} :catch_2d5
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_1e0} :catch_2d5
    .catchall {:try_start_14e .. :try_end_1e0} :catchall_302

    move-object/from16 p1, v0

    const-string v0, "^0+(?!$)"

    if-nez v11, :cond_21c

    :try_start_1e6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_21c

    .line 464
    invoke-virtual {v15, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 465
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_218

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_218

    .line 468
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    move-object/from16 p2, v4

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21a

    .line 469
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 470
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f3

    :cond_218
    move-object/from16 p2, v4

    :cond_21a
    move-object/from16 v4, p2

    .line 474
    :cond_21c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_252

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_252

    .line 476
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual {v9, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 479
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_252

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_252

    .line 480
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_252

    .line 481
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 482
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f3

    .line 486
    :cond_252
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_282

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_282

    .line 487
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_280

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_280

    .line 491
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_280

    .line 492
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 493
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f3

    :cond_280
    move-object/from16 v17, v0

    .line 498
    :cond_282
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    .line 499
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    .line 503
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a5

    :cond_2a1
    :goto_2a1
    move/from16 v14, p5

    move-object/from16 p1, v0

    :cond_2a5
    :goto_2a5
    move-object/from16 v0, p1

    move-object/from16 p1, v3

    move-object/from16 v11, p1

    move-object v12, v11

    move-object v15, v12

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v1, v18

    const/4 v7, 0x1

    const/4 v14, 0x0

    goto/16 :goto_5f

    :cond_2b7
    :goto_2b7
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    move-object/from16 v16, v1

    goto :goto_2df

    :cond_2c2
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 p1, v0

    const-string v0, "GeneralInfo"

    .line 510
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_2d2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e6 .. :try_end_2d2} :catch_2d5
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_2d2} :catch_2d5
    .catchall {:try_start_1e6 .. :try_end_2d2} :catchall_302

    if-eqz v0, :cond_2dd

    goto :goto_2f3

    :catch_2d5
    move-exception v0

    goto :goto_2f0

    :cond_2d7
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 p1, v0

    :cond_2dd
    move-object/from16 v0, p1

    :goto_2df
    move-object/from16 p1, v8

    :goto_2e1
    move-object/from16 v1, v18

    const/4 v7, 0x1

    goto/16 :goto_5f

    :cond_2e6
    move-object/from16 v18, v1

    goto :goto_2f3

    :catchall_2e9
    move-exception v0

    move-object/from16 v18, v1

    goto :goto_303

    :catch_2ed
    move-exception v0

    move-object/from16 v18, v1

    .line 516
    :goto_2f0
    :try_start_2f0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f3
    .catchall {:try_start_2f0 .. :try_end_2f3} :catchall_302

    .line 518
    :goto_2f3
    invoke-static/range {v18 .. v18}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    if-eqz p6, :cond_2f9

    return-object v5

    .line 525
    :cond_2f9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_301

    return-object v6

    :cond_301
    return-object v5

    :catchall_302
    move-exception v0

    .line 518
    :goto_303
    invoke-static/range {v18 .. v18}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 519
    throw v0
.end method

.method static getOmcInfoVersion(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    .line 197
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isOmcModel()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 201
    :cond_7
    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getOmcNwPath(I)Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/omc.info"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "CscParser"

    if-eqz p1, :cond_b0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_31

    goto/16 :goto_b0

    :cond_31
    const/4 p1, 0x0

    .line 216
    :try_start_32
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    const/4 v3, 0x1

    .line 217
    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 218
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 219
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_43} :catch_96
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_43} :catch_96
    .catchall {:try_start_32 .. :try_end_43} :catchall_94

    .line 220
    :try_start_43
    invoke-interface {v2, v4, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, p1

    .line 224
    :goto_47
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v3, :cond_88

    const/4 v6, 0x2

    if-eq v5, v6, :cond_74

    const/4 v6, 0x4

    if-eq v5, v6, :cond_54

    goto :goto_78

    .line 230
    :cond_54
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_71

    const-string/jumbo v6, "version"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 233
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_71
    const-string v0, ""

    goto :goto_78

    .line 227
    :cond_74
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_84

    const-string v0, "Found OMC Version"

    .line 244
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 248
    :cond_84
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_87} :catch_8f
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_87} :catch_8f
    .catchall {:try_start_43 .. :try_end_87} :catchall_8c

    goto :goto_47

    .line 255
    :cond_88
    :goto_88
    :try_start_88
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_a2

    goto :goto_a2

    :catchall_8c
    move-exception p0

    move-object p1, v4

    goto :goto_aa

    :catch_8f
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_99

    :catchall_94
    move-exception p0

    goto :goto_aa

    :catch_96
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 251
    :goto_99
    :try_start_99
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_94

    if-eqz p1, :cond_a1

    .line 255
    :try_start_9e
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a1

    :catch_a1
    :cond_a1
    move-object p1, v0

    .line 261
    :catch_a2
    :goto_a2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a9

    return-object p0

    :cond_a9
    return-object p1

    :goto_aa
    if-eqz p1, :cond_af

    .line 255
    :try_start_ac
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_af

    .line 259
    :catch_af
    :cond_af
    throw p0

    :cond_b0
    :goto_b0
    const-string p1, "Can\'t read OMC Version"

    .line 206
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getSetting(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .registers 5

    .line 583
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 587
    :goto_6
    :try_start_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5e

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 589
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    :cond_15
    const/4 v3, 0x3

    if-ne v2, v3, :cond_25

    const-string v2, "Setting"

    .line 591
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_5e

    :cond_25
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    .line 595
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3f

    .line 597
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_3f
    :goto_3f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_42} :catch_43
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_42} :catch_43

    goto :goto_6

    :catch_43
    move-exception p0

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CscParser"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    return-object v0
.end method

.method public static declared-synchronized isCscChanged(Landroid/content/Context;I)Z
    .registers 15

    const-class v0, Lcom/sec/internal/ims/util/CscParser;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_109

    if-ltz p1, :cond_109

    .line 276
    :try_start_8
    sget-object v2, Lcom/sec/internal/ims/util/CscParser;->sCscChangeChecked:[Z

    array-length v3, v2

    if-lt p1, v3, :cond_f

    goto/16 :goto_109

    .line 280
    :cond_f
    aget-boolean v2, v2, p1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_106

    if-eqz v2, :cond_15

    .line 281
    monitor-exit v0

    return v1

    :cond_15
    :try_start_15
    const-string v2, "CSC_INFO_PREF"

    .line 284
    invoke-static {p1, p0, v2, v1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "csc.key.edition"

    const-string/jumbo v3, "unknown"

    .line 287
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "csc.key.version"

    const-string/jumbo v4, "unknown"

    .line 288
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "csc.key.salescode"

    const-string/jumbo v5, "unknown"

    .line 289
    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "omc.key.version"

    const-string/jumbo v6, "unknown"

    .line 290
    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->getCscEdition(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-static {v3}, Lcom/sec/internal/ims/util/CscParser;->getCscVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 294
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->getCscSalesCode(I)Ljava/lang/String;

    move-result-object v8

    .line 295
    invoke-static {v5, p1}, Lcom/sec/internal/ims/util/CscParser;->getOmcInfoVersion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "CscParser"

    .line 297
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old edition : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " new edition : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "CscParser"

    .line 298
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old csc version : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " new csc version : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "CscParser"

    .line 299
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old salescode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " new salescode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "CscParser"

    .line 300
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old omc version : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " new omc version : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v10, Lcom/sec/internal/ims/util/CscParser;->sCscChangeChecked:[Z

    const/4 v11, 0x1

    aput-boolean v11, v10, p1

    .line 304
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 305
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 306
    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 307
    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_e2
    .catchall {:try_start_15 .. :try_end_e2} :catchall_106

    if-eqz p1, :cond_e6

    .line 308
    monitor-exit v0

    return v1

    .line 310
    :cond_e6
    :try_start_e6
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 311
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string p1, "csc.key.edition"

    .line 312
    invoke-interface {p0, p1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "csc.key.version"

    .line 313
    invoke-interface {p0, p1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "csc.key.salescode"

    .line 314
    invoke-interface {p0, p1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "omc.key.version"

    .line 315
    invoke-interface {p0, p1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_104
    .catchall {:try_start_e6 .. :try_end_104} :catchall_106

    .line 317
    monitor-exit v0

    return v11

    :catchall_106
    move-exception p0

    monitor-exit v0

    throw p0

    .line 277
    :cond_109
    :goto_109
    monitor-exit v0

    return v1
.end method
