.class Lcom/sec/internal/ims/core/sim/CscNetParser;
.super Ljava/lang/Object;
.source "CscNetParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;
    }
.end annotation


# static fields
.field private static final CUSTOMER_CSC_FILE_NAME:Ljava/lang/String; = "/customer.xml"

.field private static final CUSTOMER_CSC_FILE_PATH:Ljava/lang/String; = "/system/csc"

.field private static final LOG_TAG:Ljava/lang/String; = "MnoMap_CscNetParser"

.field private static final NETWORK_INFO_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.NetworkInfo"

.field private static final PERSIST_OMCNW_PATH:Ljava/lang/String; = "persist.sys.omcnw_path"

.field private static final PERSIST_OMCNW_PATH2:Ljava/lang/String; = "persist.sys.omcnw_path2"

.field private static final PERSIST_OMC_PATH:Ljava/lang/String; = "persist.sys.omc_path"


# instance fields
.field private mFileInputStream:Ljava/io/FileInputStream;

.field public mNetworkInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method public static synthetic $r8$lambda$ovrK38Y_NGarsTnhqewvvclirKg(Lcom/sec/internal/ims/core/sim/CscNetParser;Ljava/lang/String;)Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/CscNetParser;->lambda$addNewCscNetwork$1(Ljava/lang/String;)Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qIYtnmW_wu1uipfdbU6xWcJZcps(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/CscNetParser;->lambda$addNewCscNetwork$0(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    .line 71
    iput p1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    return-void
.end method

.method private addNewCscNetwork(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/sim/CscNetParser;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;

    .line 127
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->addIdentifier(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)V

    return-void
.end method

.method private closeFileInputStream()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 188
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_0
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 190
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :goto_1
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    .line 193
    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method private getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 6

    .line 131
    iget v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    const-string v1, "MnoMap_CscNetParser"

    const-string v2, "getCscCustomerParser:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "persist.sys.omc_path"

    .line 133
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->getOmcVersion()D

    move-result-wide v2

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMC version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v2, v2, v4

    const/4 v3, 0x1

    const-string v4, "persist.sys.omcnw_path"

    if-ltz v2, :cond_1

    .line 140
    iget v2, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    if-ne v2, v3, :cond_0

    const-string v2, "persist.sys.omcnw_path2"

    .line 141
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 151
    sget-object v4, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    return-object v5

    .line 155
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/customer.xml"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "/system/csc/customer.xml"

    .line 160
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customerPath = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "customer.xml file does not exists"

    .line 164
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 172
    :cond_4
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 174
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    .line 176
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    :goto_2
    return-object v5
.end method

.method private isInvalidCustomerFile(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 0

    const-string p0, "CustomerData.GeneralInfo.NetworkInfo"

    .line 114
    invoke-static {p1, p0}, Lcom/sec/internal/helper/XmlUtils;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$addNewCscNetwork$0(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;)Z
    .locals 0

    .line 119
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->getNetworkName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addNewCscNetwork$1(Ljava/lang/String;)Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;
    .locals 1

    .line 122
    new-instance v0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;-><init>(Ljava/lang/String;)V

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private parseNetworkInfo()V
    .locals 6

    .line 80
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "MnoMap_CscNetParser"

    if-eqz v0, :cond_6

    .line 81
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->isInvalidCustomerFile(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 89
    :cond_0
    :try_start_0
    new-instance v2, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;-><init>()V

    .line 90
    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 92
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->setNext(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const-string v3, "NetworkInfo"

    .line 94
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    iget v3, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->build()Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/core/sim/CscNetParser;->addNewCscNetwork(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)V

    goto :goto_0

    :cond_4
    const-string v3, "GeneralInfo"

    .line 101
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 107
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    return-void

    :goto_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    .line 110
    throw v0

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    const-string v0, "XmlPullParser is null!"

    goto :goto_4

    :cond_7
    const-string v0, "Can not find <NetworkInfo> from customer.xml"

    .line 82
    :goto_4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    return-void
.end method


# virtual methods
.method public getCscNetworkInfo()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->parseNetworkInfo()V

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    return-object p0
.end method
